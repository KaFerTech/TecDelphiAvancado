unit uViewPessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls,

  uBibliotecaFuncoes,
  uControllerPessoa;

  //  uPessoaFisica, uPessoaJuridica,

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
    GroupBox3: TGroupBox;
    edtEndereco: TEdit;
    procedure btnNomeCompletoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnFormatarDocumentoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
//    fPessoaFisica : TPessoaFisica;
//    fPessoaJuridica : TPessoaJuridica;
  fControllerPessoa : TControllerPessoa;
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
      ShowMessage(fControllerPessoa.PessoaFisica.CPF);
    end;
    1 :
    begin
      setDadosPessoaJuridica;
      ShowMessage(fControllerPessoa.PessoaJuridica.CNPJ);
    end;
  end;

end;

procedure TfrmPessoa.setDadosPessoaFisica;
begin
  fControllerPessoa.PessoaFisica.Nome := edtNome.Text;
  fControllerPessoa.PessoaFisica.Documento := TUtils.getNumeros(edtDocumento.Text);
  fControllerPessoa.PessoaFisica.Endereco := edtEndereco.Text;
end;

procedure TfrmPessoa.setDadosPessoaJuridica;
begin
  fControllerPessoa.PessoaJuridica.Nome := edtNome.Text;
  fControllerPessoa.PessoaJuridica.Documento := TUtils.getNumeros(edtDocumento.Text);
  fControllerPessoa.PessoaJuridica.Endereco := edtEndereco.Text;
end;

procedure TfrmPessoa.btnNomeCompletoClick(Sender: TObject);

begin

  case rdgTipo.ItemIndex of
    0 :
    begin
      setDadosPessoaFisica;

      ShowMessage(fControllerPessoa.PessoaFisica.DadosCompletos);
    end;

    1:
    begin
      setDadosPessoaJuridica;

      ShowMessage(fControllerPessoa.PessoaJuridica.DadosCompletos);
    end;

  end;


end;

procedure TfrmPessoa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //FreeAndNil(fPessoaFisica);
//  FreeAndNil(fPessoaJuridica);

  FreeandNil(fControllerPessoa);
end;

procedure TfrmPessoa.FormCreate(Sender: TObject);
begin
//  fPessoaFisica := TPessoaFisica.Create;
//  fPessoaJuridica := TPessoaJuridica.Create;

  fControllerPessoa := TControllerPessoa.Create;
end;

end.
