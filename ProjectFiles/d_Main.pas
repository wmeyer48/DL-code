unit d_Main;

interface

uses
  System.SysUtils, System.Classes, Vcl.Graphics, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, JvDBGrid, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.VCLUI.Wait, u_FileNameUtils;

type
  TColCalc = reference to function(const value: string): Integer;


  TdmMain = class(TDataModule)
    dsDCUs: TDataSource;
    dsDeadFiles: TDataSource;
    dsDuplicates: TDataSource;
    dsFiles: TDataSource;
    dsMapUnits: TDataSource;
    dsProjUnits: TDataSource;
    fdmColCalc: TFDMemTable;
    fdmDCUs: TFDMemTable;
    fdmDCUsExt: TStringField;
    fdmDCUsFullName: TStringField;
    fdmDCUsName: TStringField;
    fdmDCUsPath: TStringField;
    fdmDCUsRecID: TIntegerField;
    fdmDeadFiles: TFDMemTable;
    fdmDeadFilesExt: TStringField;
    fdmDeadFilesFullName: TStringField;
    fdmDeadFilesName: TStringField;
    fdmDeadFilesPath: TStringField;
    fdmDeadFilesRecID: TIntegerField;
    fdmDeadFilesTag: TBooleanField;
    fdmDuplicates: TFDMemTable;
    fdmDuplicatesExt: TStringField;
    fdmDuplicatesFullName: TStringField;
    fdmDuplicatesName: TStringField;
    fdmDuplicatesPath: TStringField;
    fdmDuplicatesRecID: TIntegerField;
    fdmDuplicatesTag: TBooleanField;
    fdmDuplicatesUsed: TBooleanField;
    fdmFiles: TFDMemTable;
    fdmFilesAmbiguous: TBooleanField;
    fdmFilesExt: TStringField;
    fdmFilesFullName: TStringField;
    fdmFilesName: TStringField;
    fdmFilesPath: TStringField;
    fdmFilesRecID: TIntegerField;
    fdmFilesUsed: TBooleanField;
    fdmMapUnits: TFDMemTable;
    fdmMapUnitsExt: TStringField;
    fdmMapUnitsFullName: TStringField;
    fdmMapUnitsName: TStringField;
    fdmMapUnitsPath: TStringField;
    fdmMapUnitsRecID: TIntegerField;
    fdmProjUnits: TFDMemTable;
    fdmProjUnitsExt: TStringField;
    fdmProjUnitsFullName: TStringField;
    fdmProjUnitsName: TStringField;
    fdmProjUnitsPath: TStringField;
    fdmProjUnitsRecID: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
  private
    FfdmFilesClone: TFDMemTable;
    procedure AddModuleRecord(const AModuleName: string);
    procedure FillCommonFields(ASource, ADest: TDataSet); overload;
    procedure FillCommonFields(const AFile: TFileName; ADest: TDataSet); overload;
    procedure FlagUsedModules;
    procedure SaveToCSV(DataSet: TDataSet; const FileName: string; WithHeader: Boolean = True);
  public
    function CalcColWidth(AGrid: TJvDBGrid; const colIdx: Integer; Calc: TColCalc): Integer;
    procedure DeleteTagged(AGrid: TJvDBGrid);
    procedure ExportData(ADataset: TDataSet; const AFileName: string; WithHeader: Boolean = True);
    procedure GetDCUFiles(const Folder: string);
    procedure GetDeadModules;
    procedure GetDuplicateFileNames;
    procedure GetMappedModules(const AMapFile: string);
    procedure GetPasFilesInFolders(const Folders: string);
    procedure GetReportUnits(const AReportFile: string);
    procedure SetIndex(ADataset: TFDMemTable; const AFldName: string; const Ascending: Boolean = True);
    procedure SetTagState(AGrid: TJvDBGrid; const State: Boolean);
  end;

var
  dmMain: TdmMain;

implementation

{$R *.dfm}

uses
  System.IOUtils, System.Math, System.StrUtils;


{%CLASSGROUP 'Vcl.Controls.TControl'}

procedure TdmMain.AddModuleRecord(const AModuleName: string);
var
  hd, tl: Integer;
  s: string;
  tbl: TFDCustomMemTable;
  _theFile: TFileName;
