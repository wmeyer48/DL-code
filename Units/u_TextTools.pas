unit u_TextTools;

interface

uses
  System.Classes;

const
  _DelimChar = #7; // ASCII BEL character, which should be collision-proof.

type
  IDelimitedText = interface(IInterface)
  ['{11051835-2D4D-4E61-995E-EA2B5FC35A80}']
    procedure Add(const S: string);
    procedure Clear;
    procedure Delete(const Index: Integer);
    function Find(const S: string; var Index: Integer): Boolean;
    function FindDelimiter(const AString: string): Char;
    function GetCommaText: string;
    function GetCount: Integer;
    function GetDelimitedText: string;
    function GetDelimiter: Char;
    function GetSorted: Boolean;
    function GetStrictDelimiter: Boolean;
    function GetStrings(Index: Integer): string;
    function GetText: string;
    procedure IgnoreDupes(const State: Boolean);
    function IndexOf(const S: string): Integer;
    procedure ParseString(const AString: string);
    procedure PutStrings(Index: Integer; const Value: string);
    procedure SetDelimitedText(const Value: string);
    procedure SetDelimiter(const Value: Char);
    procedure SetSorted(const Value: Boolean);
    procedure SetStrictDelimiter(const Value: Boolean);
    procedure SetText(const Value: string);

    property CommaText: string read GetCommaText;
    property Count: Integer read GetCount;
    property DelimitedText: string read GetDelimitedText write SetDelimitedText;
    property Delimiter: Char read GetDelimiter write SetDelimiter;
    property Sorted: Boolean read GetSorted write SetSorted;
    property StrictDelimiter: Boolean read GetStrictDelimiter write SetStrictDelimiter;
    property Strings[Index: Integer]: string read GetStrings write PutStrings; default;
    property Text: string read GetText write SetText;
  end;

function GetDelimTextInst(const Delim: Char = _DelimChar): IDelimitedText;

implementation

uses
  System.StrUtils;

type
  TDelimitedText = class(TInterfacedObject, IDelimitedText)
  private
    FStringList: TStringList;
    function GetCommaText: string;
    function GetCount: Integer;
    function GetDelimitedText: string;
    function GetDelimiter: Char;
    function GetSorted: Boolean;
    function GetStrictDelimiter: Boolean;
    function GetStrings(Index: Integer): string;
    function GetText: string;
    procedure PutStrings(Index: Integer; const Value: string);
    procedure SetDelimitedText(const Value: string);
    procedure SetDelimiter(const Value: Char);
    procedure SetSorted(const Value: Boolean);
    procedure SetStrictDelimiter(const Value: Boolean);
    procedure SetText(const Value: string);
  public
    constructor Create;
    destructor Destroy; override;
    procedure Add(const S: string);
    procedure Clear;
    procedure Delete(const Index: Integer);
    function Find(const S: string; var Index: Integer): Boolean;
    function FindDelimiter(const AString: string): Char;
    procedure IgnoreDupes(const State: Boolean);
    function IndexOf(const S: string): Integer;
    procedure ParseString(const AString: string);
    property CommaText: string read GetCommaText;
    property Count: Integer read GetCount;
    property DelimitedText: string read GetDelimitedText write SetDelimitedText;
    property Delimiter: Char read GetDelimiter write SetDelimiter;
    property Sorted: Boolean read GetSorted write SetSorted;
    property StrictDelimiter: Boolean read GetStrictDelimiter write SetStrictDelimiter;
    property Strings[Index: Integer]: string read GetStrings write PutStrings; default;
    property Text: string read GetText write SetText;
  end;

function GetDelimTextInst(const Delim: Char = _DelimChar): IDelimitedText;
begin
//
end;

constructor TDelimitedText.Create;
begin
  inherited;
  FStringList := TStringList.Create;
  FStringList.Delimiter := _DelimChar;
  FStringList.StrictDelimiter := True;
  FStringList.Duplicates := dupIgnore;
  FStringList.CaseSensitive := False;
end;

destructor TDelimitedText.Destroy;
begin
  FStringList.Free;
  inherited;
end;

procedure TDelimitedText.Add(const S: string);
begin
  FStringList.Add(S);
end;

procedure TDelimitedText.Clear;
begin
  FStringList.Clear;
end;

procedure TDelimitedText.Delete(const Index: Integer);
begin
  if Index < FStringList.Count then
    FStringList.Delete(Index);
end;

function TDelimitedText.Find(const S: string; var Index: Integer): Boolean;
begin
  Result := FStringList.Find(S, Index);
  if not Result then
    Index := -1;
end;

function TDelimitedText.FindDelimiter(const AString: string): Char;
begin
  Result := ',';
  if PosEx(#7, AString) > 0 then
    Result := #7
  else if PosEx(#$D, AString) > 0 then
    Result := #$D;
end;

function TDelimitedText.GetCommaText: string;
begin
  Result := FStringList.CommaText;
end;

function TDelimitedText.GetCount: Integer;
begin
  Result := FStringList.Count;
end;

function TDelimitedText.GetDelimitedText: string;
begin
  Result := FStringList.DelimitedText;
end;

function TDelimitedText.GetDelimiter: Char;
begin
  Result := FStringList.Delimiter;
end;

function TDelimitedText.GetSorted: Boolean;
begin
  Result := FStringList.Sorted;
end;

function TDelimitedText.GetStrictDelimiter: Boolean;
begin
  Result := FStringList.StrictDelimiter;
end;

function TDelimitedText.GetStrings(Index: Integer): string;
begin
  Result := FStringList[Index];
end;

function TDelimitedText.GetText: string;
begin
  Result := FStringList.Text;
end;

procedure TDelimitedText.IgnoreDupes(const State: Boolean);
const
  arr: array[False..True] of TDuplicates = (dupAccept, dupIgnore);
begin
  FStringList.Duplicates := arr[State];
end;

function TDelimitedText.IndexOf(const S: string): Integer;
begin
  Result := FStringList.IndexOf(S);
end;

procedure TDelimitedText.ParseString(const AString: string);
begin
  FStringList.Delimiter := FindDelimiter(AString);
  // Delimiter is now one of: #7, #$D, or ',''
  if FStringList.Delimiter = #$D then // if text with line breaks
  begin
    FStringList.Text := AString;
  end
  else // is delimited text with either #7 or comma
  begin
    FStringList.DelimitedText := AString;
  end;
end;

procedure TDelimitedText.PutStrings(Index: Integer; const Value: string);
begin
  FStringList[Index] := Value;
end;

procedure TDelimitedText.SetDelimitedText(const Value: string);
begin
  FStringList.DelimitedText := Value;
end;

procedure TDelimitedText.SetDelimiter(const Value: Char);
begin
  FStringList.Delimiter := Value;
end;

procedure TDelimitedText.SetSorted(const Value: Boolean);
begin
  FStringList.Sorted := Value;
end;

procedure TDelimitedText.SetStrictDelimiter(const Value: Boolean);
begin
  FStringList.StrictDelimiter := Value;
end;

procedure TDelimitedText.SetText(const Value: string);
begin
  FStringList.Text := Value;
end;

end.
