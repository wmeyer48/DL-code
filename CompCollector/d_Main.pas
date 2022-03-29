unit d_Main;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient;

type
  TdMain = class(TDataModule)
    cdsComponents: TClientDataSet;
    cdsCompTypes: TClientDataSet;
    cdsCompTypesInstances: TIntegerField;
    cdsCompTypesName: TStringField;
    cdsCompTypesRecID: TIntegerField;
    cdsDfmFiles: TClientDataSet;
    cdsDfmFilesName: TStringField;
    cdsDfmFilesPath: TStringField;
    cdsDfmFilesRecID: TIntegerField;
    cdsDfmFilesUFN: TStringField;
    cdsPackages: TClientDataSet;
    cdsScratchComps: TClientDataSet;
    cdsScratchCompsDfmID: TIntegerField;
    cdsScratchCompsInstances: TIntegerField;
    cdsScratchCompsName: TStringField;
    cdsScratchCompsPackageID: TIntegerField;
    cdsScratchCompsRecID: TIntegerField;
    cdsUsedComps: TClientDataSet;
    cdsUsedCompsDfmID: TIntegerField;
    cdsUsedCompsInstances: TIntegerField;
    cdsUsedCompsName: TStringField;
    cdsUsedCompsPackageID: TIntegerField;
    cdsUsedCompsRecID: TIntegerField;
    dsComponents: TDataSource;
    dsDfmFiles: TDataSource;
    dsPackages: TDataSource;
    dsUsedComps: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
  private
    FMaxTypesForm: string;
    FMaxTypesName: string;
    FMaxTypesPerForm: Integer;
    FMostUsedType: string;
    FUsedCompsTotal: Integer;
    FUsedCompTypes: Integer;
    procedure AddDFMToData(const AFileName: string);
    function GetPackageID(const AComp: string): Integer;
    procedure GetStats;
    procedure GetUsedCompsFromForm(const AForm: string);
  public
    function GetColWidth(Dataset: TDataset; const ColIndex: Integer): Integer;
    function GetDFMFilesList(const APath: string; const AList: TStrings): Integer;
    function GetMaxTypesPerFormInfo: string;
    function GetMostUsedType: string;
    function GetUsedComponents(const AList: string): Integer;
    function GetUsedCompsTotal: Integer;
    function GetUsedCompsTypes: Integer;
    function LoadData(Dataset: TClientDataset; const FileName: string): Boolean;
    function MaxStr(Dataset: TClientDataset; const ColIndex: Integer): string;
    procedure SaveToCSV(const AFileName: string; ADataset: TDataSet; WithHeaders: Boolean);
  end;

var
  dMain: TdMain;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

uses
  System.IOUtils, System.Math, System.StrUtils, System.Types, System.Variants;

procedure TdMain.AddDFMToData(const AFileName: string);
begin
  if AFileName <> '' then
  begin
    if not cdsDFMFiles.Active then
      cdsDFMFiles.CreateDataSet;
    cdsDFMFiles.Append;
    cdsDFMFilesRecID.AsInteger := cdsDFMFiles.RecordCount;
    cdsDFMFilesName.AsString := ExtractFileName(AFileName);
    cdsDFMFilesPath.AsString := ExtractFilePath(AFileName);
    cdsDfmFilesUFN.AsString  := AFileName;
    cdsDFMFiles.Post;
  end;
end;

procedure TdMain.DataModuleCreate(Sender: TObject);
begin
  cdsComponents.Active := False;
  cdsPackages.Active := False;

  if cdsUsedComps.Active then
    cdsUsedComps.Close;
  cdsUsedComps.CreateDataSet;
end;

function TdMain.GetColWidth(Dataset: TDataset; const ColIndex: Integer): Integer;
var
  fld: TField;
begin
  Result := 1;
  fld := Dataset.Fields[ColIndex];
  if fld is TStringField then
  begin
    Dataset.First;
    while not Dataset.Eof do
    begin
      Result := Max(Result, fld.AsString.Length);
      Dataset.Next;
    end;
    Inc(Result);
  end;
end;

function TdMain.GetDFMFilesList(const APath: string; const AList: TStrings): Integer;
var
  count: Integer;
  arr: TStringDynArray;
  s: string;
