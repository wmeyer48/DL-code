unit u_SimpleCSV;

(*   u_SimpleCSV    Copyright (C) 2021 by Meyer Design

     This module is intended to handle quite simple and regular CSV formatted text.
     It supports:
       - caller specified delimiter and quote
       - delimiters embedded in quotes are ignored
     And does not handle:
       - embedded CR (#13)
       - header row is not handled differently
*)

interface

uses
  System.Types;

type
  TCsvRec = record
  private
    FDelimiter: Char;
    FQuote: Char;
  public
    constructor Create(const DelimiterVal: string; const QuoteVal: Char = '"');
    function CSVFromArray(const Values: TStringDynArray): string;
    function StringFromCSV(const Value: string): string;
    property Delimiter: Char read FDelimiter write FDelimiter;
    property Quote: Char read FQuote write FQuote;
  end;

implementation

uses
  System.SysUtils;

constructor TCsvRec.Create(const DelimiterVal: string; const QuoteVal: Char = '"');
begin
  inherited;
  FDelimiter := DelimiterVal[1];
  FQuote := QuoteVal;
end;

function TCsvRec.CSVFromArray(const Values: TStringDynArray): string;
var
  s: string;
begin
  Result := '';
  for s in Values do
    Result := Result + s + #13;
end;

function TCsvRec.StringFromCSV(const Value: string): string;
var
  arr: TStringDynArray;
  s: string;
begin
  if (FQuote = '') or (FDelimiter = '') or Value.IsEmpty then
    Exit('');
  arr := Value.Split(FDelimiter, FQuote);
  Result := '';
  for s in arr do
    Result := Result + s + #13;
end;

end.
