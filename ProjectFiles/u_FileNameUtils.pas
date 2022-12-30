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
  Result := ExtractFileExt(AFileName);
end;

function TFileName.GetNameOnly(const AFileName: string): string;
var
  FileName: string;
begin
  FileName := ExtractFileName(AFileName);
  FileName := ChangeFileExt(FileName, '');
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
