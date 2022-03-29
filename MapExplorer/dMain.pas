unit dMain;

interface

uses
  SysUtils, Classes, DB, DBClient;

type
  TdmMain = class(TDataModule)
    cdsModules: TClientDataSet;
    cdsModulesGroup: TStringField;
    cdsModulesModule: TStringField;
    cdsModulesRecID: TIntegerField;
    cdsModulesSegment: TStringField;
    cdsPublics: TClientDataSet;
    cdsPublicsMember: TStringField;
    cdsPublicsModule: TStringField;
    cdsPublicsRecID: TIntegerField;
    cdsPublicsSegment: TStringField;
    dsModules: TDataSource;
    dsPublics: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
  private
    FLineNumbersFound: Boolean;
    FMapFile: TStringList;
    FNextLine: Integer;
    FPublicsFound: Boolean;
    procedure GetModuleData(const s: string);
    procedure GetModules;
    procedure GetPublicData(const s: string);
    procedure GetPublics;
    function GetSegmentByNum(const s: string): string;
    function GetToken(const AKey, AValue: string): string;
  public
    procedure ApplyFilter(const AFilter: string);
    procedure DisableControls;
    procedure EnableControls;
    function LoadMap(const AMapFile: string): Boolean;
  end;

var
  dmMain: TdmMain;

implementation

{$R *.dfm}

uses
  StrUtils, Types;

const
  segNames: array[1..10] of string = ('CODE', 'ICODE', 'DATA', 'BSS', 'TLS', '', '', '', '', 'PDATA');

procedure TdmMain.ApplyFilter(const AFilter: string);
begin
  cdsModules.Filter := 'Segment=' + QuotedStr(AFilter);
  cdsModules.Filtered := UpperCase(AFilter) <> 'ALL';
  cdsPublics.Filter := 'Segment=' + QuotedStr(AFilter);
  cdsPublics.Filtered := UpperCase(AFilter) <> 'ALL';
end;

procedure TdmMain.DataModuleCreate(Sender: TObject);
begin
  cdsModules.CreateDataSet;
  cdsPublics.CreateDataSet;
end;

procedure TdmMain.DisableControls;
begin
  cdsModules.DisableControls;
  cdsPublics.DisableControls;
end;

procedure TdmMain.EnableControls;
begin
  cdsModules.EnableControls;
  cdsPublics.EnableControls;
end;

procedure TdmMain.GetModuleData(const s: string);
begin
  cdsModules.Append;
  cdsModulesRecID.AsInteger  := cdsModules.RecordCount;
  cdsModulesSegment.AsString := GetToken('C=', s);
  cdsModulesGroup.AsString   := GetToken('G=', s);
  cdsModulesModule.AsString  := GetToken('M=', s);
  cdsModules.Post;
end;

procedure TdmMain.GetModules;
var
  idx: Integer;
  s: string;
begin
  cdsModules.Close;
  cdsModules.Open;
  idx := 0;
  while (idx < FMapFile.Count) and not FPublicsFound do
  begin
    s := FMapFile[idx];
    if PosEx('Publics by Name', s) = 0 then
    begin
      if PosEx('M=', s) > 0 then
      begin
        GetModuleData(s);
      end;
    end
    else
      FPublicsFound := True;
    Inc(idx);
  end;
  FNextLine := idx;
end;

procedure TdmMain.GetPublicData(const s: string);
var
  sArr: TStringDynArray;

  procedure GetModuleAndMember;
  var
    s: string;
    count: Integer;
  begin
    s := sArr[Length(sArr) - 1];
    count := PosEx('.', s);

    cdsPublicsModule.AsString := Trim(Copy(s, 1, count - 1));
    cdsPublicsMember.AsString := Trim(Copy(s, count + 1));
  end;

begin
  sArr := SplitString(Trim(s), ' ');

  cdsPublics.Append;
  cdsPublicsRecID.AsInteger := cdsPublics.RecordCount;
  cdsPublicsSegment.AsString := GetSegmentByNum(sArr[0]);
  GetModuleAndMember;
  cdsPublics.Post;
end;

procedure TdmMain.GetPublics;
var
  idx: Integer;
  s: string;
begin
  cdsPublics.Close;
  cdsPublics.Open;
  idx := FNextLine;
  while (idx < FMapFile.Count) and not FLineNumbersFound do
  begin
    s := Trim(FMapFile[idx]);

    FLineNumbersFound := PosEx('Line numbers', s) > 0;
    if not FLineNumbersFound then
      if s <> '' then
        GetPublicData(s);
    Inc(idx);
  end;
end;

function TdmMain.GetSegmentByNum(const s: string): string;
var
  n: Integer;
begin
  Result := '';
  TryStrToInt(Trim(Copy(s, 1, PosEx(':', s))), n);
  if n in [1..5, 10] then
    Result := segNames[n];
end;

function TdmMain.GetToken(const AKey, AValue: string): string;
var
  hd, count: Integer;
begin
  hd     := PosEx(AKey, AValue);
  count  := PosEx(' ', AValue, hd) - hd - Length(AKey);
  Result := Trim(Copy(AValue, hd + Length(AKey), count));
end;

function TdmMain.LoadMap(const AMapFile: string): Boolean;
begin
  Result := False;
  if FileExists(AMapFile) then
  begin
    FLineNumbersFound := False;
    FPublicsFound     := False;

    FMapFile := TStringList.Create;
    try
      FMapFile.LoadFromFile(AMapFile);
      GetModules;
      GetPublics;
    finally
      Result := cdsModules.RecordCount > 0;
      FMapFile.Free;
    end;
  end;
end;

end.
