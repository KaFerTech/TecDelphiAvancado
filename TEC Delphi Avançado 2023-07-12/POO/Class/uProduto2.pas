unit uProduto2;

interface

type
  TProduto2 = class
  private
    FNome2: string;
    procedure SetNome2(const Value: string);

  public
    property Nome2 : string read FNome2 write SetNome2;
  end;

implementation

procedure TProduto2.SetNome2(const Value: string);
begin
  FNome2 := Value;
end;

end.
