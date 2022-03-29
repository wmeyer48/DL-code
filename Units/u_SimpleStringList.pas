unit u_SimpleStringList;

(*  u_SimpleStringList  Copyright © 2021 by Meyer Design

    Not intended as a replacement for TStringList, but as a very simple list with
    much less code. Intended for behind the scenes use.
*)

interface

uses
  System.SysUtils, System.Types;

type
  TSimpleStringList = class
  private
    FDelimitedText: string;
    FDelimiter: string;
    FQuote: Char;
    FStrArray: TStringDynArray;
    function GetDelimitedText: string;
    function GetStrings(Index: Integer): string;
    procedure SetDelimitedText(const Value: string);
    procedure SetStrings(Index: Integer; const Value: string);
  public
    constructor Create(const Delimiter: string; const Quote: Char);
    property DelimitedText: string read GetDelimitedText write SetDelimitedText;
    property Delimiter: string read FDelimiter write FDelimiter;
    property Quote: Char read FQuote write FQuote;
    property Strings[Index: Integer]: string read GetStrings write SetStrings;
  end;

implementation

constructor TSimpleStringList.Create(const Delimiter: string; const Quote: Char);
begin
  inherited Create;

  FDelimiter := Delimiter;
  FQuote := Quote;
end;

function TSimpleStringList.GetDelimitedText: string;
var
  idx: Integer;
  s, ss: string;
begin
  Result := '';
  for s in FStrArray do
  begin
    ss := s;
    if ss.Contains(FDelimiter) then
      ss := FQuote + ss + FQuote;
    if Result.IsEmpty then
      Result := ss
    else
      Result := Result + FDelimiter + ss;
  end;
end;

function TSimpleStringList.GetStrings(Index: Integer): string;
begin
  if Index in [0..Length(FStrArray)] then
  begin
    Result := FStrArray[Index];
  end
  else
    Exit('');
end;

procedure TSimpleStringList.SetDelimitedText(const Value: string);
begin
  FDelimitedText := Value;
  FStrArray := FDelimitedText.Split(FDelimiter, FQuote);
end;

procedure TSimpleStringList.SetStrings(Index: Integer; const Value: string);
begin
  if Index >= Length(FStrArray) then
    SetLength(FStrArray, Index);
  FStrArray[Index] := Value;
end;

end.