begin
  hd := PosEx('M=', AModuleName) + 2;
  tl := PosEx(' ', AModuleName, hd);
  s := Copy(AModuleName, hd, tl - hd);
  tbl := TFDMemTable.Create(nil);
  try
    tbl.CloneCursor(fdmFiles);
    tbl.IndexFieldNames := 'Name';
    if not tbl.Locate('Name', s, [loCaseInsensitive]) then
    begin
      _theFile.FullName := s;
      if not fdmMapUnits.Locate('Name', _theFile.Name, [loCaseInsensitive]) then
      begin
        fdmMapUnits.Append;
        fdmMapUnitsRecID.AsInteger   := fdmMapUnits.RecordCount;
        fdmMapUnitsName.AsString     := IfThen(_theFile.Path.IsEmpty, s, _theFile.Name);
        fdmMapUnitsExt.AsString      := '.pas';
        fdmMapUnits.Post;
      end;
    end
    else
    begin
      _theFile.FullName := s;
      // do not add file twice
      if not fdmMapUnits.Locate('Name', _theFile.Name, [loCaseInsensitive]) then
      begin
        fdmMapUnits.Append;
        FillCommonFields(tbl, fdmMapUnits);
        fdmMapUnits.Post;
      end;
    end;
  finally
    tbl.Free;
  end;
end;

function TdmMain.CalcColWidth(AGrid: TJvDBGrid; const colIdx: Integer; Calc: TColCalc): Integer;
var
  _dataset: TDataSet;
  _fld: TField;
begin
  Result := 0;
  _dataset := AGrid.DataSource.DataSet;
  _fld := _dataset.Fields[colIdx];
  _dataset.DisableControls;
  try
    _dataset.First;
    while not _dataset.Eof do
    begin
      Result := Max(Result, Calc(_fld.AsString));
      _dataset.Next;
    end;
  finally
    _dataset.EnableControls;
  end;
end;

procedure TdmMain.DataModuleCreate(Sender: TObject);
begin
  fdmFiles.Close;
  fdmFiles.CreateDataSet;
  fdmDCUs.Close;
  fdmDCUs.CreateDataSet;
  fdmMapUnits.Close;
  fdmMapUnits.CreateDataSet;
  fdmProjUnits.Close;
  fdmProjUnits.CreateDataSet;
  FfdmFilesClone := TFDMemTable.Create(Self);
end;

procedure TdmMain.DeleteTagged(AGrid: TJvDBGrid);
var
  dataset: TFDMemTable;
  fn: TFileName;
  s: string;
  _files: TArray<string>;
begin
  dataset := TFDMemTable(AGrid.DataSource.DataSet);
  dataset.DisableControls;
  try
    dataset.First;
    while not dataset.Eof do
    begin
      if dataset.FieldByName('Tag').AsBoolean then
      begin
        fn.FullName := dataset.FieldByName('FullName').AsString;
        _files := TDirectory.GetFiles(fn.Path, fn.Name + '.*', TSearchOption.soAllDirectories);
        for s in _files do
        begin
          DeleteFile(s);
        end;
        dataset.Delete;
      end;
      if not dataset.FieldByName('Tag').AsBoolean then
        dataset.Next;
    end;
  finally
    dataset.First;
    dataset.EnableControls;
  end;
end;

procedure TdmMain.ExportData(ADataset: TDataSet; const AFileName: string; WithHeader: Boolean = True);
begin
  SaveToCSV(ADataset, AFileName, WithHeader);
end;

procedure TdmMain.FillCommonFields(ASource, ADest: TDataSet);
begin
  ADest.FieldByName('RecID').AsInteger   := ADest.RecordCount;
  ADest.FieldByName('FullName').AsString := ASource.FieldByName('FullName').AsString;
  ADest.FieldByName('Name').AsString     := ASource.FieldByName('Name').AsString;
  ADest.FieldByName('Ext').AsString      := ASource.FieldByName('Ext').AsString;
  ADest.FieldByName('Path').AsString     := ASource.FieldByName('Path').AsString;
end;

procedure TdmMain.FillCommonFields(const AFile: TFileName; ADest: TDataSet);
begin
  ADest.FieldByName('RecID').AsInteger   := ADest.RecordCount;
  ADest.FieldByName('FullName').AsString := AFile.FullName;
  ADest.FieldByName('Name').AsString     := AFile.Name;
  ADest.FieldByName('Ext').AsString      := AFile.Ext;
  ADest.FieldByName('Path').AsString     := AFile.Path;
end;

procedure TdmMain.FlagUsedModules;
begin
  fdmFiles.DisableControls;
  fdmDCUs.DisableControls;
  try
    fdmDCUs.IndexFieldNames := 'Name';
    fdmFiles.First;
    while not fdmFiles.Eof do
    begin
      if fdmDCUs.Locate('Name', fdmFilesName.AsString, [loCaseInsensitive]) then
      begin
        fdmFiles.Edit;
        fdmFilesUsed.AsBoolean := True;
        fdmFiles.Post;
      end;
      fdmFiles.Next;
    end;
  finally
    fdmDCUs.EnableControls;
    fdmFiles.EnableControls;
  end;
  fdmFiles.First;
