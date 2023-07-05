unit uBaseClass;

interface

uses
  System.SysUtils;

type
  TBaseClass = class
  protected
    procedure ValidarValor(const pValor, pMensagem : String); overload;
    procedure ValidarValor(const pValor : Integer; const pMensagem : String); overload;
    procedure ValidarValor(const pValor : Currency; const pMensagem : String); overload;
    procedure ValidarValor(const pCondicao : boolean; const pMensagem : String); overload;
  end;

implementation

{ TBaseClass }

procedure TBaseClass.ValidarValor(const pValor, pMensagem: String);
begin

  //Validador para debug
  Assert(not pValor.Trim.IsEmpty, pMensagem);

//  if pValor.Trim.IsEmpty then
//    raise Exception.Create(pMensagem);
end;

procedure TBaseClass.ValidarValor(const pValor: Integer; const pMensagem: String);
begin

//  Assert(pValor >= 1, pMensagem);

  if pValor < 1 then
    raise Exception.Create(pMensagem);
end;

procedure TBaseClass.ValidarValor(const pValor: Currency; const pMensagem: String);
begin

//  Assert(pValor > 0, pMensagem);

  if pValor <= 0 then
    raise Exception.Create(pMensagem);
end;

procedure TBaseClass.ValidarValor(const pCondicao: boolean; const pMensagem: String);
begin
  Assert(not pCondicao, pMensagem);
end;

end.
