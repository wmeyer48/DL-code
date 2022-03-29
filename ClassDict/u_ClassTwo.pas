unit u_ClassTwo;

interface

uses
  u_GuidAttr;

type
  [TGuidAttribute('{D93D97C7-27D4-4BE0-83E4-4D3741F298BF}')]
  TClassTwo = class(TObject)
  end;

procedure InitializeUnit;

implementation

uses
  u_ClassDict;

procedure InitializeUnit;
begin
  ClassDict.AddItem('tclasstwo', TClassTwo);
  ClassDict.AddItem(GetGuidAttribute(TClassTwo), TClassTwo);
end;

end.