end;

procedure TdmMain.GetDCUFiles(const Folder: string);
var
  fn: string;
  _files: TArray<string>;
  _theFile: TFileName;
begin
  fdmDCUs.DisableControls;
  try
    if fdmDCUs.RecordCount > 0 then
      fdmDCUs.EmptyDataSet;
    if DirectoryExists(Folder) then
    begin
      _files := TDirectory.GetFiles(Folder, '*.dcu', TSearchOption.soAllDirectories);
      for fn in _files do
      begin
        _theFile.FullName := fn;
        fdmDCUs.Append;
        FillCommonFields(_theFile, fdmDCUs);
        fdmDCUs.Post;
      end;
    end;
    fdmDCUs.First;
  finally
    fdmDCUs.EnableControls;
  end;
end;

procedure TdmMain.GetDeadModules;
begin
  FlagUsedModules;
  fdmDeadFiles.DisableControls;
  fdmFiles.DisableControls;
  try
    fdmDeadFiles.EmptyDataSet;
    fdmDeadFiles.Active := True;
    fdmFiles.Active := True;
    fdmFiles.First;
    while not fdmFiles.Eof do
    begin
      if not fdmFilesUsed.AsBoolean then
      begin
        fdmDeadFiles.Append;
        FillCommonFields(fdmFiles, fdmDeadFiles);
        fdmDeadFiles.Post;
      end;
      fdmFiles.Next;
    end;
    fdmDeadFiles.First;
  finally
    fdmFiles.EnableControls;
    fdmDeadFiles.EnableControls;
  end;
end;

///  Have somehow broken the recognition of duplicates. Need to fix.
procedure TdmMain.GetDuplicateFileNames;
var
  idx: Integer;
  oldFilesIndex, oldMapIndex: string;

  procedure AddDupes;
  var
    oldFilesIndex: string;
  begin
    oldFilesIndex := FfdmFilesClone.IndexFieldNames;
    oldMapIndex := fdmMapUnits.IndexFieldNames;
    FfdmFilesClone.IndexFieldNames := 'FullName';
    FfdmFilesClone.First;
    while not FfdmFilesClone.Eof do
    begin
      fdmDuplicates.Append;
      FillCommonFields(FfdmFilesClone, fdmDuplicates);
      fdmDuplicatesUsed.AsBoolean    := fdmProjUnits.Locate('FullName', fdmDuplicatesFullName.AsString, [loCaseInsensitive]);
      fdmDuplicates.Post;
      FfdmFilesClone.Next;
    end;
    FfdmFilesClone.IndexFieldNames := oldFilesIndex;
    fdmMapUnits.IndexFieldNames := oldMapIndex;
  end;

begin
  oldFilesIndex := fdmFiles.IndexFieldNames;
  fdmFiles.DisableControls;
  FfdmFilesClone.CloneCursor(fdmFiles);
  if not FfdmFilesClone.Active then
    FfdmFilesClone.Open;
  fdmDuplicates.Active := True;
  fdmDuplicates.DisableControls;
  try
    FfdmFilesClone.IndexFieldNames := 'Name';
    fdmDuplicates.IndexFieldNames := 'Name';
    fdmDuplicates.EmptyDataSet;
    fdmFiles.First;
    while not fdmFiles.Eof do
    begin
      FfdmFilesClone.Filter := 'Name=' + QuotedStr(fdmFilesName.AsString);
      FfdmFilesClone.Filtered := True;
      if FfdmFilesClone.RecordCount > 1 then
        AddDupes;
      for idx := 0 to FfdmFilesClone.RecordCount - 1 do //FI:W528
        fdmFiles.Next;
      FfdmFilesClone.Filtered := False;
    end;
  finally
    fdmFiles.IndexFieldNames := oldFilesIndex;
    fdmFiles.First;
    fdmDuplicates.First;
    fdmDuplicates.EnableControls;
    fdmFiles.EnableControls;
  end;
end;

procedure TdmMain.GetMappedModules(const AMapFile: string);
var
  idx: Integer;
  s: string;
  sl: TStringList;
begin
  fdmMapUnits.DisableControls;
  try
    if fdmMapUnits.RecordCount > 0 then
      fdmMapUnits.EmptyDataSet;
    if FileExists(AMapFile) then
    begin
      sl := TStringList.Create;
      try
        sl.LoadFromFile(AMapFile);
        idx := -1;
        repeat
          Inc(idx);
          s := sl[idx];
        until s.Contains('M=');
        while s.Contains('M=') do
        begin
          AddModuleRecord(s);
          Inc(idx);
          s := sl[idx];
        end;
      finally
        sl.Free;
      end;
    end;
    fdmMapUnits.First;
  finally
    fdmMapUnits.EnableControls;
  end;
