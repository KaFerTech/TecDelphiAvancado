unit uCliente;

interface

uses
  System.SysUtils;

type
  TCliente = class
  private
    fNomeCliente : string;
    fTelefone : string;
    fDataNascimento : TDate;
    procedure SetDataNascimento(const Value: TDate);
    procedure SetNomeCliente(const Value: string);
    procedure SetTelefone(const Value: string);
    function getDataNascimento: TDate;
    function getNomeCliente: string;
    function getTelefone: string;
    function getNomeCompleto: string;
  public
    property NomeCliente    : string read getNomeCliente write SetNomeCliente;
    property Telefone       : string read getTelefone write SetTelefone;
    property DataNascimento : TDate read getDataNascimento write SetDataNascimento;
    property NomeCompleto : string read getNomeCompleto;
  end;

implementation

{ TCliente }

function TCliente.getDataNascimento: TDate;
begin
  Result := fDataNascimento;
end;

function TCliente.getNomeCliente: string;
begin
  Result := fNomeCliente;
end;

function TCliente.getNomeCompleto: string;
begin
  Result := 'Nome do Cliente: ' + fNomeCliente + sLineBreak +
            'Telefone do Cliente: ' + fTelefone + sLineBreak +
            'Data de Nascimento: ' + DateToStr(fDataNascimento);
end;

function TCliente.getTelefone: string;
begin
  Result := fTelefone;
end;

procedure TCliente.SetDataNascimento(const Value: TDate);
begin
  if Value <= 0 then
    raise Exception.Create('O campo Data de Nascimento é obrigatório!');
  FDataNascimento := Value;
end;

procedure TCliente.SetNomeCliente(const Value: string);
begin
  if Value.Trim.IsEmpty then
    raise Exception.Create('O campo Nome do Cliente é obrigatório!');

  FNomeCliente := Value;
end;

procedure TCliente.SetTelefone(const Value: string);
begin
  if Value.Trim.IsEmpty then
    raise Exception.Create('O campo Telefone é obrigatório!');
  FTelefone := Value;
end;

end.
