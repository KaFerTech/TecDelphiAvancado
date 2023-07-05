program Prj_Vendas;

uses
  Vcl.Forms,
  uViewVendas in '..\View\uViewVendas.pas' {frmVendas},
  unDmVendas in '..\Data Module\unDmVendas.pas' {dmVendas: TDataModule},
  uCliente in '..\Class\uCliente.pas',
  uItensVenda in '..\Class\uItensVenda.pas',
  uBaseClass in '..\Class\uBaseClass.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmVendas, frmVendas);
  Application.Run;
end.
