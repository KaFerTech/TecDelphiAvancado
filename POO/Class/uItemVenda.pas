unit uItemVenda;

interface

uses
  System.SysUtils, uBaseClass;

type
  TItemVenda = class(TBaseClass)
  private
    FValorTotalItem: Currency;
    FQtde: Integer;
    FNomeProduto: string;
    FValorUnitario: Currency;
    procedure SetNomeProduto(const Value: string);
    procedure SetQtde(const Value: Integer);
    procedure SetValorUnitario(const Value: Currency);
    function getValorTotalItem: Currency;
  public
    property NomeProduto : string read FNomeProduto write SetNomeProduto;
    property ValorUnitario : Currency read FValorUnitario write SetValorUnitario;
    property Qtde : Integer read FQtde write SetQtde;

    property ValorTotalItem : Currency read getValorTotalItem;
  end;

implementation

{ TItemVenda }

function TItemVenda.getValorTotalItem: Currency;
begin
  Result := FQtde * FValorUnitario;
end;

procedure TItemVenda.SetNomeProduto(const Value : string);
begin
  ValidarValor(Value, 'O campo Produto é obrigatório!');

  FNomeProduto := Value;
end;

procedure TItemVenda.SetQtde(const Value: Integer);
begin
  ValidarValor(Value, 'O campo Quantidade é obrigatório!');

  FQtde := Value;
end;

procedure TItemVenda.SetValorUnitario(const Value: Currency);
begin
  ValidarValor(Value, 'O campo Valor Unitário é obrigatório!');

  FValorUnitario := Value;
end;

end.

