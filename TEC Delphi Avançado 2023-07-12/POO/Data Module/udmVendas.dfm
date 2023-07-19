object dmVendas: TdmVendas
  OldCreateOrder = False
  Height = 283
  Width = 446
  object cdsVendas: TClientDataSet
    PersistDataPacket.Data = {
      980000009619E0BD01000000180000000400000000000300000098000750726F
      6475746F0100490000000100055749445448020002001E000D56616C6F72556E
      69746172696F080004000000010007535542545950450200490006004D6F6E65
      7900045174646504000100000000000E56616C6F72546F74616C4974656D0800
      04000000010007535542545950450200490006004D6F6E6579000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Produto'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ValorUnitario'
        DataType = ftCurrency
      end
      item
        Name = 'Qtde'
        DataType = ftInteger
      end
      item
        Name = 'ValorTotalItem'
        DataType = ftCurrency
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 136
    Top = 72
    object cdsVendasProduto: TStringField
      FieldName = 'Produto'
      Size = 30
    end
    object cdsVendasValorUnitario: TCurrencyField
      DisplayLabel = 'Valor Unit'#225'rio'
      FieldName = 'ValorUnitario'
    end
    object cdsVendasQtde: TIntegerField
      FieldName = 'Qtde'
    end
    object cdsVendasValorTotalItem: TCurrencyField
      DisplayLabel = 'Valor Total'
      FieldName = 'ValorTotalItem'
    end
  end
end
