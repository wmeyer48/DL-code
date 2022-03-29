unit u_GetFolder;

interface

function GetFolder(const ACSIDL: Integer): string;

implementation

uses
  Winapi.Windows, Winapi.ShlObj, System.SysUtils;

function GetFolder(const ACSIDL: Integer): string;
var
  FolderPath: array[0..MAX_PATH] of char;
begin
  SetLastError(ERROR_SUCCESS);
  // N.B.: In D2007, call SHGetFolderPath or SHGetFolderPathA (A is for ANSI).
  // In newer systems, call SHGetFolderPathW (Unicode), per MSDN:
  // https://msdn.microsoft.com/en-us/library/ff381407.aspx
  if SHGetFolderPathW(0,ACSIDL,0,0,@FolderPath) = S_OK then
    Result := FolderPath;
    Result := IncludeTrailingPathDelimiter(Result);
end;

end.