begin
  AList.Clear;
  arr := TDirectory.GetFiles(APath, '*.dfm');
  count := 0;
  for s in arr do
  begin
    AList.Add(s);
    AddDFMToData(s);
    Inc(count);
  end;
  Result := count;
end;

function TdMain.GetMaxTypesPerFormInfo: string;
begin
  Result := FMaxTypesPerForm.ToString + ' / ' + FMaxTypesName + ' on ' + FMaxTypesForm;
end;

function TdMain.GetMostUsedType: string;
begin
  Result := FMostUsedType;
end;

function TdMain.GetPackageID(const AComp: string): Integer;
begin
  cdsPackages.DisableControls;
  cdsComponents.DisableControls;
  try
    Result := -1;
    if cdsComponents.Locate('Name', AComp, [loCaseInsensitive]) then
      if cdsPackages.Locate('RecID', cdsComponents.FieldByName('PackageID').AsInteger, []) then
        Result := cdsPackages.FieldByName('RecID').AsInteger;
  finally
    cdsComponents.EnableControls;
    cdsPackages.EnableControls;
  end;
end;

procedure TdMain.GetStats;
var
  idx: Integer;
begin
//  FMaxTypesPerForm := 0;
  FUsedCompTypes := 0;

  cdsCompTypes.Close;
  cdsCompTypes.CreateDataSet;
  cdsUsedComps.First;
  while not cdsUsedComps.Eof do
  begin
    cdsCompTypes.Filter := 'Name=' + QuotedStr(cdsUsedCompsName.AsString);
    cdsCompTypes.Filtered := True;
    if cdsCompTypes.RecordCount = 1 then
    begin
      cdsCompTypes.Edit;
      cdsCompTypesInstances.AsInteger := cdsCompTypesInstances.AsInteger + cdsUsedCompsInstances.AsInteger;
    end
    else
    begin
      cdsCompTypes.Filtered := False;
      cdsCompTypes.Append;
      cdsCompTypesRecId.AsInteger     := cdsUsedCompsRecID.AsInteger;
      cdsCompTypesName.AsString       := cdsUsedCompsName.AsString;
      cdsCompTypesInstances.AsInteger := cdsUsedCompsInstances.AsInteger;
    end;
    cdsCompTypes.Post;
    cdsUsedComps.Next;
  end;
  cdsCompTypes.Filtered := False;

  cdsCompTypes.IndexFieldNames := 'Instances';
  cdsCompTypes.Last;
  FMostUsedType := cdsCompTypesName.AsString;
//  FMaxTypesPerForm := cdsCompTypesInstances.AsInteger;  ///////////// This is TOTAL, not per form max
  cdsUsedComps.IndexFieldNames := 'Instances';
  cdsUsedComps.Last;
  FMaxTypesPerForm := cdsUsedCompsInstances.AsInteger;
  FMaxTypesName := cdsUsedCompsName.AsString;
  if cdsDfmFiles.Locate('RecID', cdsUsedCompsDfmID.AsInteger, []) then
    FMaxTypesForm := cdsDfmFilesName.AsString;
  cdsUsedComps.IndexFieldNames := '';


  // Get total comps
  FUsedCompsTotal := 0;
  cdsCompTypes.First;
  while not cdsCompTypes.Eof do
  begin
    FUsedCompsTotal := FUsedCompsTotal + cdsCompTypesInstances.AsInteger;
    cdsCompTypes.Next;
  end;

  FUsedCompTypes := cdsCompTypes.RecordCount;
end;

function TdMain.GetUsedComponents(const AList: string): Integer;
var
  s: string;
  sl: TStringList;
begin
  Result := 0;
  if cdsUsedComps.Active then
  begin
    cdsUsedComps.Close;
    cdsUsedComps.CreateDataSet;
  end;
  sl := TStringList.Create;
  try
    sl.CommaText := AList;
    for s in sl do
    begin
      GetUsedCompsFromForm(s);
    end;
  finally
    sl.Free;
  end;
  GetStats;
end;

