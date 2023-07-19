unit uViewPOOExemplo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCliente, Vcl.StdCtrls;

type
  TViewPOOExemplo = class(TForm)
    btnExemplo: TButton;
    procedure btnExemploClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewPOOExemplo: TViewPOOExemplo;

implementation

{$R *.dfm}

procedure TViewPOOExemplo.btnExemploClick(Sender: TObject);
var
  vCliente: TCliente;
begin
  vCliente := TCliente.Create;
  vCliente.NomeCliente := '  ';
  vCliente.Telefone := '41 9 9999 5567';
  vCliente.DataNascimento := Now;

  ShowMessage(vCliente.NomeCompleto);
end;

end.
