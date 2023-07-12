unit uBaseClass;

interface

uses
  System.SysUtils;

type
  TBaseClass = class
  protected
    procedure ValidarValor(const pValor, pMensagem : string); overload;
    procedure ValidarValor(const pValor : Integer; const pMensagem : string); overload;
    procedure ValidarValor(const pValor : Currency; const pMensagem : string); overload;
    procedure ValidarValor(const pCondicao : Boolean; const pMensagem : string); overload;
  end;

implementation

{ TBaseClass }

procedure TBaseClass.ValidarValor(const pValor, pMensagem: string);
begin
  Assert(not pValor.Trim.IsEmpty, pMensagem);
end;

procedure TBaseClass.ValidarValor(const pValor: Integer; const pMensagem: string);
begin
  Assert(pValor >= 1, pMensagem);
end;

procedure TBaseClass.ValidarValor(const pValor: Currency; const pMensagem: string);
begin
  Assert(pValor > 0, pMensagem);
end;

procedure TBaseClass.ValidarValor(const pCondicao: Boolean; const pMensagem: string);
begin
  Assert(not pCondicao, pMensagem);
end;

end.

