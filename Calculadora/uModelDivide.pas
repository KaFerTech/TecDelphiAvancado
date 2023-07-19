unit uModelDivide;

interface

uses
  System.Classes, uInterfaceCalculadora, System.SysUtils;

type
  TModelDivide = class(TInterfacedObject, iCalculadora)
  public
    function getResultado(const pValores : array of integer) : String;
  end;

implementation

{ TModelDivide }

function TModelDivide.getResultado(const pValores: array of integer): String;
var
  vCount : integer;
  vResult : integer;
begin
  vCount := 0;
  vResult := pValores[0];
  for vCount := Low(pValores) + 1 to High(pValores) do
    vResult := vResult div pValores[vCount];

  Result := vResult.ToString;
end;

end.
