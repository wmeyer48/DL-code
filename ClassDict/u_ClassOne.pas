unit u_ClassOne;

interface

uses
  u_GuidAttr;

type
  [TGuidAttribute('{942D85C8-9475-4DC8-BEF0-D4DEA73D0C73}')]
  TClassOne = class(TObject)
  end;

procedure InitializeUnit;

implementation

uses
  u_ClassDict;

procedure InitializeUnit;
begin
  ClassDict.AddItem('tclassone', TClassOne);
  ClassDict.AddItem(GetGuidAttribute(TClassOne), TClassOne);
end;

end.

