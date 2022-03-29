unit u_Main;

interface

uses
  System.Classes, Data.DB, Vcl.Menus, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Controls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.Comp.Client, FireDAC.DatS, FireDAC.Comp.DataSet, FireDAC.Stan.ExprFuncs,
  FireDAC.Comp.BatchMove, FireDAC.Comp.BatchMove.Dataset, FireDAC.Comp.BatchMove.Text,
  FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Phys.Intf, FireDAC.DApt.Intf;

type
  TfrmMain = class(TForm)
    btnExportData: TButton;
    btnNewRepSel: TButton;
    btnRefRepSel: TButton;
    chkIncludeFieldNames: TCheckBox;
    dlgOpen: TOpenDialog;
    dlgSave: TSaveDialog;
    dsCycles: TDataSource;
    edtNewReport: TEdit;
    edtReferenceReport: TEdit;
    edtSearch: TEdit;
    fdBatchMove: TFDBatchMove;
    fdGUIxWaitCursor: TFDGUIxWaitCursor;
    fdmCycles: TFDMemTable;
    fdmCyclesDelta: TIntegerField;
    fdmCyclesModule: TStringField;
    fdmCyclesNewCount: TIntegerField;
    fdmCyclesRecID: TIntegerField;
    fdmCyclesRefCount: TIntegerField;
    grdMain: TDBGrid;
    lblCycles: TLabel;
    lblNewCycles: TLabel;
    lblNewReport: TLabel;
    lblRecCount: TLabel;
    lblRecordsCount: TLabel;
    lblRefCycles: TLabel;
    lblRefReport: TLabel;
    lblSearch: TLabel;
    pnlGrid: TPanel;
    pnlNewReport: TPanel;
    pnlReferenceReport: TPanel;
    pnlSearchFilter: TPanel;
    pnlSettings: TPanel;
    pnlStatus: TPanel;
    procedure btnExportDataClick(Sender: TObject);
    procedure btnNewFileSelectClick(Sender: TObject);
    procedure btnRefFileSelectClick(Sender: TObject);
    procedure edtSearchChange(Sender: TObject);
    procedure grdMainMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure grdMainTitleClick(Column: TColumn);
  private
    FNewCycles: Integer;
    FPreviousColumnIndex: Integer;
    FRefCycles: Integer;
    FRefFile: Boolean;
    FSortOrder: string;
  protected
    procedure AddToData(const ModuleName, Count: string);
    procedure ProcessInputFile(const FileName: string);
    procedure ProcessLines(sl: TStringList);
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses
  System.StrUtils, System.SysUtils, System.UITypes, Vcl.Graphics, Winapi.ShlObj, u_GetFolder;

procedure TfrmMain.AddToData(const ModuleName, Count: string);
var
  found: Boolean;
  s: string;
begin
  s := ReplaceText(Copy(Count, 2), ')', '');
  fdmCycles.IndexFieldNames := 'Module';
  found := fdmCycles.Locate('Module', ModuleName, [loCaseInsensitive]);

  if FRefFile then // only adds
  begin
    fdmCycles.Append;
    fdmCyclesRecID.AsInteger    := fdmCycles.RecordCount;
    fdmCyclesModule.AsString    := ModuleName;
    fdmCyclesRefCount.AsInteger := s.ToInteger;
    Inc(FRefCycles, s.ToInteger);
  end
  else // else 2nd file, so add & diff
  begin
    if found then
      fdmCycles.Edit
    else
    begin
      fdmCycles.Append;
      fdmCyclesRecID.AsInteger := fdmCycles.RecordCount;
      fdmCyclesModule.AsString := ModuleName;
    end;
    fdmCyclesNewCount.AsInteger := s.ToInteger;
    fdmCyclesDelta.AsInteger := fdmCyclesNewCount.AsInteger - fdmCyclesRefCount.AsInteger;
    Inc(FNewCycles, s.ToInteger);
  end;
  fdmCycles.Post;
end;

procedure TfrmMain.btnExportDataClick(Sender: TObject);
var
  sl: TStringList;

  function GetFieldNames: string;
  var
    idx: Integer;
  begin
    Result := '';
    for idx := 0 to fdmCycles.FieldDefs.Count - 1 do
    begin
      if Result.IsEmpty then
        Result := '"' + fdmCycles.FieldDefs[idx].Name + '"'
      else
        Result := Result + ',"' + fdmCycles.FieldDefs[idx].Name + '"';
    end;
  end;

