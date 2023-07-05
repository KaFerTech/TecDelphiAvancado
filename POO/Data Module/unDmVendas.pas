unit unDmVendas;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient;

type
  TdmVendas = class(TDataModule)
    cdsVendas: TClientDataSet;
    cdsVendasProduto: TStringField;
    cdsVendasValorUnitario: TCurrencyField;
    cdsVendasQtde: TIntegerField;
    cdsVendasValorTotalItem: TCurrencyField;
    procedure cdsVendasBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmVendas: TdmVendas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmVendas.cdsVendasBeforePost(DataSet: TDataSet);
begin
//  cdsVendasValorTotalItem.AsCurrency := cdsVendasQtde.AsInteger * cdsVendasValorUnitario.AsCurrency;
end;

end.
