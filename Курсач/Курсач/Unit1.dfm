object Menushka: TMenushka
  Left = 213
  Top = 210
  Width = 1099
  Height = 593
  Caption = #1052#1077#1085#1102
  Color = clBtnFace
  Constraints.MaxHeight = 593
  Constraints.MaxWidth = 1099
  Constraints.MinHeight = 593
  Constraints.MinWidth = 1099
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
    Left = 48
    Top = 8
    Width = 1001
    Height = 129
    Alignment = taCenter
    AutoSize = False
    Caption = #1055#1089#1080#1093#1086#1083#1086#1075#1080#1095#1077#1089#1082#1080#1077' '#1090#1077#1089#1090#1099' '#1085#1072' '#1080#1076#1077#1085#1090#1080#1092#1080#1082#1072#1094#1080#1102' '#1090#1080#1087#1086#1074' '#1083#1080#1095#1085#1086#1089#1090#1080
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -48
    Font.Name = 'Truetypewriter PolyglOTT'
    Font.Style = [fsBold]
    ParentFont = False
    Layout = tlCenter
    WordWrap = True
  end
  object lbl2: TLabel
    Left = 88
    Top = 152
    Width = 281
    Height = 33
    Alignment = taCenter
    AutoSize = False
    Caption = #1058#1077#1082#1091#1097#1080#1081' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -27
    Font.Name = 'Truetypewriter PolyglOTT'
    Font.Style = [fsBold]
    ParentFont = False
    Layout = tlCenter
    Visible = False
    WordWrap = True
  end
  object lbl3: TLabel
    Left = 88
    Top = 200
    Width = 281
    Height = 41
    Align = alCustom
    Alignment = taCenter
    AutoSize = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -32
    Font.Name = 'Truetypewriter PolyglOTT'
    Font.Style = [fsBold]
    ParentFont = False
    Layout = tlCenter
    Visible = False
    WordWrap = True
  end
  object Tst1: TButton
    Left = 464
    Top = 176
    Width = 577
    Height = 73
    Caption = #1058#1077#1089#1090' '#1085#1072' '#1085#1072#1087#1088#1072#1074#1083#1077#1085#1085#1086#1089#1090#1100' '#1083#1080#1095#1085#1086#1089#1090#1080
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -35
    Font.Name = 'Truetypewriter PolyglOTT'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Visible = False
    OnClick = Tst1Click
  end
  object Tst2: TButton
    Left = 464
    Top = 272
    Width = 577
    Height = 73
    Caption = #1058#1077#1089#1090' '#1085#1072' '#1090#1077#1084#1087#1077#1088#1072#1084#1077#1085#1090
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -35
    Font.Name = 'Truetypewriter PolyglOTT'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    Visible = False
    OnClick = Tst2Click
  end
  object tst3: TButton
    Left = 464
    Top = 368
    Width = 577
    Height = 73
    Caption = #1058#1077#1089#1090' '#1085#1072' '#1090#1080#1087' '#1083#1080#1095#1085#1086#1089#1090#1080
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -35
    Font.Name = 'Truetypewriter PolyglOTT'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    Visible = False
    OnClick = tst3Click
  end
  object rg1: TRadioGroup
    Left = 32
    Top = 256
    Width = 369
    Height = 153
    Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -27
    Font.Name = 'Truetypewriter PolyglOTT'
    Font.Style = [fsBold]
    Items.Strings = (
      #1043#1086#1089#1090#1100)
    ParentFont = False
    TabOrder = 3
    Visible = False
  end
  object dobavka: TButton
    Left = 8
    Top = 464
    Width = 225
    Height = 81
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1086#1074#1086#1075#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -27
    Font.Name = 'Truetypewriter PolyglOTT'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    Visible = False
    WordWrap = True
    OnClick = dobavkaClick
  end
  object vybor: TButton
    Left = 248
    Top = 464
    Width = 185
    Height = 81
    Caption = #1042#1099#1073#1088#1072#1090#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -27
    Font.Name = 'Truetypewriter PolyglOTT'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    Visible = False
    OnClick = vyborClick
  end
  object edt1: TEdit
    Left = 56
    Top = 416
    Width = 321
    Height = 36
    AutoSize = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -27
    Font.Name = 'Truetypewriter PolyglOTT'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    Visible = False
  end
  object Rezult: TButton
    Left = 464
    Top = 464
    Width = 577
    Height = 73
    Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1090#1077#1089#1090#1086#1074
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -35
    Font.Name = 'Truetypewriter PolyglOTT'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    Visible = False
    OnClick = RezultClick
  end
  object pb1: TProgressBar
    Left = 184
    Top = 264
    Width = 705
    Height = 49
    TabOrder = 8
  end
  object tmr1: TTimer
    Interval = 500
    OnTimer = tmr1Timer
    Left = 8
    Top = 8
  end
  object mm1: TMainMenu
    Left = 1048
    Top = 496
    object N1: TMenuItem
      Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
      Visible = False
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1054' '#1088#1072#1079#1088#1072#1073#1086#1090#1095#1080#1082#1077
      Visible = False
      OnClick = N2Click
    end
  end
end
