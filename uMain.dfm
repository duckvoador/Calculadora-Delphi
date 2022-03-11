object Main: TMain
  Left = 0
  Top = 0
  Caption = 'Calculadora'
  ClientHeight = 232
  ClientWidth = 376
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lValor1: TLabel
    Left = 64
    Top = 24
    Width = 33
    Height = 13
    Caption = 'Valor 1'
  end
  object lValor2: TLabel
    Left = 64
    Top = 69
    Width = 33
    Height = 13
    Caption = 'Valor 2'
  end
  object lResultado: TLabel
    Left = 64
    Top = 157
    Width = 48
    Height = 13
    Caption = 'Resultado'
  end
  object eValor1: TEdit
    Left = 64
    Top = 43
    Width = 121
    Height = 21
    TabOrder = 0
    OnKeyPress = eValor1KeyPress
  end
  object eValor2: TEdit
    Left = 64
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btAdicao: TButton
    Left = 240
    Top = 41
    Width = 75
    Height = 25
    Hint = 'Bot'#227'o para adi'#231#227'o de valores'
    Caption = '+'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = btAdicaoClick
  end
  object eValorTotal: TEdit
    Left = 64
    Top = 176
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object btSubtracao: TButton
    Left = 240
    Top = 86
    Width = 75
    Height = 25
    Caption = '-'
    TabOrder = 4
    OnClick = btSubtracaoClick
  end
  object btDivisão: TButton
    Left = 240
    Top = 133
    Width = 75
    Height = 25
    Hint = 'Para C'#225'lculo de Divis'#227'o'
    Caption = '/'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnClick = btDivisãoClick
  end
  object btMutiplicacao: TButton
    Left = 240
    Top = 174
    Width = 75
    Height = 25
    Caption = '*'
    TabOrder = 6
    OnClick = btMutiplicacaoClick
  end
end
