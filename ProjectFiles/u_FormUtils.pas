unit u_FileNameUtils;

interface

uses
  System.Classes;

type
  TFileName = record
  private
    FExists: Boolean;
    FExt: string;
    FFullName: string;
    FName: string;
    FPath: string;
    function GetExt: string;
    function GetFileExt(const AFileName: string): string;
    function GetNameOnly(const AFileName: string): string;
    procedure SetFullName(const Value: string);
  public
    property Exists: Boolean read FExists;
    property Ext: string read GetExt;
    property FullName: string read FFullName write SetFullName;
    property Name: string read FName;
    property Path: string read FPath;
  end;

implementation

uses
  System.IOUtils, System.SysUtils, System.StrUtils;

function TFileName.GetExt: string;
begin
  Result := FExt;
end;

function TFileName.GetFileExt(const AFileName: string): string;
begin
  Result := ExtractFileName(AFileName);
  if PosEx('.', Result) > 0 then
    Result := Copy(Result, PosEx('.', Result));
end;

function TFileName.GetNameOnly(const AFileName: string): string;
var
  FileName: string;
begin
  FileName := ExtractFileName(AFileName);
  if PosEx('.', FileName) > 0 then
    Result := Copy(FileName, 1, Pred(PosEx('.', FileName)))
  else
    Result := FileName;
end;

procedure TFileName.SetFullName(const Value: string);
begin
  FFullName := Value;
  FExists   := TFile.Exists(FFullName);
  FPath     := ExtractFilePath(FFullName);
  FName     := GetNameOnly(FFullName);
  FExt      := GetFileExt(FFullName);
end;

end.
