unit uModelSoma;

interface

uses
  System.Classes, uInterfaceCalculadora, System.SysUtils;

type
  TModelSoma = class(TInterfacedObject, iCalculadora)
  public
    function getResultado(const pValores : array of integer) : String;
  end;

implementation

{ TModelSoma }


function TModelSoma.getResultado(const pValores: array of integer): String;
var
  vCount : integer;
  vResult : integer;
begin
  vCount := 0;
  vResult := pValores[0];
  for vCount := Low(pValores) + 1 to High(pValores) do
    vResult := vResult + pValores[vCount];

  Result := vResult.ToString;
end;

end.
