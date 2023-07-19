program Prj_Vendas;

uses
  Vcl.Forms,
  uViewVendas in '..\View\uViewVendas.pas' {ViewVendas},
  udmVendas in '..\Data Module\udmVendas.pas' {dmVendas: TDataModule},
  uCliente in '..\Class\uCliente.pas',
  uViewPOOExemplo in '..\View\uViewPOOExemplo.pas' {ViewPOOExemplo},
  uItemVenda in '..\Class\uItemVenda.pas',
  uBaseClass in '..\Class\uBaseClass.pas',
  uPessoa in '..\Class\uPessoa.pas',
  uPessoaFisica in '..\Class\uPessoaFisica.pas',
  uPessoaJuridica in '..\Class\uPessoaJuridica.pas',
  uMascarasDocumento in '..\Class\uMascarasDocumento.pas',
  uViewPessoa in '..\View\uViewPessoa.pas' {ViewPessoa},
  uBibliotecaFuncoes in '..\Class\uBibliotecaFuncoes.pas',
  uProduto in '..\Class\uProduto.pas',
  uProduto2 in '..\Class\uProduto2.pas',
  uViewClassesAmigas in '..\View\uViewClassesAmigas.pas' {ViewClassesAmigas};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewPessoa, ViewPessoa);
  Application.CreateForm(TViewClassesAmigas, ViewClassesAmigas);
  Application.Run;
end.
