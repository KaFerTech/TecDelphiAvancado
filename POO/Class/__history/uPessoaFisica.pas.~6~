unit uPessoaFisica;

interface

uses
  uPessoa, System.SysUtils, System.MaskUtils, uMascarasDocumento;

type
  TPessoaFisica = class(TPessoa)
  private
    FCPF : String;
    function getCPF: String;
    procedure SetCPF(const Value: String);


  public
    property CPF : String read getCPF write SetCPF;
    function DocumentoFormatado(const pDocumento : String) : string; override;
    function DadosCompletos() : string; override;
  end;

implementation

{ TPessoaFisica }

function TPessoaFisica.DadosCompletos: string;
begin
  Result := 'Nome da Pessoa: ' + Nome + sLineBreak +
            'Endereço: ' + Endereco + sLineBreak +
            'Documento: ' + FCPF;
end;

function TPessoaFisica.DocumentoFormatado(const pDocumento): string;
begin
  Result := FormatMaskText(C_MascaraCPF, pDocumento);
end;

function TPessoaFisica.getCPF: String;
begin
  Result := FCPF;
end;

procedure TPessoaFisica.SetCPF(const Value: String);
begin
  ValidarValor(Length(Trim(Value)) <> 11, 'CPF Inválido.');

  FCPF := Value;
end;

end.
