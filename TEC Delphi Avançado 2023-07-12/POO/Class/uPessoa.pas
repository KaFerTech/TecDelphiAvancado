unit uPessoa;

interface

uses
  uBaseClass, System.SysUtils;

type
  TPessoa = class(TBaseClass)
  private
    FDocumento: string;
    FNome: string;
    procedure SetDocumento(const Value: string);
    procedure SetNome(const Value: string);
  public
    property Nome      : string read FNome write SetNome;
    property Documento : string read FDocumento write SetDocumento;

    function DocumentoFormatado(const pDocumento : string) : string; virtual; abstract;
    function DadosCompletos : string; virtual; abstract;
  end;

implementation

{ TPessoa }

procedure TPessoa.SetDocumento(const Value: string);
begin
  FDocumento := Value;
end;

procedure TPessoa.SetNome(const Value : string);
begin
  ValidarValor(Length(Trim(Value)) < 5, 'O campo Nome é obrigatório!');

  FNome := Value;
end;

end.
