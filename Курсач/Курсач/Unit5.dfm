object Rezults: TRezults
  Left = 236
  Top = 201
  BorderStyle = bsNone
  Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103
  ClientHeight = 482
  ClientWidth = 1028
  Color = clBtnFace
  Constraints.MaxHeight = 541
  Constraints.MaxWidth = 1044
  Constraints.MinHeight = 541
  Constraints.MinWidth = 1044
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
    Left = 144
    Top = 8
    Width = 753
    Height = 49
    Alignment = taCenter
    AutoSize = False
    Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1087#1088#1086#1093#1086#1078#1076#1077#1085#1080#1103' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103#1084#1080' '#1090#1077#1089#1090#1086#1074
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -37
    Font.Name = 'Truetypewriter PolyglOTT'
    Font.Style = [fsBold]
    ParentFont = False
    Layout = tlCenter
    WordWrap = True
  end
  object strngrd1: TStringGrid
    Left = 8
    Top = 72
    Width = 1009
    Height = 401
    ColCount = 4
    DefaultColWidth = 250
    DefaultRowHeight = 30
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Truetypewriter PolyglOTT'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object mm1: TMainMenu
    Left = 8
    Top = 448
    object N1: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = N1Click
    end
  end
end
