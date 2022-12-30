unit f_Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzSplit,
  RzTabs, RzButton, Vcl.ExtCtrls, RzPanel, Vcl.StdCtrls, RzLabel, Vcl.Mask, RzEdit, RzBtnEdt, Vcl.ComCtrls, RzTreeVw, RzShellCtrls, RzFilSys,
  RzListVw, Data.DB, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, LsFileExplorer28, RzRadGrp, RzRadChk, Vcl.Buttons;

type
  TfrmMain = class(TForm)
    btnClose: TRzButton;
    btnDeleteDeadFiles: TRzButton;
    btnDeleteDupeFiles: TRzButton;
    btnExportDCUFiles: TRzButton;
    btnExportDeadModules: TRzButton;
    btnExportDuplicateFiles: TRzButton;
    btnExportMappedFiles: TRzButton;
    btnExportProjectUnits: TRzButton;
    btnExportProjTree: TRzButton;
    btnInvRefresh: TSpeedButton;
    chkDeadSelected: TRzCheckBox;
    chkDupeSelected: TRzCheckBox;
    chkExportWithHeader: TRzCheckBox;
    chkFilesDpk: TRzCheckBox;
    chkFilesDpr: TRzCheckBox;
    chkFilesDproj: TRzCheckBox;
    chkFilesPas: TRzCheckBox;
    dlgOpenDCUFolder: TFileOpenDialog;
    dlgOpenMapFile: TFileOpenDialog;
    dlgOpenProjectFolders: TFileOpenDialog;
    dlgOpenUnitReportFile: TFileOpenDialog;
    dlgSave: TFileSaveDialog;
    edtDCUFolder: TRzButtonEdit;
    edtMapFile: TRzButtonEdit;
    edtProjectFolders: TRzButtonEdit;
    edtSearchFollers: TRzButtonEdit;
    edtSearchMapFile: TRzButtonEdit;
    edtSearchTokens: TRzButtonEdit;
    edtSearchUnitReport: TRzButtonEdit;
    edtUnitsRepFile: TRzButtonEdit;
    grdAllFiles: TJvDBGrid;
    grdDCUFiles: TJvDBGrid;
    grdDeadModules: TJvDBGrid;
    grdDuplicateFileNames: TJvDBGrid;
    grdMappedModules: TJvDBGrid;
    grdUnitsRep: TJvDBGrid;
    JvDBGrid1: TJvDBGrid;
    lblDCUFiles: TRzLabel;
    lblDeadFiles: TRzLabel;
    lblDupeFiles: TRzLabel;
    lblFileFilter: TRzLabel;
    lblFilesInProjTree: TRzLabel;
    lblInvDCUFolder: TRzLabel;
    lblInvFiles: TRzLabel;
    lblInvMapFile: TRzLabel;
    lblInvProjectFolders: TRzLabel;
    lblInvUnitReport: TRzLabel;
    lblMappedFiles: TRzLabel;
    lblProjUnits: TRzLabel;
    lblSearchFolders: TRzLabel;
    lblSearchMapFile: TRzLabel;
    lblSearchTokens: TRzLabel;
    lblSearchUnitReport: TRzLabel;
    lvwFiles: TLsFilelistView28;
    memDead: TRzMemo;
    memDuplicates: TRzMemo;
    pcFileViews: TRzPageControl;
    pcMain: TRzPageControl;
    pnlBottom: TRzPanel;
    pnlDCUBottom: TRzPanel;
    pnlDeadModulesActions: TRzPanel;
    pnlDuplicatesActions: TRzPanel;
    pnlFileTypes: TRzGridPanel;
    pnlFileTypesSel: TRzPanel;
    pnlFolders: TRzGridPanel;
    pnlInvDCUFolder: TRzPanel;
    pnlInvMapFile: TRzPanel;
    pnlInvUnitReportFile: TRzPanel;
    pnlMappedFilesBottom: TRzPanel;
    pnlMMXFilesBottom: TRzPanel;
    pnlPInvProjFolders: TRzPanel;
    pnlProjFilesBottom: TRzPanel;
    pnlProjTreeHdr: TRzGridPanel;
    pnlSearchLeft: TRzPanel;
    pnlSearchRight: TRzPanel;
    pnlSearchTop: TRzPanel;
    RzPanel1: TRzPanel;
    splitProjTree: TRzSplitter;
    treeDirs: TLsDirTree21;
    tsDCUFiles: TRzTabSheet;
    tsDeadModules: TRzTabSheet;
    tsDuplicateFileNames: TRzTabSheet;
    tsInventory: TRzTabSheet;
    tsInvProjectFiles: TRzTabSheet;
    tsInvProjectFilesUsed: TRzTabSheet;
    tsInvProjectTree: TRzTabSheet;
    tsProjUnits: TRzTabSheet;
    tsSearch: TRzTabSheet;
    procedure btnCloseClick(Sender: TObject);
    procedure btnDeleteDeadFilesClick(Sender: TObject);
    procedure btnDeleteDupeFilesClick(Sender: TObject);
    procedure btnExportDCUFilesClick(Sender: TObject);
    procedure btnExportDeadModulesClick(Sender: TObject);
    procedure btnExportDuplicateFilesClick(Sender: TObject);
    procedure btnExportMappedFilesClick(Sender: TObject);
    procedure btnExportProjectUnitsClick(Sender: TObject);
    procedure btnExportProjTreeClick(Sender: TObject);
    procedure btnInvRefreshClick(Sender: TObject);
    procedure chkDeadSelectedClick(Sender: TObject);
    procedure chkDupeSelectedClick(Sender: TObject);
    procedure chkFilesMaskClick(Sender: TObject);
    procedure edtDCUFolderButtonClick(Sender: TObject);
    procedure edtMapFileButtonClick(Sender: TObject);
    procedure edtProjectFoldersButtonClick(Sender: TObject);
    procedure edtUnitsRepFileButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure grdAllFilesTitleClick(Column: TColumn);
    procedure grdDCUFilesTitleClick(Column: TColumn);
    procedure grdDeadModulesTitleClick(Column: TColumn);
    procedure grdDuplicateFileNamesTitleClick(Column: TColumn);
    procedure grdMappedModulesTitleClick(Column: TColumn);
    procedure grdUnitsRepTitleClick(Column: TColumn);
    procedure pcFileViewsPageChange(Sender: TObject);
    procedure UncheckBox(ACheckBox: TRzCheckBox);
    procedure UpdateEdit(Edit: TRzButtonEdit; const Value: string);
  private
    procedure SetGridColWidths(AGrid: TJvDBGrid);
    function TextWidth(const Text: string): Integer;
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses
  System.Math, System.StrUtils, d_Main;


