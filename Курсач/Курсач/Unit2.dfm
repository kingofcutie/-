object Test1: TTest1
  Left = 288
  Top = 208
  BorderStyle = bsNone
  Caption = #1053#1072#1087#1088#1072#1074#1083#1077#1085#1085#1086#1089#1090#1100' '#1083#1080#1095#1085#1086#1089#1090#1080
  ClientHeight = 482
  ClientWidth = 1029
  Color = clBtnFace
  Constraints.MaxHeight = 541
  Constraints.MaxWidth = 1045
  Constraints.MinHeight = 541
  Constraints.MinWidth = 1045
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 8
    Top = 8
    Width = 1009
    Height = 113
    Alignment = taCenter
    AutoSize = False
    Caption = 'lbl1'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -43
    Font.Name = 'Truetypewriter PolyglOTT'
    Font.Style = [fsBold]
    ParentFont = False
    Layout = tlCenter
    Visible = False
    WordWrap = True
  end
  object lbl2: TLabel
    Left = 32
    Top = 40
    Width = 961
    Height = 49
    AutoSize = False
    Caption = 'lbl2'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -43
    Font.Name = 'Truetypewriter PolyglOTT'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
    WordWrap = True
  end
  object lbl3: TLabel
    Left = 24
    Top = 120
    Width = 961
    Height = 329
    AutoSize = False
    Caption = 'lbl3'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -40
    Font.Name = 'Truetypewriter PolyglOTT'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
    WordWrap = True
  end
  object lbl4: TLabel
    Left = 68
    Top = 17
    Width = 900
    Height = 400
    AutoSize = False
    Caption = 'lbl4'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -29
    Font.Name = 'Truetypewriter PolyglOTT'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object btnSTART: TButton
    Left = 48
    Top = 416
    Width = 113
    Height = 57
    Caption = #1057#1090#1072#1088#1090
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -27
    Font.Name = 'Truetypewriter PolyglOTT'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btnSTARTClick
  end
  object btnFINISH: TButton
    Left = 856
    Top = 408
    Width = 153
    Height = 57
    Caption = #1047#1072#1074#1077#1088#1096#1080#1090#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -27
    Font.Name = 'Truetypewriter PolyglOTT'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    Visible = False
    OnClick = btnFINISHClick
  end
  object btnNAZAD: TButton
    Left = 344
    Top = 408
    Width = 137
    Height = 57
    Caption = '<-'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -27
    Font.Name = 'Truetypewriter PolyglOTT'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    Visible = False
    OnClick = btnNAZADClick
  end
  object btnVPERED: TButton
    Left = 544
    Top = 408
    Width = 137
    Height = 57
    Caption = '->'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -27
    Font.Name = 'Truetypewriter PolyglOTT'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    Visible = False
    OnClick = btnVPEREDClick
  end
  object rb1: TRadioButton
    Left = 8
    Top = 144
    Width = 1009
    Height = 73
    Caption = 'rb1'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -32
    Font.Name = 'Truetypewriter PolyglOTT'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    Visible = False
    WordWrap = True
  end
  object rb2: TRadioButton
    Left = 8
    Top = 232
    Width = 1009
    Height = 73
    Caption = 'rb2'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -32
    Font.Name = 'Truetypewriter PolyglOTT'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    Visible = False
    WordWrap = True
  end
  object rb3: TRadioButton
    Left = 8
    Top = 320
    Width = 1009
    Height = 73
    Caption = 'rb3'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -32
    Font.Name = 'Truetypewriter PolyglOTT'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    Visible = False
    WordWrap = True
  end
  object mm1: TMainMenu
    Left = 8
    Top = 464
    object N1: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = N1Click
    end
  end
end
