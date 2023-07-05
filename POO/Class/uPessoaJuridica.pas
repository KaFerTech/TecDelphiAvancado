unit uPessoaJuridica;

interface

uses
  uPessoa, System.SysUtils, System.MaskUtils, uMascarasDocumento;

type
  TPessoaJuridica = class(TPessoa)
  private
    FCNPJ : String;
    function getCNPJ: String;
    procedure SetCNPJ(const Value: String);

  public
    property CNPJ : String read getCNPJ write SetCNPJ;
    function DocumentoFormatado(const pDocumento : String) : string; override;
    function DadosCompletos() : string; override;
  end;

implementation

{ TPessoaJuridica }

function TPessoaJuridica.DadosCompletos: string;
begin
  Result := 'Nome da Empresa: ' + Nome + sLineBreak +
            'Endereço: ' + Endereco + sLineBreak +
            'Documento: ' + FCNPJ;
end;

function TPessoaJuridica.DocumentoFormatado(const pDocumento : String): string;
begin
  Result := FormatMaskText(C_MascaraCNPJ, pDocumento);
end;

function TPessoaJuridica.getCNPJ: String;
begin
  Result := FCNPJ;
end;

procedure TPessoaJuridica.setCNPJ(const Value: String);
begin
  ValidarValor(Length(Trim(Value)) <> 14, 'CNPJ Inválido.');

  FCNPJ := Value;
end;

end.
