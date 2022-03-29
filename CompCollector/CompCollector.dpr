program CompCollector;

uses
  Vcl.Forms,
  f_Main in 'f_Main.pas' {fMain},
  d_Main in 'd_Main.pas' {dMain: TDataModule},
  Vcl.Themes,
  Vcl.Styles,
  f_Folders2 in 'f_Folders2.pas' {fFolders};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Cyan Dusk');
  Application.CreateForm(TfMain, fMain);
  Application.Run;
end.
