unit uPessoa;

interface
  
uses
  uBaseClass, System.SysUtils;

type
  TPessoa = class(TBaseClass)
  private
    fNome: String;
    fEndereco: String;
    fDocumento: String;
    function getDocumento: String;
    function getEndereco: String;
    function getNome: String;
    procedure setDocumento(const Value: String);
    procedure setEndereco(const Value: String);
    procedure setNome(const Value: String);
  public
    property Nome: String read getNome write setNome;
    property Endereco: String read getEndereco write setEndereco;
    property Documento: String read getDocumento write setDocumento; 
    function DocumentoFormatado(const Documento : String) : String; virtual; abstract;
    function DadosCompletos : String; virtual; abstract;
  end;

implementation

{ TPessoa }

function TPessoa.getNome: String;
begin
  Result := fNome;
end;

function TPessoa.getDocumento: String;
begin
  Result := fDocumento;
end;

function TPessoa.getEndereco: String;
begin
  Result := fEndereco;
end;



procedure TPessoa.setDocumento(const Value: String);
begin
  fDocumento := Value;
end;

procedure TPessoa.setEndereco(const Value: String);
begin
if Value.Trim.IsEmpty then
    raise Exception.Create('O campo Endere�o � obrigat�rio');

  fEndereco := Value;
end;

procedure TPessoa.setNome(const Value: String);
begin
  ValidarValor((Length(Trim(Value))) < 5, 'O campo Nome � obrigat�rio');
  fNome := Value;
end;

end.