procedure TfrmMain.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmMain.btnDeleteDeadFilesClick(Sender: TObject);
begin
  dmMain.DeleteTagged(grdDeadModules);
  UncheckBox(chkDeadSelected);
end;

procedure TfrmMain.btnDeleteDupeFilesClick(Sender: TObject);
begin
  dmMain.DeleteTagged(grdDuplicateFileNames);
  UncheckBox(chkDupeSelected);
end;

procedure TfrmMain.btnExportDCUFilesClick(Sender: TObject);
begin
  if dlgSave.Execute then
    if not string(dlgSave.FileName).IsEmpty then
    begin
      dmMain.ExportData(grdDCUFiles.DataSource.DataSet, dlgSave.FileName, chkExportWithHeader.Checked);
    end;
end;

procedure TfrmMain.btnExportDeadModulesClick(Sender: TObject);
begin
  if dlgSave.Execute then
    if not string(dlgSave.FileName).IsEmpty then
    begin
      dmMain.ExportData(grdDeadModules.DataSource.DataSet, dlgSave.FileName, chkExportWithHeader.Checked);
    end;
end;

procedure TfrmMain.btnExportDuplicateFilesClick(Sender: TObject);
begin
  if dlgSave.Execute then
    if not string(dlgSave.FileName).IsEmpty then
    begin
      dmMain.ExportData(grdDuplicateFileNames.DataSource.DataSet, dlgSave.FileName, chkExportWithHeader.Checked);
    end;
end;

