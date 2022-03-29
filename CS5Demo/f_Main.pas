unit f_Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TForm1 = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TestRec = record
    ID: Integer;
    Name: string;
  end;

var
  trOne, trTwo: TestRec;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  CodeSiteLogging;

procedure TForm1.FormCreate(Sender: TObject);
var
  sl: TStringList;
begin
  trOne.ID := 1;
  trTwo.ID := 2;
  trOne.Name := 'One Test';
  trTwo.Name := 'Two Test';

  CodeSite.Send('Simple Test', trOne.ID);
  CodeSite.Send('Simple Test', trOne.Name);

  sl := TStringList.Create;
  try
    sl.CommaText := 'One,Two,Three';
    CodeSite.Send('List contains: ', sl.CommaText);
  finally
    sl.Free;
  end;
end;

end.
