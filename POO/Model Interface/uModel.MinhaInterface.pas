unit uModel.MinhaInterface;

interface

uses
  uInterfaces.MinhaInterface, System.Classes;

  //TInterfacedObject -> ARC = contador automatico de referencia

type
  TModelMinhaInterface = class(TInterfacedObject, iMinhaInterface)
  private
    fLista : TStringList;
  public
    constructor Create;
    destructor Destroy; override;

    procedure setFazerAlgo;
    function getRetornarAlgo : string;
  end;

implementation

uses
  System.SysUtils;

{ TModelMinhaInterface }

constructor TModelMinhaInterface.Create;
begin
  fLista := TStringList.Create;
end;

destructor TModelMinhaInterface.Destroy;
begin
  FreeAndNil(fLista);
end;

function TModelMinhaInterface.getRetornarAlgo: string;
begin
  Result := 'Implementação da interface';
end;

procedure TModelMinhaInterface.setFazerAlgo;
begin
  fLista.Add('Implementação da interface - 2');
end;

end.
