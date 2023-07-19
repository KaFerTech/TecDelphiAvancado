unit uViewVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, udmVendas, uItemVenda;

type
  TViewVendas = class(TForm)
    pnlBotoes: TPanel;
    btnGerarVenda: TSpeedButton;
    gbxDadosVenda: TGroupBox;
    lblProduto: TLabel;
    edtProduto: TEdit;
    lblValorUnitario: TLabel;
    edtValorUnitario: TEdit;
    lblQtde: TLabel;
    edtQtde: TEdit;
    dbhVendas: TDBGrid;
    btnAdicionarItem: TSpeedButton;
    dtsVendas: TDataSource;
    procedure btnAdicionarItemClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    fdmVendas : TdmVendas;
    procedure adicionarItem;
  end;

var
  ViewVendas: TViewVendas;

implementation

{$R *.dfm}

{ TForm1 }

procedure TViewVendas.FormCreate(Sender: TObject);
begin
  fdmVendas := TdmVendas.Create(Self);
end;

procedure TViewVendas.btnAdicionarItemClick(Sender: TObject);
begin
  adicionarItem;

  btnGerarVenda.Enabled := not fdmVendas.cdsVendas.IsEmpty;
end;

procedure TViewVendas.adicionarItem;
var
  vItemVenda: TItemVenda;
begin
  vItemVenda := TItemVenda.Create;
  vItemVenda.NomeProduto := Trim(edtProduto.Text);
  vItemVenda.ValorUnitário := StrToFloatDef(edtValorUnitario.Text, 0);
  vItemVenda.Qtde := StrToIntDef(edtQtde.Text, 1);

  fdmVendas.cdsVendas.AppendRecord(
                                   [
                                    vItemVenda.NomeProduto,
                                    vItemVenda.ValorUnitário,
                                    vItemVenda.Qtde,
                                    vItemVenda.ValorTotalItem
                                   ]
                                  );
end;

end.
