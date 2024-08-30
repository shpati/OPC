object Form1: TForm1
  Left = 1366
  Top = 142
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Option Pricing Calculator'
  ClientHeight = 172
  ClientWidth = 364
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  OnActivate = Calculate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 166
    Height = 13
    Caption = 'Black-Scholes Option Pricing'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 42
    Width = 55
    Height = 13
    Caption = 'Stock Price'
  end
  object Label3: TLabel
    Left = 16
    Top = 66
    Width = 54
    Height = 13
    Caption = 'Strike Price'
  end
  object Label4: TLabel
    Left = 16
    Top = 90
    Width = 71
    Height = 13
    Caption = 'Maturity (years)'
  end
  object Label5: TLabel
    Left = 16
    Top = 114
    Width = 85
    Height = 13
    Caption = 'Risk-free Rate [%]'
  end
  object Label6: TLabel
    Left = 16
    Top = 138
    Width = 55
    Height = 13
    Caption = 'Volatility [%]'
  end
  object Label7: TLabel
    Left = 216
    Top = 42
    Width = 53
    Height = 13
    Caption = 'CALL Price'
  end
  object Label8: TLabel
    Left = 216
    Top = 66
    Width = 49
    Height = 13
    Caption = 'PUT Price'
  end
  object Edit1: TEdit
    Left = 120
    Top = 40
    Width = 73
    Height = 21
    TabOrder = 0
    Text = '60'
    OnKeyPress = KeyPress
    OnKeyUp = KeyUp
  end
  object Edit2: TEdit
    Left = 120
    Top = 64
    Width = 73
    Height = 21
    TabOrder = 1
    Text = '65'
    OnKeyPress = KeyPress
    OnKeyUp = KeyUp
  end
  object Edit3: TEdit
    Left = 120
    Top = 88
    Width = 73
    Height = 21
    TabOrder = 2
    Text = '0.25'
    OnKeyPress = KeyPress
    OnKeyUp = KeyUp
  end
  object Edit4: TEdit
    Left = 120
    Top = 112
    Width = 73
    Height = 21
    TabOrder = 3
    Text = '8'
    OnKeyPress = KeyPress
    OnKeyUp = KeyUp
  end
  object Edit5: TEdit
    Left = 120
    Top = 136
    Width = 73
    Height = 21
    TabOrder = 4
    Text = '30'
    OnKeyPress = KeyPress
    OnKeyUp = KeyUp
  end
  object Edit6: TEdit
    Left = 280
    Top = 40
    Width = 65
    Height = 21
    Enabled = False
    TabOrder = 5
    Text = 'Edit6'
  end
  object Edit7: TEdit
    Left = 280
    Top = 64
    Width = 65
    Height = 21
    Enabled = False
    TabOrder = 6
    Text = 'Edit7'
  end
end
