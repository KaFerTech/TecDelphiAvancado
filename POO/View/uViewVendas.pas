unit uViewVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Datasnap.DBClient, unDmVendas,
  Vcl.DBCtrls, uItemVenda, Vcl.ComCtrls;

type
  TfrmVendas = class(TForm)
    gbDadosVenda: TGroupBox;
    gbProduto: TGroupBox;
    edtProduto: TEdit;
    gbVlrUni: TGroupBox;
    gbQtde: TGroupBox;
    edtVlrUni: TEdit;
    edtQtde: TEdit;
    dbgProdutos: TDBGrid;
    Panel1: TPanel;
    btnGerarVenda: TSpeedButton;
    btnAdicionarProduto: TSpeedButton;
    dsVendas: TDataSource;
    DBNavigator1: TDBNavigator;
    gbCliente: TGroupBox;
    edtNomeCliente: TEdit;
    gbTelefone: TGroupBox;
    edtTelefoneCliente: TEdit;
    gbDtNascimento: TGroupBox;
    btnExemplo: TButton;
    edtDataNascimentoCliente: TEdit;
    procedure btnAdicionarProdutoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnExemploClick(Sender: TObject);
  private
    { Private declarations }
    procedure validarItens;
    procedure AdicionarItem;
  public
    { Public declarations }
  end;

var
  frmVendas: TfrmVendas;

implementation

{$R *.dfm}

uses uCliente;

procedure TfrmVendas.btnAdicionarProdutoClick(Sender: TObject);
begin
  validarItens;
  AdicionarItem;

  btnGerarVenda.Enabled := dmVendas.cdsVendas.RecordCount > 0;
end;

procedure TfrmVendas.btnExemploClick(Sender: TObject);
var
  vCliente: TCliente;
begin
  vCliente := TCliente.Create;
  vCliente.NomeCliente := edtNomeCliente.Text;
  vCliente.Telefone := edtTelefoneCliente.Text;
  vCliente.DataNascimento := StrToDate(edtDataNascimentoCliente.Text);

  ShowMessage(vCliente.NomeCompleto);

end;

procedure TfrmVendas.FormCreate(Sender: TObject);
begin
  if not Assigned(dmVendas) then
    dmVendas := TdmVendas.Create(nil);
end;

procedure TfrmVendas.FormShow(Sender: TObject);
begin
  dmVendas.cdsVendas.Open;
end;

procedure TfrmVendas.validarItens;
begin
//  if trim(edtProduto.Text) = EmptyStr then
//  begin
//    ShowMessage('O campo Produto � obrigat�rio.');
//    edtProduto.SetFocus;
//    Abort;
//  end;
//
//  if StrToFloatDef(edtVlrUni.Text, 0) = 0 then
//  begin
//    ShowMessage('O campo Valor Unit�rio � obrigat�rio.');
//    edtVlrUni.SetFocus;
//    Abort;
//  end;
//
//  if StrToIntDef(edtQtde.Text, 0) = 0 then
//  begin
//    ShowMessage('O campo Qtde � obrigat�rio.');
//    edtQtde.SetFocus;
//    Abort;
//  end;

end;

procedure TfrmVendas.AdicionarItem;
var
  vItemVenda : TItemVenda;
begin
  vItemVenda := TItemVenda.Create;
  vItemVenda.NomeProduto := Trim(edtProduto.Text);
  vItemVenda.ValorUnitario := StrToCurrDef(edtVlrUni.Text, 0);
  vItemVenda.Qtde := StrToIntDef(edtQtde.Text, 1);

  dmVendas.cdsVendas.AppendRecord([vItemVenda.NomeProduto, vItemVenda.ValorUnitario, vItemVenda.Qtde, vItemVenda.ValorTotalItem]);


//  dmVendas.cdsVendas.AppendRecord([
//    edtProduto.Text,
//    StrToCurrDef(edtVlrUni.Text, 0),
//    StrToIntDef(edtQtde.Text, 1)
//    ]);

  // dmVendas.cdsVendas.Append;
  // dmVendas.cdsVendasProduto.AsString := edtProduto.Text;
  // dmVendas.cdsVendasValorUnitario.AsCurrency := StrToCurrDef(edtVlrUni.Text, 0);
  // dmVendas.cdsVendasQtde.AsInteger := StrToIntDef(edtQtde.Text, 1);
  // dmVendas.cdsVendas.post;

end;

end.
