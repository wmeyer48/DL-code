unit u_GuidAttr;

interface

uses
  System.TypInfo;

type
  TGuidAttribute = class(TCustomAttribute)
  public
    FValue: String;

    constructor Create(const AValue: String);
  end;

function GetGuidAttribute(AType: TClass): string;

implementation

uses
  System.Rtti;

constructor TGuidAttribute.Create(const AValue: String);
begin
  inherited Create;
  FValue := AValue;
end;

function GetGuidAttribute(AType: TClass): string;
var
  LContext: TRttiContext;
  LType: TRttiType;
  LAttr: TCustomAttribute;
begin
  { Create a new Rtti context }
  LContext := TRttiContext.Create;

  { Extract type information for TSomeType type }
  LType := LContext.GetType(AType);

  { Search for the custom attribute and do some custom processing }
  for LAttr in LType.GetAttributes() do
    if LAttr is TGuidAttribute then
      Result := TGuidAttribute(LAttr).FValue;

  { Destroy the context }
  LContext.Free;
end;

end.

