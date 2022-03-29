unit u_ClassDict;

interface

uses
  System.Generics.Collections;

type
  TClassDict = class(TObject)
  private
    FDictionary: TDictionary<string, TClass>;
  public
    constructor Create;
    destructor Destroy; override;
    procedure AddItem(const AKey: string; AItem: TClass);
    function FoundItem(const AKey: string): Boolean;
    function GetClass(const AKey: string): TClass;
    function GetClassName(const AKey: string): string;
  end;

var
  ClassDict: TClassDict;

procedure InitializeUnit;
procedure FinalizeUnit;

implementation

constructor TClassDict.Create;
begin
  inherited;
  FDictionary := TDictionary<string, TClass>.Create;
end;

destructor TClassDict.Destroy;
begin
  FDictionary.Free;

  inherited;
end;

procedure TClassDict.AddItem(const AKey: string; AItem: TClass);
var
  obj: TClass;
begin
  if not FDictionary.TryGetValue(AKey, obj) then
    FDictionary.AddOrSetValue(AKey, AItem);
end;

function TClassDict.FoundItem(const AKey: string): Boolean;
begin
  Result := FDictionary.ContainsKey(AKey);
end;

function TClassDict.GetClass(const AKey: string): TClass;
var
  obj: TClass;
begin
  Result := nil;
  if FDictionary.TryGetValue(AKey, obj) then
    Result := obj;
end;

function TClassDict.GetClassName(const AKey: string): string;
var
  obj: TClass;
begin
  obj := GetClass(AKey);
  Result := obj.ClassName;
end;

procedure InitializeUnit;
begin
  ClassDict := TClassDict.Create;
end;

procedure FinalizeUnit;
begin
  ClassDict.Free;
end;

end.