procedure TfrmMain.btnExportMappedFilesClick(Sender: TObject);
begin
  if dlgSave.Execute then
    if not string(dlgSave.FileName).IsEmpty then
    begin
      dmMain.ExportData(grdMappedModules.DataSource.DataSet, dlgSave.FileName, chkExportWithHeader.Checked);
    end;
end;

procedure TfrmMain.btnExportProjectUnitsClick(Sender: TObject);
begin
  if dlgSave.Execute then
    if not string(dlgSave.FileName).IsEmpty then
    begin
      dmMain.ExportData(grdUnitsRep.DataSource.DataSet, dlgSave.FileName, chkExportWithHeader.Checked);
    end;
end;

procedure TfrmMain.btnExportProjTreeClick(Sender: TObject);
begin
  if dlgSave.Execute then
    if not string(dlgSave.FileName).IsEmpty then
    begin
      dmMain.ExportData(grdAllFiles.DataSource.DataSet, dlgSave.FileName, chkExportWithHeader.Checked);
    end;
end;

procedure TfrmMain.btnInvRefreshClick(Sender: TObject);
begin
  dmMain.GetPasFilesInFolders(edtProjectFolders.Text);
  SetGridColWidths(grdAllFiles);
  lblInvFiles.Caption := grdAllFiles.DataSource.DataSet.RecordCount.ToString + ' records';
  dmMain.GetMappedModules(edtMapFile.Text);
  SetGridColWidths(grdMappedModules);
  lblMappedFiles.Caption := grdMappedModules.DataSource.DataSet.RecordCount.ToString + ' records';
  dmMain.GetDCUFiles(edtDCUFolder.Text);
  SetGridColWidths(grdDCUFiles);
  lblDCUFiles.Caption := grdDCUFiles.DataSource.DataSet.RecordCount.ToString + ' records';
  dmMain.GetReportUnits(edtUnitsRepFile.Text);
  SetGridColWidths(grdUnitsRep);
  lblProjUnits.Caption := grdUnitsRep.DataSource.DataSet.RecordCount.ToString + ' records';
end;

procedure TfrmMain.chkDeadSelectedClick(Sender: TObject);
begin
  dmMain.SetTagState(grdDeadModules, (Sender as TRzCheckBox).Checked);
end;

procedure TfrmMain.chkDupeSelectedClick(Sender: TObject);
begin
  dmMain.SetTagState(grdDuplicateFileNames, (Sender as TRzCheckBox).Checked);
end;

procedure TfrmMain.chkFilesMaskClick(Sender: TObject);
var
  s: string;
begin
  s := '';
  if chkFilesPas.Checked then
    s := s + '*.pas;';
  if chkFilesDpr.Checked then
    s := s + '*.dpr;';
  if chkFilesDproj.Checked then
    s := s + '*.dproj;';
  if chkFilesDpk.Checked then
    s := s + '*.dpk;';
  if s.IsEmpty then
    s := '*.*';
  lvwFiles.Mask := s;
end;

procedure TfrmMain.edtDCUFolderButtonClick(Sender: TObject);
begin
  if dlgOpenDCUFolder.Execute then
    if not string(dlgOpenDCUFolder.FileName).IsEmpty then
    begin
      UpdateEdit(edtDCUFolder, dlgOpenDCUFolder.FileName);
      // now fill the collection
      dmMain.GetDCUFiles(edtDCUFolder.Text);
      SetGridColWidths(grdDCUFiles);
    end;
end;

procedure TfrmMain.edtMapFileButtonClick(Sender: TObject);
begin
  if dlgOpenMapFile.Execute then
    if not string(dlgOpenMapFile.FileName).IsEmpty then
    begin
      UpdateEdit(edtMapFile, dlgOpenMapFile.FileName);
      // now fill the collection
      dmMain.GetMappedModules(edtMapFile.Text);
      SetGridColWidths(grdMappedModules);
    end;
end;

procedure TfrmMain.edtProjectFoldersButtonClick(Sender: TObject);
begin
  if dlgOpenProjectFolders.Execute then
    if not string(dlgOpenProjectFolders.FileName).IsEmpty then
    begin
      UpdateEdit(edtProjectFolders, dlgOpenProjectFolders.Files.CommaText);
      // now fill the collection
      dmMain.GetPasFilesInFolders(edtProjectFolders.Text);
      SetGridColWidths(grdAllFiles);
      lblInvFiles.Caption := grdAllFiles.DataSource.DataSet.RecordCount.ToString + ' records';
    end;