begin
  if dlgSave.Execute then
    if not string(dlgSave.FileName).IsEmpty then
    begin
      if FileExists(dlgSave.FileName) then
        DeleteFile(dlgSave.FileName);
      with TFDBatchMoveDataSetReader.Create(fdBatchMove) do
      begin
        DataSet := fdmCycles;
        Optimise := False;
      end;
      with TFDBatchMoveTextWriter.Create(fdBatchMove) do
        FileName := dlgSave.FileName;
      fdBatchMove.Execute;
      if chkIncludeFieldNames.Checked then
      begin
        sl := TStringList.Create;
        try
          sl.LoadFromFile(dlgSave.FileName);
          sl.Insert(0, GetFieldNames);
          sl.SaveToFile(dlgSave.FileName);
        finally
          sl.Free;
        end;
      end;
    end;
end;

procedure TfrmMain.btnNewFileSelectClick(Sender: TObject);
begin
  FRefFile := False;
  dlgOpen.InitialDir := IncludeTrailingPathDelimiter(GetFolder(CSIDL_PERSONAL)) + 'Cycles\';
  if dlgOpen.Execute then
    if not string(dlgOpen.FileName).IsEmpty then
    begin
      edtNewReport.Text := dlgOpen.FileName;
      fdmCycles.DisableControls;
      ProcessInputFile(dlgOpen.FileName);
      fdmCycles.First;
      fdmCycles.EnableControls;
      // adjust to present separate count
      lblNewCycles.Caption := 'New Cycles: ' + FNewCycles.ToString;
    end;
end;

procedure TfrmMain.btnRefFileSelectClick(Sender: TObject);
begin
  FRefFile := True;
  dlgOpen.InitialDir := IncludeTrailingPathDelimiter(GetFolder(CSIDL_PERSONAL)) + 'Cycles\';
  if dlgOpen.Execute then
    if not string(dlgOpen.FileName).IsEmpty then
    begin
      edtReferenceReport.Text := dlgOpen.FileName;
      if not fdmCycles.Active then
        fdmCycles.CreateDataSet;
      fdmCycles.DisableControls;
      ProcessInputFile(dlgOpen.FileName);
      fdmCycles.First;
      fdmCycles.EnableControls;
      lblRefCycles.Caption := 'Ref Cycles: ' + FRefCycles.ToString;
    end;
end;

procedure TfrmMain.edtSearchChange(Sender: TObject);
begin
  if not string(edtSearch.Text).IsEmpty then
  begin
    fdmCycles.LocateEx('Module', edtSearch.Text, [lxoCaseInsensitive, lxoPartialKey]);
  end;
end;

procedure TfrmMain.grdMainMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
var
 pt: TGridcoord;
begin
  pt:= grdMain.MouseCoord(x, y);
  if pt.y=0 then
    grdMain.Cursor:=crHandPoint
  else
    grdMain.Cursor:=crDefault;
end;

procedure TfrmMain.grdMainTitleClick(Column: TColumn);
var
  fontColor: TColor;

  procedure UpdateColumnHeader;
  begin
    grdMain.Columns[FPreviousColumnIndex].Title.Font.Color := clBlack;
    grdMain.Columns[FPreviousColumnIndex].Title.Font.Style :=
      grdMain.Columns[FPreviousColumnIndex].Title.Font.Style - [fsBold];
    FPreviousColumnIndex := Column.Index;
    Column.Title.Font.Style := Column.Title.Font.Style + [fsBold];
  end;

begin
  fontColor := clBlack;
  UpdateColumnHeader;
  if FPreviousColumnIndex > -1 then
  begin
    if FPreviousColumnIndex = Column.Index then
      if FSortOrder = '' then
      begin
        FSortOrder := 'D';
        fontColor := clBlack;
      end
      else
      begin
        FSortOrder := '';
        fontColor := clRed;
      end;
    fdmCycles.IndexFieldNames := fdmCycles.FieldDefs[FPreviousColumnIndex].Name + IfThen(FSortOrder.IsEmpty, ':D', '');
    grdMain.Columns[FPreviousColumnIndex].Title.Font.Color := fontColor;
    fdmCycles.First;
  end;
end;

procedure TfrmMain.ProcessInputFile(const FileName: string);
var
  sl: TStringList;
begin
  FNewCycles := 0;
  FRefCycles := 0;
  if FileExists(FileName) then
  begin
    FRefCycles := 0;
    sl := TStringList.Create;
    try
      sl.LoadFromFile(FileName);
      if sl.Count > 0 then
      begin
        if FRefFile then
          fdmCycles.EmptyDataSet;
        ProcessLines(sl);
      end;
    finally
      sl.Free;
    end;
  end;
  lblRecordsCount.Caption := fdmCycles.RecordCount.ToString;
end;

procedure TfrmMain.ProcessLines(sl: TStringList);
var
  arr: TArray<string>;
  idx: Integer;
begin
  idx := 0;
  while idx < sl.Count do
  begin
    if sl[idx].Contains('Cycles for') then
    begin
      arr := sl[idx].Split([' ']);
      AddToData(arr[Length(arr) - 2], arr[Length(arr) - 1]);
    end;
    Inc(idx);
  end;
end;

end.
