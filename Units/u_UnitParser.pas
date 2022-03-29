unit u_UnitParser;

interface

uses
  System.Classes, System.Generics.Collections, System.SysUtils, SimpleParser.Lexer.Types;

const
  ///  These strings have been tested against actual code.
  ///  Need to puzzle out how to be able to collect the needed strings dynamically, rather
  ///  than writing them by hand after empirical discovery.
  EntitySpecs: array[0..5] of string = (
    '/UNIT/INTERFACE/USES/UNIT/@name',
    '/UNIT/INTERFACE/TYPESECTION/TYPEDECL/TYPE/METHOD/@name',
    '/UNIT/INTERFACE/TYPESECTION/TYPEDECL/TYPE/PRIVATE/FIELD/NAME/@value',
    '/UNIT/INTERFACE/TYPESECTION/TYPEDECL/TYPE/PRIVATE/METHOD/@name',
    '/UNIT/IMPLEMENTATION/USES/UNIT/@name',
    '/UNIT/IMPLEMENTATION/METHOD/@name'
    );

type
  TParser = class(TObject)
    procedure GetEntities(const ParsedUnit, NodeSpec: string; Strings: TStrings);
  public
    procedure CalculateUnits(const ParsedUnit: string; Strings: TStrings);
    function GetNodeList(const ARootFolder, AParseTree, ANodeSpec: string): string;
    function GetParseTree(const AFileName: string): string;
    function GetUnitNodeList(const ARootFolder, AParseTree, ANodeSpec: string): string;
  end;

  TIncludeHandler = class(TInterfacedObject, IIncludeHandler)
  private
    FPath: string;
  public
    constructor Create(const Path: string);
    function GetIncludeFileContent(const ParentFileName, IncludeName: string; out Content: string; out FileName: string): Boolean;
    function ReadFileToString(const FileName: string): string;
  end;

var
  Parser: TParser;

implementation

uses
  DelphiAST, DelphiAST.Writer, DelphiAST.Classes, DelphiAST.Consts,
  IOUtils, Winapi.msxmlIntf, Winapi.msxml;

{ TParser }

procedure TParser.CalculateUnits(const ParsedUnit: string; Strings: TStrings);
var
  XmlDoc: IXMLDOMDocument2;
  UnitNodes: IXMLDOMNodeList;
  I: Integer;
  UnitName: string;
begin
  XmlDoc := CoDOMDocument60.Create;
  XmlDoc.SetProperty('SelectionLanguage', 'XPath');
  XmlDoc.validateOnParse := False;
  XmlDoc.preserveWhiteSpace := False;
  XmlDoc.resolveExternals := False;
  XmlDoc.loadXML(ParsedUnit);

  UnitNodes := XmlDoc.documentElement.selectNodes('/UNIT/INTERFACE/USES/UNIT/@name|/UNIT/IMPLEMENTATION/USES/UNIT/@name');

  Strings.Clear;
  for I := 0 to UnitNodes.length - 1 do
  begin
    UnitName := UnitNodes.item[I].nodeValue;

    if not Strings.IndexOf(UnitName) > -1 then
    begin
      Strings.Add(UnitName);
    end;
  end;
end;

procedure TParser.GetEntities(const ParsedUnit, NodeSpec: string; Strings: TStrings);
var
  XmlDoc: IXMLDOMDocument2;
  UnitNodes: IXMLDOMNodeList;
  I: Integer;
  EntityName: string;
begin
  XmlDoc := CoDOMDocument60.Create;
  XmlDoc.SetProperty('SelectionLanguage', 'XPath');
  XmlDoc.validateOnParse := False;
  XmlDoc.preserveWhiteSpace := False;
  XmlDoc.resolveExternals := False;
  XmlDoc.loadXML(ParsedUnit);

  UnitNodes := XmlDoc.documentElement.selectNodes(NodeSpec);

  Strings.Clear;
  for I := 0 to UnitNodes.length - 1 do
  begin
    EntityName := UnitNodes.item[I].nodeValue;

//    UnitNodes.item[I].parentNode.nodeValue;

    if not Strings.IndexOf(EntityName) > -1 then
    begin
      Strings.Add(EntityName);
    end;
  end;
end;

function TParser.GetNodeList(const ARootFolder, AParseTree, ANodeSpec: string): string;
var
  XmlDoc: IXMLDOMDocument2;
  UnitNodes: IXMLDOMNodeList;
  PathAttrNode: IXMLDOMNode;
  I: Integer;
  aSpec, FileName: string;
  Files: TStringList;