end;

procedure TfrmMain.edtUnitsRepFileButtonClick(Sender: TObject);
begin
  if dlgOpenUnitReportFile.Execute then
    if not string(dlgOpenUnitReportFile.FileName).IsEmpty then
    begin
      UpdateEdit(edtUnitsRepFile, dlgOpenUnitReportFile.FileName);
      // now fill the collection
      dmMain.GetReportUnits(edtUnitsRepFile.Text);
      SetGridColWidths(grdUnitsRep);
      lblProjUnits.Caption := grdUnitsRep.DataSource.DataSet.RecordCount.ToString + ' records';
    end;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  dmMain := TdmMain.Create(Self);
  pcFileViews.ActivePage := tsInvProjectFiles;
end;

procedure TfrmMain.grdAllFilesTitleClick(Column: TColumn);
begin
  dmMain.SetIndex(dmMain.fdmFiles, Column.FieldName, grdAllFiles.SortMarker = smUp);
end;

procedure TfrmMain.grdDCUFilesTitleClick(Column: TColumn);
begin
  dmMain.SetIndex(dmMain.fdmDCUs, Column.FieldName, grdDCUFiles.SortMarker = smUp);
end;

procedure TfrmMain.grdDeadModulesTitleClick(Column: TColumn);
begin
  dmMain.SetIndex(dmMain.fdmDeadFiles, Column.FieldName, grdDeadModules.SortMarker = smUp);
end;

procedure TfrmMain.grdDuplicateFileNamesTitleClick(Column: TColumn);
begin
  dmMain.SetIndex(dmMain.fdmDuplicates, Column.FieldName, grdDuplicateFileNames.SortMarker = smUp);
end;

procedure TfrmMain.grdMappedModulesTitleClick(Column: TColumn);
begin
  dmMain.SetIndex(dmMain.fdmMapUnits, Column.FieldName, grdMappedModules.SortMarker = smUp);
end;

procedure TfrmMain.grdUnitsRepTitleClick(Column: TColumn);
begin
  dmMain.SetIndex(dmMain.fdmProjUnits, Column.FieldName, grdUnitsRep.SortMarker = smUp);
end;

procedure TfrmMain.pcFileViewsPageChange(Sender: TObject);
begin
  if (Sender as TRzPageControl).ActivePage = tsDeadModules then
  begin
    dmMain.GetDeadModules;
    SetGridColWidths(grdDeadModules);
    lblDeadFiles.Caption := grdDeadModules.DataSource.DataSet.RecordCount.ToString + ' records';
  end
  else if (Sender as TRzPageControl).ActivePage = tsDuplicateFileNames then
  begin
    dmMain.GetDuplicateFileNames;
    SetGridColWidths(grdDuplicateFileNames);
    lblDupeFiles.Caption := grdDuplicateFileNames.DataSource.DataSet.RecordCount.ToString + ' records';
  end;
end;

procedure TfrmMain.SetGridColWidths(AGrid: TJvDBGrid);
var
  idx: Integer;
begin
  for idx := 0 to AGrid.Columns.Count - 1 do
  begin
    AGrid.Columns[idx].Width := Max(AGrid.MinColumnWidth, dmMain.CalcColWidth(AGrid, idx, TextWidth) + 5);
  end;
end;

function TfrmMain.TextWidth(const Text: string): Integer;
begin
  Result := Canvas.TextWidth(Text);
end;

procedure TfrmMain.UncheckBox(ACheckBox: TRzCheckBox);
var
  oldEvent: TNotifyEvent;
begin
  oldEvent := ACheckBox.OnClick;
  ACheckBox.OnClick := nil;
  ACheckBox.Checked := False;
  ACheckBox.OnClick := oldEvent;
end;

procedure TfrmMain.UpdateEdit(Edit: TRzButtonEdit; const Value: string);
begin
  Edit.Text := Value;
  Edit.Update;
end;

end.
