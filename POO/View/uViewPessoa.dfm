object frmPessoa: TfrmPessoa
  Left = 0
  Top = 0
  Caption = 'Pessoa'
  ClientHeight = 248
  ClientWidth = 359
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object rdgTipo: TRadioGroup
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 353
    Height = 43
    Align = alTop
    Caption = 'Tipo'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Pessoa Fisica'
      'Pessoa juridica')
    TabOrder = 0
    ExplicitWidth = 285
  end
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 52
    Width = 353
    Height = 43
    Align = alTop
    Caption = 'Nome'
    TabOrder = 1
    ExplicitWidth = 285
    DesignSize = (
      353
      43)
    object edtNome: TEdit
      Left = 3
      Top = 17
      Width = 347
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      ExplicitWidth = 279
    end
  end
  object GroupBox2: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 101
    Width = 353
    Height = 43
    Align = alTop
    Caption = 'Documento'
    TabOrder = 2
    ExplicitWidth = 285
    DesignSize = (
      353
      43)
    object edtDocumento: TEdit
      Left = 3
      Top = 17
      Width = 347
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      ExplicitWidth = 279
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 207
    Width = 359
    Height = 41
    Align = alBottom
    TabOrder = 3
    ExplicitTop = 151
    ExplicitWidth = 291
    object btnNomeCompleto: TSpeedButton
      Left = 1
      Top = 1
      Width = 96
      Height = 39
      Align = alLeft
      Caption = 'Nome Completo'
      Flat = True
      OnClick = btnNomeCompletoClick
    end
    object btnFormatarDocumento: TSpeedButton
      Left = 97
      Top = 1
      Width = 128
      Height = 39
      Align = alLeft
      Caption = 'Formatar Documento'
      Flat = True
      OnClick = btnDoisClick
    end
    object btnBotao3: TButton
      Left = 283
      Top = 1
      Width = 75
      Height = 39
      Align = alRight
      Caption = 'Bot'#227'o 3'
      TabOrder = 0
      ExplicitLeft = 240
      ExplicitTop = 8
      ExplicitHeight = 25
    end
  end
  object GroupBox3: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 150
    Width = 353
    Height = 43
    Align = alTop
    Caption = 'Endere'#231'o'
    TabOrder = 4
    ExplicitLeft = 6
    ExplicitTop = 109
    ExplicitWidth = 285
    DesignSize = (
      353
      43)
    object edtEndereco: TEdit
      Left = 3
      Top = 17
      Width = 347
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      ExplicitWidth = 279
    end
  end
end
