program MapExplorer;

uses
  Forms,
  fMain in 'fMain.pas' {frmMain},
  dMain in 'dMain.pas' {dmMain: TDataModule},
  uStrTools in 'uStrTools.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
