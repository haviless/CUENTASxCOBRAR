object FAceptaLetra: TFAceptaLetra
  Left = 253
  Top = 152
  BorderStyle = bsDialog
  Caption = 'Acepta Letras (Temporal)'
  ClientHeight = 105
  ClientWidth = 220
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 19
    Width = 24
    Height = 13
    Caption = 'Letra'
  end
  object bbtnOK: TBitBtn
    Left = 28
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Aceptar'
    TabOrder = 1
    OnClick = bbtnOKClick
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
  end
  object dblcdLetra: TwwDBLookupComboDlg
    Left = 48
    Top = 16
    Width = 145
    Height = 21
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    GridColor = clWhite
    GridTitleAlignment = taLeftJustify
    Caption = 'Letra'
    MaxWidth = 0
    MaxHeight = 209
    TabOrder = 0
    AutoDropDown = False
    ShowButton = True
    AllowClearKey = False
  end
  object bbtnCancel: TBitBtn
    Left = 108
    Top = 64
    Width = 75
    Height = 25
    TabOrder = 2
    Kind = bkClose
  end
end
