program CyclesAnalyzer;

uses
  Vcl.Forms,
  u_Main in 'u_Main.pas' {frmMain},
  u_GetFolder in 'u_GetFolder.pas',
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10');
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
