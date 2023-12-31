unit uPessoaJuridica;

interface

uses
  uPessoa, System.SysUtils, System.MaskUtils, uMascarasDocumento;

type
  TPessoaJuridica = class(TPessoa)
  private
    fCNPJ: string;

    function getCNPJ: string;
  public
    property CNPJ : string read getCNPJ;

    function DocumentoFormatado(const pDocumento : string) : string; override;
    function DadosCompletos : string; override;
  end;

implementation

function TPessoaJuridica.DadosCompletos: string;
begin
  Result := 'Nome da empresa: ' + Nome + ' - ' + CNPJ;
end;

function TPessoaJuridica.DocumentoFormatado(const pDocumento : string): string;
begin
  Result := FormatMaskText(C_MascaraCNPJ, pDocumento);
end;

function TPessoaJuridica.getCNPJ: string;
begin
  ValidarValor(Documento.Trim.Length <> 14, 'CNPJ inv�lido.');
  fCNPJ := DocumentoFormatado(Documento);

  Result := fCNPJ;
end;

end.
