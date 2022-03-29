unit u_GetFileUtils;

interface

uses
  System.IOUtils, u_SimpleStringList;

type
  TwmGetFiles = record
  private
    FDelimiter: string;
    FFilesList: TSimpleStringList;
    FQuote: Char;
  public
    constructor Create(const DelimiterVal: string; const QuoteVal: Char = '"');
    procedure CollectFiles(const APath: string);

  end;

implementation

uses
  System.SysUtils;

constructor TwmGetFiles.Create(const DelimiterVal: string; const QuoteVal: Char = '"');
begin
  inherited;

  FDelimiter := DelimiterVal;
  FQuote := QuoteVal;
  FFilesList := TSimpleStringList.Create(DelimiterVal, QuoteVal);
end;

procedure TwmGetFiles.CollectFiles(const APath: string);
var
  arr: TArray<string>;
  sFiles, s, ss: string;
begin
  arr := TDirectory.GetFiles(APath);
  sFiles := '';
  for s in arr do
  begin
    ss := s;
    if ss.Contains(' ') then
      ss := FQuote + ss + FQuote;
    if sFiles.IsEmpty then
      sFiles := ss
    else
      sFiles := sFiles + FDelimiter + ss;
  end;
  FFilesList.DelimitedText := sFiles;
end;

end.
