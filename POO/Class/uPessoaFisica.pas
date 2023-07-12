unit uPessoaFisica;

interface

uses
  uPessoa, System.SysUtils, System.MaskUtils, uMascarasDocumento;

type
  TPessoaFisica = class(TPessoa)
  private
    FCPF: string;
    procedure SetCPF(const Value: string);
  public
    property CPF : string read FCPF write SetCPF;

    function DocumentoFormatado(const pDocumento : string) : string; override;
    function DadosCompletos : string; override;
  end;

implementation

function TPessoaFisica.DadosCompletos: string;
begin
  ValidarValor(Length(Trim(Documento)) <> 11, 'CPF inv�lido.');
  Result := 'Nome da pessoa f�sica: ' + Nome + ' - ' + DocumentoFormatado(Documento);
end;

function TPessoaFisica.DocumentoFormatado(const pDocumento : string): string;
begin
  Result := FormatMaskText(C_MascaraCPF, pDocumento);
end;

procedure TPessoaFisica.SetCPF(const Value: string);
begin
  ValidarValor(Length(Trim(Value)) <> 11, 'CPF inv�lido.');

  FCPF := Value;
end;

end.

