unit fMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Menus, Grids, ComCtrls, DBGrids, Data.DB;

type
  TfrmMain = class(TForm)
    About1: TMenuItem;
    btnClose: TButton;
{$WARN SYMBOL_PLATFORM OFF}
    dlgOpen: TFileOpenDialog;
{$WARN SYMBOL_PLATFORM ON}
    File1: TMenuItem;
    grdModules: TDBGrid;
    grdPublics: TDBGrid;
    MainMenu1: TMainMenu;
    mnuExit: TMenuItem;
    mnuOpen: TMenuItem;
    N1: TMenuItem;
    Panel1: TPanel;
    Panel2: TPanel;
    pcMain: TPageControl;
    pnlBottom: TPanel;
    rgFilter: TRadioGroup;
    Splitter1: TSplitter;
    tsModules: TTabSheet;
    tsPublics: TTabSheet;
    procedure btnCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mnuExitClick(Sender: TObject);
    procedure mnuOpenClick(Sender: TObject);
    procedure rgFilterClick(Sender: TObject);
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses
  dMain;

const
  sProgramIdentity = 'Map Explorer - v.0.23';

procedure TfrmMain.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  Caption := sProgramIdentity;
  pcMain.ActivePage := tsModules;
end;

procedure TfrmMain.mnuExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmMain.mnuOpenClick(Sender: TObject);
begin
{$WARN SYMBOL_PLATFORM OFF}
  if dlgOpen.Execute then
    if dlgOpen.FileName <> '' then
    begin
      dmMain := TdmMain.Create(Self);
      dmMain.DisableControls;
      dmMain.LoadMap(dlgOpen.FileName);
      grdModules.DataSource := dmMain.dsModules;
      grdPublics.DataSource := dmMain.dsPublics;
      dmMain.EnableControls;
    end;
{$WARN SYMBOL_PLATFORM ON}
end;

procedure TfrmMain.rgFilterClick(Sender: TObject);
begin
  dmMain.ApplyFilter(UpperCase(rgFilter.Items[rgFilter.ItemIndex]));
  // kludge to correct for disappearing scrollbar
  Width := Width + 1;
  Width := Width - 1;
end;

end.
