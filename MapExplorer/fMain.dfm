object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'frmMain'
  ClientHeight = 485
  ClientWidth = 735
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 91
    Top = 0
    Height = 450
    ExplicitLeft = 130
    ExplicitTop = 1
    ExplicitHeight = 448
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 450
    Width = 735
    Height = 35
    Align = alBottom
    TabOrder = 0
    object btnClose: TButton
      AlignWithMargins = True
      Left = 656
      Top = 4
      Width = 75
      Height = 27
      Align = alRight
      Caption = 'Close'
      TabOrder = 0
      OnClick = btnCloseClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 91
    Height = 450
    Align = alLeft
    TabOrder = 1
    object rgFilter: TRadioGroup
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 83
      Height = 165
      Align = alTop
      Caption = ' Filter '
      ItemIndex = 0
      Items.Strings = (
        'All'
        'Code'
        'ICode'
        'Data'
        'BSS'
        'TLS'
        'PDATA')
      TabOrder = 0
      OnClick = rgFilterClick
    end
  end
  object Panel2: TPanel
    Left = 94
    Top = 0
    Width = 641
    Height = 450
    Align = alClient
    TabOrder = 2
    object pcMain: TPageControl
      AlignWithMargins = True
      Left = 4
      Top = 1
      Width = 633
      Height = 445
      Margins.Top = 0
      ActivePage = tsModules
      Align = alClient
      TabOrder = 0
      object tsModules: TTabSheet
        Caption = ' Modules '
        object grdModules: TDBGrid
          Left = 0
          Top = 0
          Width = 625
          Height = 415
          Align = alClient
          DrawingStyle = gdsGradient
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
      object tsPublics: TTabSheet
        Caption = ' Publics '
        ImageIndex = 1
        object grdPublics: TDBGrid
          Left = 0
          Top = 0
          Width = 625
          Height = 417
          Align = alClient
          DrawingStyle = gdsGradient
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 648
    Top = 8
    object File1: TMenuItem
      Caption = '&File'
      object mnuOpen: TMenuItem
        Caption = '&Open'
        OnClick = mnuOpenClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object mnuExit: TMenuItem
        Caption = 'E&xit'
        OnClick = mnuExitClick
      end
    end
    object About1: TMenuItem
      Caption = 'About'
    end
  end
  object dlgOpen: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <>
    Options = []
    Left = 584
    Top = 8
  end
end