begin
  Files := TStringList.Create;
  try
    XmlDoc := CoDOMDocument60.Create;
    XmlDoc.SetProperty('SelectionLanguage', 'XPath');
    XmlDoc.validateOnParse := False;
    XmlDoc.preserveWhiteSpace := False;
    XmlDoc.resolveExternals := False;
    XmlDoc.loadXML(AParseTree);

    // select all units nodes
//    UnitNodes := XmlDoc.documentElement.selectNodes('/UNIT/USES/UNIT');
    aSpec := ANodeSpec;
    UnitNodes := XmlDoc.documentElement.selectNodes(aSpec);
    for I := 0 to UnitNodes.length - 1 do
    begin
      // if 'path' attribute exists, then use it
      PathAttrNode := UnitNodes.item[I].attributes.getNamedItem('path');
      if Assigned(PathAttrNode) then
        FileName := PathAttrNode.nodeValue
      else
        FileName := UnitNodes.item[I].attributes.getNamedItem('name').nodeValue + '.pas';

      FileName := ExpandFileName(TPath.Combine(ARootFolder, FileName));

      // ignore units that placed somewhere on the search path
      if FileExists(FileName) then
        Files.Add(FileName);
    end;
  finally
    Result := Files.Text;
    Files.Free;
  end;
end;

function TParser.GetParseTree(const AFileName: string): string;
var
  SyntaxTree: TSyntaxNode;
begin
  //  Result := 'Not implemented, but you selected:'#13#10 + AFileName;
  Result := '';
  try
    SyntaxTree := TPasSyntaxTreeBuilder.Run(AFileName, False, TIncludeHandler.Create(ExtractFilePath(AFileName)));
    try
      Result := TSyntaxTreeWriter.ToXML(SyntaxTree, True);
    finally
      SyntaxTree.Free;
    end;
  except
    on E: ESyntaxTreeException do
      Result := Format('[%d, %d] %s', [E.Line, E.Col, E.Message]) + sLineBreak + sLineBreak +
        TSyntaxTreeWriter.ToXML(E.SyntaxTree, True);
  end;
end;

function TParser.GetUnitNodeList(const ARootFolder, AParseTree, ANodeSpec: string): string;
var
  XmlDoc: IXMLDOMDocument2;
  UnitNodes: IXMLDOMNodeList;
  I: Integer;
  aSpec, FileName: string;
  Files: TStringList;
begin
  Files := TStringList.Create;
  try
    XmlDoc := CoDOMDocument60.Create;
    XmlDoc.SetProperty('SelectionLanguage', 'XPath');
    XmlDoc.validateOnParse := False;
    XmlDoc.preserveWhiteSpace := False;
    XmlDoc.resolveExternals := False;
    XmlDoc.loadXML(AParseTree);

    // select all units nodes
    aSpec := ANodeSpec;
    UnitNodes := XmlDoc.documentElement.selectNodes(aSpec);
    for I := 0 to UnitNodes.length - 1 do
    begin
      FileName := UnitNodes.item[I].attributes.getNamedItem('name').nodeValue + '.pas';
      Files.Add(FileName);
    end;
  finally
    Result := Files.Text;
    Files.Free;
  end;
end;

{ TIncludeHandler }

constructor TIncludeHandler.Create(const Path: string);
begin
  inherited Create;
  FPath := Path;
end;

function TIncludeHandler.GetIncludeFileContent(const ParentFileName, IncludeName: string; out Content: string; out FileName: string): Boolean;
var
  FileContent: TStringList;
begin
  Result := False;
  FileContent := TStringList.Create;
  try
    FileContent.LoadFromFile(TPath.Combine(FPath, FileName));
    Content := FileContent.Text;
    Result := True;
  finally
    FileContent.Free;
  end;
end;

function TIncludeHandler.ReadFileToString(const FileName: string): string;
var
  Buffer: TBytes;
  Content: TMemoryStream;
  Encoding: TEncoding;
  PreambleSize: Integer;
begin
  Encoding := nil;

  Content := TMemoryStream.Create;
  try
    Content.LoadFromFile(FileName);

    SetLength(Buffer, Content.Size);
    Content.Read(Buffer, 0, Content.Size);

    PreambleSize := TEncoding.GetBufferEncoding(Buffer, Encoding, TEncoding.Default);

    Result := Encoding.GetString(Buffer, PreambleSize, Content.Size - PreambleSize);
  finally
    Content.Free;
  end;
end;

end.

