unit uControllerPessoa;

interface

uses
  uPessoaFisica,
  uPessoaJuridica;

type
  TControllerPessoa = class // Controller Factory - abstract factory
  private
    fPessoaFisica : TPessoaFisica;
    fPessoaJuridica : TPessoaJuridica;
    function getPessoaFisica: TPessoaFisica;
    function getPessoaJuridica: TPessoaJuridica;
  public
    destructor Destroy; override;
    property PessoaFisica : TPessoaFisica read getPessoaFisica;
    property PessoaJuridica : TPessoaJuridica read getPessoaJuridica;
  end;

implementation

{ TControllerPessoa }

destructor TControllerPessoa.Destroy;
begin
  fPessoaFisica.setNilObjeto(fPessoaFisica);
  fPessoaJuridica.setNilObjeto(fPessoaJuridica);
end;

function TControllerPessoa.getPessoaFisica: TPessoaFisica;
begin
  if fPessoaFisica = nil then
    fPessoaFisica := TPessoaFisica.Create;

    Result := fPessoaFisica;
end;

function TControllerPessoa.getPessoaJuridica: TPessoaJuridica;
begin
  if fPessoaJuridica = nil then
    fPessoaJuridica := TPessoaJuridica.Create;

  Result := fPessoaJuridica;
end;

end.
