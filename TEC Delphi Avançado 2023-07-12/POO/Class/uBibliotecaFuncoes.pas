unit uBibliotecaFuncoes;

interface

uses
  SysUtils;

type
 TUtils = class
   class function getNumeros(const pString : string) : string;
 end;

implementation


{ TUtils }

class function TUtils.getNumeros(const pString : string): string;
var
  vCount   : Integer;
  vTamanho : Integer;
  vStr     : string;
  vResult  : string;
begin
  vTamanho := pString.Trim.Length;

  for vCount := 0 to vTamanho do
  begin
    vStr := pString[vCount];

    if StrToIntDef(vStr, -1) > -1 then
      vResult := vResult + vStr;
  end;

  Result := vResult;
end;

end.
