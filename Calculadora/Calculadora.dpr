program Calculadora;

uses
  Vcl.Forms,
  uViewCalculadora in 'uViewCalculadora.pas' {frmCalculadora},
  uInterfaceCalculadora in 'uInterfaceCalculadora.pas',
  uModelSoma in 'uModelSoma.pas',
  uModelSubtrai in 'uModelSubtrai.pas',
  uModelMultiplica in 'uModelMultiplica.pas',
  uModelDivide in 'uModelDivide.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCalculadora, frmCalculadora);
  Application.Run;
end.
