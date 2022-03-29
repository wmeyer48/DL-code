unit f_Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, System.Types, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.TitleBarCtrls, Vcl.StdCtrls, RzCmboBx, Vcl.Grids, Vcl.DBGrids, RzDBGrid, Vcl.ExtCtrls, RzPanel, RzSplit, d_Main, RzTabs,
  Data.DB, Vcl.Buttons, Vcl.Mask, RzShellDialogs, RzButton, RzEdit, RzStatus,
  RzLabel;

type
  TfMain = class(TForm)
    btnHarvestCompsFromDfms: TSpeedButton;
    btnLoadInput: TRzButton;
    btnProcessForms: TSpeedButton;
    btnSaveFormsList: TRzButton;
    btnSelInputFolder: TRzButton;
    btnSelProjectFolders: TSpeedButton;
    dlgFileOpen: TFileOpenDialog;
    dlgSave: TFileSaveDialog;
    dlgSelFolder: TRzSelectFolderDialog;
    edtAllCompsCount: TLabeledEdit;
    edtInputFolder: TLabeledEdit;
    edtProjectFolders: TLabeledEdit;
    edtUsedCompsMaxPerForm: TLabeledEdit;
    edtUsedCompsMostUsed: TLabeledEdit;
    edtUsedCompsTotal: TLabeledEdit;
    edtUsedCompsTypes: TLabeledEdit;
    grdComponents: TRzDBGrid;
    grdFormFiles: TRzDBGrid;
    grdPackages: TRzDBGrid;
    grdUsedComps: TRzDBGrid;
    grpAnalyzerSettings: TRzGroupBox;
    grpAnalyzerStatus: TRzGroupBox;
    grpUsedCompStats: TRzGroupBox;
    Label1: TLabel;
    lbFormFilesList: TListBox;
    lblFormFilesList: TLabel;
    lblFormsListCount: TRzLabel;
    Panel2: TPanel;
    pcAnalyzer: TRzPageControl;
    pcMain: TRzPageControl;
    pnlFormFilesGrid: TPanel;
    pnlInstructions: TPanel;
    pnlUsedCompsGrid: TPanel;
    RzGroupBox1: TRzGroupBox;
    RzGroupBox2: TRzGroupBox;
    RzMemo1: TRzMemo;
    sbInput: TRzStatusBar;
    sbInputPane1: TRzStatusPane;
    sbInputPane2: TRzStatusPane;
    SpeedButton2: TSpeedButton;
    splAnalyzer: TRzSplitter;
    splInput: TRzSplitter;
    tsAnalyzer: TRzTabSheet;
    tsAnalyzerSettings: TRzTabSheet;
    tsFormFiles: TRzTabSheet;
    tsInitial: TRzTabSheet;
    tsInputData: TRzTabSheet;
    tsUsedComponents: TRzTabSheet;
    pnlAnalyzerCmds: TRzPanel;
    grpUsedCompsCmds: TRzGroupBox;
    btnUsedCompsToCSV: TRzButton;
    procedure btnHarvestCompsFromDfmsClick(Sender: TObject);
    procedure btnLoadInputClick(Sender: TObject);
    procedure btnProcessFormsClick(Sender: TObject);
    procedure btnSaveFormsListClick(Sender: TObject);
    procedure btnSelInputFolderClick(Sender: TObject);
    procedure btnSelProjectFoldersClick(Sender: TObject);
    procedure btnUsedCompsToCSVClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure pcAnalyzerPageChange(Sender: TObject);
  private
    FDocsFolder: string;
    FInputFolder: string;
    FProjectFolders: TStringDynArray;
    procedure AdjColWidth(Grid: TRzDBGrid; const ColIndex: Integer);
  end;

var
  fMain: TfMain;

implementation

{$R *.dfm}

uses
  Datasnap.DBClient, System.IOUtils, Winapi.ShlObj, f_Folders2;

function GetSpecialFolder(const CSIDL: integer) : string;
var
  RecPath : PWideChar;
begin
  RecPath := StrAlloc(MAX_PATH);
    try
    FillChar(RecPath^, MAX_PATH, 0);
    if SHGetSpecialFolderPath(0, RecPath, CSIDL, false) then
      result := RecPath
    else
      result := '';
    finally
      StrDispose(RecPath);
    end;
end;

procedure TfMain.AdjColWidth(Grid: TRzDBGrid; const ColIndex: Integer);
var
  s: string;
  fld: TField;
begin
  fld := Grid.DataSource.DataSet.Fields[ColIndex];
  if fld is TStringField then
  begin
    s := dMain.MaxStr(TClientDataset(Grid.DataSource.DataSet), ColIndex);
    Grid.Columns[ColIndex].Width := Trunc(Grid.Canvas.TextWidth(s) * 1.075);
  end;
end;

procedure TfMain.btnHarvestCompsFromDfmsClick(Sender: TObject);
var
  idx: Integer;
  oldCursor: TCursor;