end;

procedure TdmMain.GetPasFilesInFolders(const Folders: string);
var
  fn, s: string;
  _files, _folders: TArray<string>;
  _theFile: TFileName;
begin
  fdmFiles.DisableControls;
  try
    if fdmFiles.RecordCount > 0 then
      fdmFiles.EmptyDataSet;
    _folders := Folders.Split([','], TStringSplitOptions.None);
    for s in _folders do
    begin
      if DirectoryExists(s) then
      begin
        _files := TDirectory.GetFiles(s, '*.pas', TSearchOption.soAllDirectories);
        for fn in _files do
        begin
          _theFile.FullName := fn;
          fdmFiles.Append;
          FillCommonFields(_theFile, fdmFiles);
          fdmFiles.Post;
        end;
      end;
    end;
    fdmFiles.IndexFieldNames := 'Name';
    fdmFiles.First;
  finally
    fdmFiles.EnableControls;
  end;
end;

procedure TdmMain.GetReportUnits(const AReportFile: string);
var
  s: string;
  sl: TStringList;
  _theFile: TFileName;
begin
  if FileExists(AReportFile) then
  begin
    fdmProjUnits.DisableControls;
    try
      sl := TStringList.Create;
      sl.LoadFromFile(AReportFile);
      for s in sl do
      begin
        _theFile.FullName := s;
        if not _theFile.Path.IsEmpty then
        begin
          fdmProjUnits.Append;
          FillCommonFields(_theFile, fdmProjUnits);
          fdmProjUnits.Post;
        end
        else
        begin
          fdmProjUnits.Append;
          fdmProjUnitsRecID.AsInteger := fdmProjUnits.RecordCount;
          fdmProjUnitsName.AsString   := s;
          fdmProjUnitsExt.AsString    := '.pas';
          fdmProjUnits.Post;
        end;
      end;
      fdmProjUnits.First;
    finally
      fdmProjUnits.EnableControls;
    end;
  end;
end;

procedure TdmMain.SaveToCSV(DataSet: TDataSet; const FileName: string; WithHeader: Boolean = True);
const
  // Using a semicolon as delimiter, the data load from Excel will automatically format the header
  // and render the data as a table.
  Delimiter: Char = ';';
  Enclosure: Char = '"';
var
  List: TStringList;

  function EscapeString(s: string): string;
  begin
    Result := StringReplace(s, Enclosure, Enclosure + Enclosure, [rfReplaceAll]); //FI:W510
    if (Pos(Delimiter, s) > 0) OR (Pos(Enclosure, s) > 0) then  // apply enclosure only when needed
        Result := Enclosure + Result + Enclosure;
  end;

  procedure AddHeader;
  var
    idx: Integer;
    S: string;
  begin
    S := '';
    for idx := 0 to DataSet.FieldCount - 1 do
    begin
      if S > '' then
        S := S + Delimiter;
      S := S + EscapeString(DataSet.Fields[idx].FieldName);
    end;
    List.Add(S);
  end;

  procedure AddRecord;
  var
    idx: Integer;
    S: string;
  begin
    S := '';
    for idx := 0 to DataSet.FieldCount - 1 do
    begin
      if S > '' then
        S := S + Delimiter;
      S := S + EscapeString(DataSet.Fields[idx].AsString);
    end;
    List.Add(S);
  end;

begin
  List := TStringList.Create;
  try
    DataSet.DisableControls;
    DataSet.First;
    if WithHeader then
      AddHeader;
    while not DataSet.Eof do
    begin
      AddRecord;
      DataSet.Next;
    end;
  finally
    List.SaveToFile(FileName);
    DataSet.First;
    DataSet.EnableControls;
    List.Free;
  end;
end;

procedure TdmMain.SetIndex(ADataset: TFDMemTable; const AFldName: string; const Ascending: Boolean = True);
begin
  ADataset.IndexFieldNames := AFldName + IfThen(Ascending, '', ':D');
end;

procedure TdmMain.SetTagState(AGrid: TJvDBGrid; const State: Boolean);
var
  dataset: TFDMemTable;
  idx: Integer;
begin
  dataset := TFDMemTable(AGrid.DataSource.DataSet);
  for idx := 0 to AGrid.SelectedRows.Count - 1 do
  begin
    AGrid.GotoSelection(idx);
    dataset.Edit;
    dataset.FieldByName('Tag').AsBoolean := State;
    dataset.Post;
  end;
end;

end.
