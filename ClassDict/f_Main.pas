unit f_Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btnTest: TButton;
    lbLog: TListBox;
    procedure btnTestClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  u_ClassDict, u_ClassOne, u_ClassTwo, u_ClassThree;

procedure TForm1.btnTestClick(Sender: TObject);
begin
  lbLog.Clear;
  if ClassDict.FoundItem('tclassone') then
    lbLog.Items.Add('Found TClassOne by Name');
  if ClassDict.FoundItem('{942D85C8-9475-4DC8-BEF0-D4DEA73D0C73}') then
    lbLog.Items.Add('Found TClassOne by Guid');
  if ClassDict.FoundItem('tclasstwo') then
    lbLog.Items.Add('Found ' + ClassDict.GetClassName('tclasstwo') + ' by Name');
  if ClassDict.FoundItem('{D93D97C7-27D4-4BE0-83E4-4D3741F298BF}') then
    lbLog.Items.Add('Found ' + ClassDict.GetClassName('{D93D97C7-27D4-4BE0-83E4-4D3741F298BF}') + ' by Guid');
  if ClassDict.FoundItem('tclassthree') then
    lbLog.Items.Add('Found ' + ClassDict.GetClassName('tclassthree') + ' by Name');
  if ClassDict.FoundItem('{B651C821-E847-45D3-B495-24FCE166BC40}') then
    lbLog.Items.Add('Found ' + ClassDict.GetClassName('{B651C821-E847-45D3-B495-24FCE166BC40}') + ' by Guid');
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  u_ClassDict.FinalizeUnit;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  u_ClassDict.InitializeUnit;
  u_ClassOne.InitializeUnit;
  u_ClassTwo.InitializeUnit;
  u_ClassThree.InitializeUnit;
end;

end.
