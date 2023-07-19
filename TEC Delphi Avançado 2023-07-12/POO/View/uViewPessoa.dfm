object ViewPessoa: TViewPessoa
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Pessoa'
  ClientHeight = 243
  ClientWidth = 373
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 21
  object lblNome: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 79
    Width = 367
    Height = 21
    Align = alTop
    Caption = 'Nome'
    ExplicitWidth = 43
  end
  object lblDocumento: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 141
    Width = 367
    Height = 21
    Align = alTop
    Caption = 'Documento'
    ExplicitWidth = 81
  end
  object rdgTipo: TRadioGroup
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 367
    Height = 70
    Align = alTop
    Caption = ' Tipo '
    Columns = 2
    Items.Strings = (
      'Pessoa F'#237'sica'
      'Pessoa Jur'#237'dica')
    TabOrder = 0
  end
  object edtNome: TEdit
    AlignWithMargins = True
    Left = 3
    Top = 106
    Width = 367
    Height = 29
    Align = alTop
    TabOrder = 1
  end
  object edtDocumento: TEdit
    AlignWithMargins = True
    Left = 3
    Top = 168
    Width = 367
    Height = 29
    Align = alTop
    TabOrder = 2
  end
  object pnlBotoes: TPanel
    Left = 0
    Top = 202
    Width = 373
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    object btnNomeCompleto: TSpeedButton
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 177
      Height = 35
      Align = alLeft
      Caption = 'Nome Completo'
      Flat = True
      OnClick = btnNomeCompletoClick
    end
    object btnFormatarDocumento: TSpeedButton
      AlignWithMargins = True
      Left = 186
      Top = 3
      Width = 184
      Height = 35
      Align = alRight
      Caption = 'Formatar Documento'
      Flat = True
      OnClick = btnFormatarDocumentoClick
      ExplicitLeft = 264
    end
  end
end
