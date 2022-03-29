{==============================================================================|
| Project : Delphi Simple CSV Parser module | Version : Github Varsion         |
|   from:   https://github.com/nanaksr/CSVParser                               |
|==============================================================================|
| Initial Developers of the Original Code are:                                 |
| NanakSR (Indonesia) nanaksr.com                                              |
| All Rights Reserved.                                                         |
|==============================================================================|}

unit u_CSVParser;

interface

uses
  System.Classes, System.SysUtils, Winapi.Windows;

type
  TCSVParseMultiArray = array of array of string;

  TCSVParser = class(TObject)
  private
    FCol: TStringList;
    FColCount: integer;
    FDataFile: String;
    FDelimiter: Char;
    Feof: Boolean;
    FIndex: Integer;
    FRow: TStringList;
    FRowCount: integer;
    function GetFieldByName(ColName: string) : String;
    function GetFields(ColNo: Integer) : String;
  public
    constructor Create(const Delimiter: Char = ',');
    procedure Next;
    procedure Open;
    property Eof: Boolean read FEof;
    property FieldByName[index: string] : string read GetFieldByName;
    property Fields[index: integer] : string read GetFields;
    property RowCount: integer read FRowCount;
    property SetDataFile: String read FDataFile write FDataFile;
    property SetDelimiter: Char read FDelimiter write FDelimiter default ',';
end;

implementation

constructor TCSVParser.Create(const Delimiter: Char = ',');
begin
  FDataFile := '';
  FDelimiter := Delimiter;
  FCol := TStringList.Create;
  FRow := TStringList.Create;
  FColCount := 0;
  FRowCount := 0;
  FIndex := -1;
end;

function TCSVParser.GetFieldByName(ColName: string) : String;
var
  Row: TStringList;
  ColIndex : integer;
begin
  ColIndex := FCol.IndexOf(ColName);
  if ColIndex = -1 then
    raise Exception.Create('Column ' + ColName + ' Not Found');

  Row := TStringList.Create;
  Row.StrictDelimiter := True;
  Row.Delimiter := FDelimiter;
  Row.DelimitedText := FRow.Strings[FIndex];
  Result := Row.Strings[ColIndex];
end;

function TCSVParser.GetFields(ColNo: Integer) : String;
var
  Row: TStringList;
begin
  if ColNo > FColCount then
    raise Exception.Create('out of index column, Max: Fields[' + IntToStr(FColCount) + ']');

  Row := TStringList.Create;
  Row.StrictDelimiter := True;
  Row.Delimiter := FDelimiter;
  Row.DelimitedText := FRow.Strings[FIndex];
  Result := Row.Strings[ColNo];
end;

procedure TCSVParser.Next;
begin
  Inc(FIndex);
  if FIndex = FRow.Count then
    FEof := True;
end;

procedure TCSVParser.Open;
var
  GetFiles,Colmn : TStringList;
  I,J : integer;
begin
  GetFiles := TStringList.Create;
  GetFiles.LoadFromFile(FDataFile);

  Colmn := TStringList.Create;
  Colmn.StrictDelimiter := True;
  Colmn.Delimiter := FDelimiter;
  Colmn.DelimitedText := GetFiles.Strings[0];
  FColCount := Colmn.Count-1;

  for I := 0 to FColCount do
  begin
    FCol.Add(Colmn.Strings[I]);
  end;

  FRowCount := 0;
  for J := 1 to GetFiles.Count-1 do
  begin
    Inc(FRowCount);
    FRow.Add(GetFiles.Strings[J]);
  end;

  FIndex := 0;
  Feof := False;
end;

end.
