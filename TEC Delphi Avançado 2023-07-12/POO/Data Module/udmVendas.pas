unit udmVendas;

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

end.
