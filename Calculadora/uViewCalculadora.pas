unit uViewCalculadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,

  uInterfaceCalculadora,
  uModelSoma,
  uModelSubtrai,
  uModelDivide,
  uModelMultiplica
  ;

type
  TfrmCalculadora = class(TForm)
    btnSomar: TButton;
    btnSubtrair: TButton;
    btnDividir: TButton;
    btnMultiplicar: TButton;
    procedure btnSomarClick(Sender: TObject);
    procedure btnSubtrairClick(Sender: TObject);
    procedure btnDividirClick(Sender: TObject);
    procedure btnMultiplicarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCalculadora: TfrmCalculadora;

implementation

{$R *.dfm}

procedure TfrmCalculadora.btnDividirClick(Sender: TObject);
var
  vCalculadora : iCalculadora;
begin
  vCalculadora := TModelDivide.Create;
  ShowMessage(vCalculadora.getResultado([20,2,2])); // 5
end;

procedure TfrmCalculadora.btnMultiplicarClick(Sender: TObject);
var
  vCalculadora : iCalculadora;
begin
  vCalculadora := TModelMultiplica.Create;
  ShowMessage(vCalculadora.getResultado([10,2,3])); // 3000
end;

procedure TfrmCalculadora.btnSomarClick(Sender: TObject);
var
  vCalculadora : iCalculadora;
begin
  vCalculadora := TModelSoma.Create;
  ShowMessage(vCalculadora.getResultado([10,15,3])); // 28
end;

procedure TfrmCalculadora.btnSubtrairClick(Sender: TObject);
var
  vCalculadora : iCalculadora;
begin
  vCalculadora := TModelSubtrai.Create;
  ShowMessage(vCalculadora.getResultado([10,7,1])); // 2
end;

end.
