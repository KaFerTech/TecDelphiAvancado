unit uViewPessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls,
  uPessoaFisica, uPessoaJuridica, uBibliotecaFuncoes;

type
  TfrmPessoa = class(TForm)
    rdgTipo: TRadioGroup;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    edtNome: TEdit;
    edtDocumento: TEdit;
    Panel1: TPanel;
    btnFormatarDocumento: TSpeedButton;
    btnNomeCompleto: TSpeedButton;
    procedure btnNomeCompletoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnFormatarDocumentoClick(Sender: TObject);
  private
    fPessoaFisica : TPessoaFisica;
    fPessoaJuridica : TPessoaJuridica;
    procedure setDadosPessoaFisica;
    procedure setDadosPessoaJuridica;
  public
    { Public declarations }
  end;

var
  frmPessoa: TfrmPessoa;

implementation

{$R *.dfm}

procedure TfrmPessoa.btnFormatarDocumentoClick(Sender: TObject);
begin
  case rdgTipo.ItemIndex of
    0 :
    begin
      setDadosPessoaFisica;
      ShowMessage(fPessoaFisica.CPF);
    end;
    1 :
    begin
      setDadosPessoaJuridica;
      ShowMessage(fPessoaJuridica.CNPJ);
    end;
  end;

end;

procedure TfrmPessoa.setDadosPessoaFisica;
begin
  fPessoaFisica.Nome := edtNome.Text;
  fPessoaFisica.Documento := TUtils.getNumeros(edtDocumento.Text);
end;

procedure TfrmPessoa.setDadosPessoaJuridica;
begin
  fPessoaJuridica.Nome := edtNome.Text;
  fPessoaJuridica.Documento := TUtils.getNumeros(edtDocumento.Text);
end;

procedure TfrmPessoa.btnNomeCompletoClick(Sender: TObject);

begin

  case rdgTipo.ItemIndex of
    0 :
    begin
      setDadosPessoaFisica;

      ShowMessage(fPessoaFisica.DadosCompletos);
    end;

    1:
    begin
      setDadosPessoaJuridica;

      ShowMessage(fPessoaJuridica.DadosCompletos);
    end;

  end;


end;

procedure TfrmPessoa.FormCreate(Sender: TObject);
begin
//  fPessoaFisica := TPessoaFisica.Create;
//  fPessoaFisica := TPessoaFisica.Create('456');
  fPessoaJuridica := TPessoaJuridica.Create;
end;

end.
