program ProjectFiles;

uses
  Vcl.Forms,
  f_Main in 'f_Main.pas' {frmMain},
  u_FileNameUtils in 'u_FileNameUtils.pas',
  d_Main in 'd_Main.pas' {dmMain: TDataModule},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Iceberg Classico');
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
