unit u_ClassThree;

interface

uses
  u_GuidAttr;

type
  [TGuidAttribute('{B651C821-E847-45D3-B495-24FCE166BC40}')]
  TClassThree = class(TObject)
  end;

procedure InitializeUnit;

implementation

uses
  System.SysUtils, u_ClassDict;

procedure InitializeUnit;
begin
//  ClassDict.AddItem('tclassthree', TClassThree);
  ClassDict.AddItem(TClassThree.ClassName.ToLower, TClassThree);
  ClassDict.AddItem(GetGuidAttribute(TClassThree), TClassThree);
end;

end.
