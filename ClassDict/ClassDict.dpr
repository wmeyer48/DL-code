program ClassDict;

uses
  Vcl.Forms,
  f_Main in 'f_Main.pas' {Form1},
  u_ClassOne in 'u_ClassOne.pas',
  u_ClassTwo in 'u_ClassTwo.pas',
  u_ClassThree in 'u_ClassThree.pas',
  u_ClassDict in 'u_ClassDict.pas',
  u_GuidAttr in 'u_GuidAttr.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
