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
//    constructor Create; Overload;
//    constructor Create(pCPF : string); Overload;

//    constructor Create;
//
//    destructor Destroy; override;

    property CPF : string read getCPF;

    function DocumentoFormatado(const pDocumento : string) : string; override;
    function DadosCompletos : string; override;
  end;

implementation

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
  Result := 'Nome da pessoa f�sica: ' + Nome + ' - ' + CPF;
end;


function TPessoaFisica.DocumentoFormatado(const pDocumento : string): string;
begin
  Result := FormatMaskText(C_MascaraCPF, pDocumento);
end;

function TPessoaFisica.getCPF: String;
begin
  ValidarValor(Documento.Trim.Length <> 11, 'CPF inv�lido.');

  fCPF := DocumentoFormatado(Documento);

  Result := fCPF
end;

end.

