unit f_Folders2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Types, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, RzLstBox, RzLabel, Vcl.Buttons, RzButton;

type
  TfFolders = class(TForm)
    dlgOpen: TFileOpenDialog;
    lblPath: TRzLabel;
    lbFilePath: TRzListBox;
    btnAddfolder: TSpeedButton;
    btnCancel: TRzButton;
    btnOK: TRzButton;
    procedure btnAddfolderClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    function GetFolders: TStringDynArray;
    { Private declarations }
  public
    property Folders: TStringDynArray read GetFolders;
  end;

var
  fFolders: TfFolders;

implementation

{$R *.dfm}

procedure TfFolders.btnAddfolderClick(Sender: TObject);
var
  fn: string;
begin
  if dlgOpen.Execute then
    if dlgOpen.Files.Count > 0 then
    begin
      for fn in dlgOpen.Files do
      begin
        if DirectoryExists(fn) then
          lbFilePath.Add(fn);
      end;
    end;
end;

procedure TfFolders.btnCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfFolders.btnOKClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

function TfFolders.GetFolders: TStringDynArray;
var
  s, ss: string;
begin
  SetLength(Result, 0);
  for s in lbFilePath.Items do
  begin
    ss := s;
    if ss.Contains(' ') then
      ss := '"' + ss + '"';
    SetLength(Result, Length(Result) + 1);
    Result[Length(Result) - 1] := ss;
  end;
end;

end.
