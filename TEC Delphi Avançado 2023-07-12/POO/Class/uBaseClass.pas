unit uBaseClass;

interface

uses
  System.SysUtils;

type
  // Classe concreta
  TBaseClass = class(tobject)
  protected
    procedure ValidarValor(const pValor, pMensagem : string); overload;
    procedure ValidarValor(const pValor : Integer; const pMensagem : string); overload;
    procedure ValidarValor(const pValor : Currency; const pMensagem : string); overload;
    procedure ValidarValor(const pCondicao : Boolean; const pMensagem : string); overload;
    procedure setNilObjeto(var Obj);
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

procedure TBaseClass.setNilObjeto(var Obj);
begin
  FreeAndNil(Obj);
end;

procedure TBaseClass.ValidarValor(const pCondicao: Boolean; const pMensagem: string);
begin
  Assert(not pCondicao, pMensagem);
end;

end.