procedure TdMain.GetUsedCompsFromForm(const AForm: string);
var
  dfmID: Integer;
  arr: TArray<string>;
  found: Boolean;
  s: string;
  sl: TStringList;

  procedure AddCompToData(const AComp: string; found: Boolean);
  var
    pID: Integer;
  begin
    // If we can't find in a package, then don't log it.
    pID := GetPackageID(AComp);
    dfmID := cdsDfmFilesRecID.AsInteger;
    if found and (pId >= 0) then
    begin
      cdsUsedComps.Filter := 'DfmID=' + QuotedStr(dfmID.ToString) + 'and PackageID=' + QuotedStr(pID.ToString) + 'and Name=' + QuotedStr(AComp);
      cdsUsedComps.Filtered := True;
      if cdsUsedComps.RecordCount = 1 then
      begin
        cdsUsedComps.Edit;
        cdsUsedCompsInstances.AsInteger := cdsUsedCompsInstances.AsInteger + 1;
        FMaxTypesPerForm := Max(FMaxTypesPerForm, cdsUsedCompsInstances.AsInteger);
      end
      else
      begin
        cdsUsedComps.Filtered := False;
        cdsUsedComps.Append;
        cdsUsedCompsRecID.AsInteger := cdsUsedComps.RecordCount;
        cdsUsedCompsDfmID.AsInteger := dfmID;
        cdsUsedCompsPackageID.AsInteger := pID;
        cdsUsedCompsName.AsString := AComp;
        cdsUsedCompsInstances.AsInteger := 1;
        Inc(FUsedCompTypes);
      end;
      cdsUsedComps.Post;
    end;
  end;

begin
  FUsedCompTypes := 0;
  FMaxTypesPerForm := 0;

  cdsComponents.IndexFieldNames := 'Name';

  sl := TStringList.Create;
  try
    if FileExists(AForm) then
    begin
      cdsDfmFiles.DisableControls;
      try
        cdsDfmFiles.IndexFieldNames := 'UFN';
        found := cdsDfmFiles.Locate('UFN', AForm, [loCaseInsensitive]);
      finally
        cdsDfmFiles.EnableControls;
      end;
      sl.LoadFromFile(AForm);
      for s in sl do
      begin
        if s.Contains('object') then
        begin
          arr := s.Trim.Split([' ']);
          if Length(arr) = 3 then
          begin
            AddCompToData(arr[2], found);
          end
          else
            AddCompToData('DFM Error', found);
        end;
      end;
    end;
  finally
    sl.Free;
  end;
end;

function TdMain.GetUsedCompsTotal: Integer;
begin
  Result := FUsedCompsTotal;
end;

function TdMain.GetUsedCompsTypes: Integer;
begin
  Result := FUsedCompTypes;
end;

function TdMain.LoadData(Dataset: TClientDataset; const FileName: string): Boolean;
begin
  Result := False;
  if FileExists(FileName) then
  begin
    Dataset.LoadFromFile(FileName);
    Dataset.Active := True;
    Result := Dataset.RecordCount > 0;
  end;
end;

function TdMain.MaxStr(Dataset: TClientDataset; const ColIndex: Integer): string;
var
  fld: TField;
begin
  Result := '';
  fld := Dataset.Fields[ColIndex];
  if fld is TStringField then
  begin
    Dataset.First;
    while not Dataset.Eof do
    begin
      if Result.Length < fld.AsString.Length then
      begin
        Result := fld.AsString;
      end;
      Dataset.Next;
    end;
  end;
end;

procedure TdMain.SaveToCSV(const AFileName: string; ADataset: TDataSet; WithHeaders: Boolean);
var
  sl: TStringList;

  procedure WriteHeaders;
  var
    idx: Integer;
    arr: TArray<string>;
    s: string;
  begin
    SetLength(arr, ADataset.FieldCount);
    for idx := 0 to ADataset.FieldCount - 1 do
    begin
      arr[idx] := ADataset.Fields[idx].FieldName;
    end;
    s.Join(',', arr);
    sl.Add(s);
  end;

  procedure WriteData;
  var
    idx: Integer;
    arr: TArray<string>;
    s: string;
  begin
    SetLength(arr, ADataset.FieldCount);
    ADataSet.First;
    while not ADataSet.Eof do
    begin
      for idx := 0 to ADataset.FieldCount - 1 do
      begin
        arr[idx] := ADataset.Fields[idx].AsString;
      end;
      s.Join(',', arr);
      sl.Add(s);
    end;
  end;

begin
  if not AFileName.IsEmpty then
  begin
    if FileExists(AFileName) then
      DeleteFile(AFileName);
    sl := TStringList.Create;
    try
      if WithHeaders then
        WriteHeaders;
      WriteData;
    finally
      sl.Free;
    end;
  end;
end;

end.
