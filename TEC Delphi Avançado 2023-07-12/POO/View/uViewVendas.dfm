object ViewVendas: TViewVendas
  Left = 0
  Top = 0
  ActiveControl = edtProduto
  BorderIcons = [biSystemMenu]
  Caption = 'Gerar Venda'
  ClientHeight = 373
  ClientWidth = 686
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 21
  object pnlBotoes: TPanel
    Left = 0
    Top = 332
    Width = 686
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object btnGerarVenda: TSpeedButton
      AlignWithMargins = True
      Left = 528
      Top = 3
      Width = 155
      Height = 35
      Align = alRight
      Caption = 'Gerar Venda'
      Enabled = False
      Flat = True
    end
    object btnAdicionarItem: TSpeedButton
      AlignWithMargins = True
      Left = 376
      Top = 3
      Width = 146
      Height = 35
      Align = alRight
      Caption = 'Adicionar Item'
      Flat = True
      OnClick = btnAdicionarItemClick
    end
  end
  object gbxDadosVenda: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 680
    Height = 105
    Align = alTop
    Caption = ' Dados da Venda '
    TabOrder = 1
    object lblProduto: TLabel
      Left = 6
      Top = 28
      Width = 56
      Height = 21
      Caption = 'Produto'
    end
    object lblValorUnitario: TLabel
      Left = 437
      Top = 28
      Width = 96
      Height = 21
      Caption = 'Valor Unit'#225'rio'
    end
    object lblQtde: TLabel
      Left = 611
      Top = 28
      Width = 34
      Height = 21
      Caption = 'Qtde'
    end
    object edtProduto: TEdit
      Left = 6
      Top = 55
      Width = 425
      Height = 29
      TabOrder = 0
    end
    object edtValorUnitario: TEdit
      Left = 437
      Top = 55
      Width = 168
      Height = 29
      TabOrder = 1
    end
    object edtQtde: TEdit
      Left = 611
      Top = 55
      Width = 64
      Height = 29
      Alignment = taCenter
      TabOrder = 2
      Text = '1'
    end
  end
  object dbhVendas: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 114
    Width = 680
    Height = 215
    Align = alClient
    DataSource = dtsVendas
    DrawingStyle = gdsGradient
    GradientEndColor = clSkyBlue
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Produto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ValorUnitario'
        Width = 64
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Qtde'
        Title.Alignment = taCenter
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ValorTotalItem'
        Width = 64
        Visible = True
      end>
  end
  object dtsVendas: TDataSource
    DataSet = dmVendas.cdsVendas
    Left = 224
    Top = 184
  end
end
