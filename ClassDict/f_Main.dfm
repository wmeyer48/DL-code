object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 261
  ClientWidth = 284
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object btnTest: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Test'
    TabOrder = 0
    OnClick = btnTestClick
  end
  object lbLog: TListBox
    Left = 104
    Top = 8
    Width = 161
    Height = 241
    ItemHeight = 13
    TabOrder = 1
  end
end
