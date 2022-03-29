unit uStrTools;

interface

const
  NonWhiteChars = ['!'..'~'];
  WhiteChars = [#9, ' '];

function FindToken(const AString: string; const AOffset: Integer = 0): Integer;
function FindTokenEnd(const AString: string; const AOffset: Integer = 0): Integer;

implementation

uses
  System.SysUtils;

function FindToken(const AString: string; const AOffset: Integer = 0): Integer;
var
  idx: Integer;
begin
  Result := -1;
  idx := 1 + AOffset;
  while True do
  begin
    if CharInSet(AString[idx], WhiteChars) then
      Inc(idx)
    else
      Exit(idx);
  end;
end;

function FindTokenEnd(const AString: string; const AOffset: Integer = 0): Integer;
var
  idx: Integer;
begin
  idx := 1 + AOffset;
  while True do
  begin
    if CharInSet(AString[idx], NonWhiteChars) then
      Inc(idx)
    else
      Exit(idx);
  end;
end;

end.
