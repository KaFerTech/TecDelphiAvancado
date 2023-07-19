unit uPessoaFisica;

interface

uses
  uPessoa, System.SysUtils, System.MaskUtils, uMascarasDocumento,
  System.Classes;

type
  TPessoaFisica = class(TPessoa)
  private
    fLista : TStringList;
    fCPF: string;
    function getCPF : String;
  public
    constructor Create;
    destructor Destroy; override;
    property CPF : string read getCPF;

    function DocumentoFormatado(const pDocumento : string) : string; override;
    function DadosCompletos : string; override;
  end;

implementation

constructor TPessoaFisica.Create;
begin
  fLista := TStringList.Create;
end;

//constructor TPessoaFisica.Create;
//begin
//  Documento := TStringList;
//end;

//constructor TPessoaFisica.Create(pCPF: string);
//begin
//  fCPF := pCPF;
//end;

function TPessoaFisica.DadosCompletos: string;
begin
  Result := sLineBreak +
            'Nome da pessoa física: ' + Nome + sLineBreak +
            'CPF: ' + CPF + sLineBreak +
            'Endereço: ' + Endereco;
end;

destructor TPessoaFisica.Destroy;
begin
  setNilObjeto(fLista);

  inherited;
end;

function TPessoaFisica.DocumentoFormatado(const pDocumento : string): string;
begin
  Result := FormatMaskText(C_MascaraCPF, pDocumento);
end;

function TPessoaFisica.getCPF: String;
begin
  ValidarValor(Documento.Trim.Length <> 11, 'CPF inválido.');

  fCPF := DocumentoFormatado(Documento);

  Result := fCPF
end;

end.

