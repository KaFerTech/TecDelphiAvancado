unit uInterfaceCalculadora;

interface

type
  iCalculadora = interface
    ['{1FE98BAB-297C-42D3-8884-E9D92F7702D3}']
    function getResultado(const pValores : array of integer) : String;
  end;

implementation

end.