begin
  oldCursor := Screen.Cursor;
  try
    Screen.Cursor := crHourGlass;
    dMain.GetUsedComponents(lbFormFilesList.Items.CommaText);
    for idx := 0 to grdUsedComps.Columns.Count - 1 do
      AdjColWidth(grdUsedComps, idx);
    edtUsedCompsTotal.Text := dMain.GetUsedCompsTotal.ToString;
    edtUsedCompsTypes.Text := dMain.GetUsedCompsTypes.ToString;
    edtUsedCompsMaxPerForm.Text := dMain.GetMaxTypesPerFormInfo;
    edtUsedCompsMostUsed.Text := dMain.GetMostUsedType;
  finally
    Screen.Cursor := oldCursor;
  end;
end;

procedure TfMain.btnLoadInputClick(Sender: TObject);
var
  idx: Integer;
begin
  if DirectoryExists(FInputFolder) then
  begin
    dMain.LoadData(dMain.cdsPackages, FInputFolder + 'Packages.xml');
    dMain.LoadData(dMain.cdsComponents, FInputFolder + 'Components.xml');
    sbInputPane1.Caption := 'Packages Found: ' + grdPackages.DataSource.DataSet.RecordCount.ToString;
    sbInputPane2.Caption := 'Installed Components Found: ' + grdComponents.DataSource.DataSet.RecordCount.ToString;
    dMain.cdsComponents.IndexFieldNames := 'Name';
    for idx := 0 to grdPackages.Columns.Count - 1 do
      AdjColWidth(grdPackages, idx);
    for idx := 0 to grdComponents.Columns.Count - 1 do
      AdjColWidth(grdComponents, idx);
  end;
end;

procedure TfMain.btnProcessFormsClick(Sender: TObject);
var
  fn, s, ss: string;
  idx: Integer;
  sl: TStringList;
begin
  sl := TStringList.Create;
  try
    for s in FProjectFolders do
    begin
      ss := IncludeTrailingPathDelimiter(s);
      dMain.GetDFMFilesList(ss, sl);
      for fn in sl do
        lbFormFilesList.Items.Add(fn);
    end;
    lblFormFilesList.Caption := 'Files found: ' + lbFormFilesList.Count.ToString;
  finally
    sl.Free;
  end;
  for idx := 0 to grdFormFiles.Columns.Count - 1 do
    AdjColWidth(grdFormFiles, idx);
end;

procedure TfMain.btnSaveFormsListClick(Sender: TObject);
begin
  dlgSave.DefaultFolder := FDocsFolder;
  if dlgSave.Execute then
    if not string(dlgSave.FileName).IsEmpty then
    begin
      lbFormFilesList.Items.SaveToFile(dlgSave.FileName);
    end;
end;

procedure TfMain.btnSelInputFolderClick(Sender: TObject);
begin
  dlgFileOpen.DefaultFolder := FDocsFolder;
  if dlgFileOpen.Execute then
    if not string(dlgFileOpen.FileName).IsEmpty then
    begin
      edtInputFolder.Text := IncludeTrailingPathDelimiter(dlgFileOpen.FileName);
      FInputFolder := edtInputFolder.Text;
    end;
end;

procedure TfMain.btnSelProjectFoldersClick(Sender: TObject);
var
  s, ss: string;
begin
  fFolders := TfFolders.Create(Self);
  try
    fFolders.ShowModal;
    if fFolders.ModalResult = mrOK then
      FProjectFolders := fFolders.Folders;
  finally
    fFolders.Free;
  end;

  for s in FProjectFolders do
  begin
    if ss.IsEmpty then
      ss := s
    else
      ss := ss + ';' + s;
  end;
  edtProjectFolders.Text := ss;
end;

procedure TfMain.btnUsedCompsToCSVClick(Sender: TObject);
begin
  if dlgSave.Execute then
    if not string(dlgSave.FileName).IsEmpty then
    begin
      dMain.SaveToCSV(dlgSave.FileName, dMain.cdsCompTypes, True);
    end;
end;

procedure TfMain.FormCreate(Sender: TObject);
begin
  FDocsFolder := IncludeTrailingPathDelimiter(GetSpecialFolder(CSIDL_MYDOCUMENTS));
  dMain := TdMain.Create(Self);
  pcMain.ActivePageIndex := 0;
  pcAnalyzer.ActivePageIndex := 0;
end;

procedure TfMain.pcAnalyzerPageChange(Sender: TObject);
begin
  if pcAnalyzer.ActivePage = tsFormFiles then
    edtAllCompsCount.Text := dMain.cdsDfmFiles.RecordCount.ToString;
  grpUsedCompsCmds.Visible := pcAnalyzer.ActivePage = tsUsedComponents;
  if pcAnalyzer.ActivePage = tsUsedComponents then
    btnUsedCompsToCSV.Enabled := grdUsedComps.DataSource.DataSet.RecordCount > 0;

end;

end.
