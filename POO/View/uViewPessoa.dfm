object frmPessoa: TfrmPessoa
  Left = 0
  Top = 0
  Caption = 'Pessoa'
  ClientHeight = 192
  ClientWidth = 291
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RadioGroup1: TRadioGroup
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 285
    Height = 43
    Align = alTop
    Caption = 'Tipo'
    Columns = 2
    Items.Strings = (
      'Pessoa Fisica'
      'Pessoa juridica')
    TabOrder = 0
  end
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 52
    Width = 285
    Height = 43
    Align = alTop
    Caption = 'Nome'
    TabOrder = 1
    ExplicitTop = 54
    object edtNome: TEdit
      Left = 3
      Top = 17
      Width = 279
      Height = 21
      TabOrder = 0
      Text = 'edtNome'
    end
  end
  object GroupBox2: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 101
    Width = 285
    Height = 43
    Align = alTop
    Caption = 'Documento'
    TabOrder = 2
    ExplicitTop = 105
    object edtDocumento: TEdit
      Left = 3
      Top = 17
      Width = 279
      Height = 21
      TabOrder = 0
      Text = 'edtDocumento'
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 151
    Width = 291
    Height = 41
    Align = alBottom
    TabOrder = 3
    ExplicitLeft = 48
    ExplicitTop = 264
    ExplicitWidth = 185
    object btnFormatarDocumento: TSpeedButton
      Left = 168
      Top = 1
      Width = 122
      Height = 39
      Align = alRight
      Caption = 'Formatar Documento'
      Flat = True
    end
    object btnNomeCompleto: TSpeedButton
      Left = 1
      Top = 1
      Width = 104
      Height = 39
      Align = alLeft
      Caption = 'Nome Completo'
      Flat = True
    end
  end
end
