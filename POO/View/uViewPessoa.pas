unit uViewPessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls,
  uPessoaFisica, uPessoaJuridica;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPessoa: TfrmPessoa;

implementation

{$R *.dfm}

procedure TfrmPessoa.btnNomeCompletoClick(Sender: TObject);
var
  vPessoaFisica : TPessoaFisica;
  vPessoaJuridica : TPessoaJuridica;
begin

  case rdgTipo.ItemIndex of
    0 :
    begin
      vPessoaFisica := TPessoaFisica.Create;
      vPessoaFisica.Nome := edtNome.Text;
      vPessoaFisica.Documento := edtDocumento.Text;

      ShowMessage(vPessoaFisica.DadosCompletos);
    end;

    1:
    begin
      vPessoaJuridica := TPessoaJuridica.Create;
      vPessoaJuridica.Nome := edtNome.Text;
      vPessoaJuridica.Documento := edtDocumento.Text;

      ShowMessage(vPessoaJuridica.DadosCompletos);
    end;

  end;

end;

end.
