unit uProduto;

interface

type
  TProduto = class
  private
    fNome : string;
    procedure SetNome(const Value: string);
  protected
    fvalor : Currency;
  public
    property Nome : string read FNome write SetNome;
  end;

implementation

procedure TProduto.SetNome(const Value: string);
begin
  FNome := Value;
end;

end.
