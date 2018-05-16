object Form1: TForm1
  Left = 99
  Top = 24
  Width = 927
  Height = 625
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 24
    Top = 8
    Width = 665
    Height = 457
  end
  object StaticText1: TStaticText
    Left = 32
    Top = 24
    Width = 197
    Height = 17
    Caption = #1051#1072#1073#1086#1088#1072#1090#1086#1088#1085#1072#1103' '#1088#1072#1073#1086#1090#1072' 3 - '#1060#1080#1083#1100#1090#1088#1072#1094#1080#1103
    TabOrder = 0
  end
  object StaticText2: TStaticText
    Left = 768
    Top = 40
    Width = 44
    Height = 17
    Caption = #1060#1080#1083#1100#1090#1088
    TabOrder = 1
  end
  object StringGrid1: TStringGrid
    Left = 696
    Top = 72
    Width = 201
    Height = 81
    ColCount = 3
    FixedCols = 0
    RowCount = 3
    FixedRows = 0
    Options = [goVertLine, goHorzLine, goRangeSelect]
    TabOrder = 2
  end
  object Button1: TButton
    Left = 704
    Top = 216
    Width = 185
    Height = 41
    Caption = #1060#1080#1083#1100#1090#1088
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 704
    Top = 280
    Width = 185
    Height = 41
    Caption = #1060#1080#1083#1100#1088#1072#1094#1080#1103
    TabOrder = 4
    OnClick = Button2Click
  end
  object StaticText3: TStaticText
    Left = 32
    Top = 480
    Width = 142
    Height = 17
    Caption = #1047#1072#1075#1088#1091#1078#1077#1085#1085#1086#1077' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1077
    TabOrder = 5
  end
  object Memo1: TMemo
    Left = 24
    Top = 504
    Width = 217
    Height = 25
    Lines.Strings = (
      'Memo1')
    TabOrder = 6
  end
  object Button3: TButton
    Left = 24
    Top = 552
    Width = 193
    Height = 25
    Caption = #1042#1099#1073#1088#1072#1090#1100' '#1092#1072#1081#1083
    TabOrder = 7
    OnClick = Button3Click
  end
  object OpenDialog1: TOpenDialog
    Left = 712
    Top = 344
  end
end
