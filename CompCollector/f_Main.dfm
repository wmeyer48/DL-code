object fMain: TfMain
  Left = 0
  Top = 0
  Caption = 'Component Collector - v1.0 -- W. Meyer'
  ClientHeight = 611
  ClientWidth = 1043
  Color = clBtnFace
  CustomTitleBar.Enabled = True
  CustomTitleBar.Height = 31
  CustomTitleBar.SystemHeight = False
  CustomTitleBar.ShowIcon = False
  CustomTitleBar.SystemColors = False
  CustomTitleBar.SystemButtons = False
  CustomTitleBar.BackgroundColor = 3812121
  CustomTitleBar.ForegroundColor = clWhite
  CustomTitleBar.InactiveBackgroundColor = clWhite
  CustomTitleBar.InactiveForegroundColor = 10066329
  CustomTitleBar.ButtonForegroundColor = clWhite
  CustomTitleBar.ButtonBackgroundColor = 3812121
  CustomTitleBar.ButtonHoverForegroundColor = clWhite
  CustomTitleBar.ButtonHoverBackgroundColor = 5849638
  CustomTitleBar.ButtonPressedForegroundColor = clWhite
  CustomTitleBar.ButtonPressedBackgroundColor = 8741689
  CustomTitleBar.ButtonInactiveForegroundColor = 10066329
  CustomTitleBar.ButtonInactiveBackgroundColor = clWhite
  Constraints.MinHeight = 650
  Constraints.MinWidth = 950
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  GlassFrame.Enabled = True
  GlassFrame.Top = 31
  Position = poScreenCenter
  StyleElements = [seFont, seClient]
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object pcMain: TRzPageControl
    Left = 0
    Top = 0
    Width = 1043
    Height = 611
    Hint = ''
    ActivePage = tsAnalyzer
    Align = alClient
    TabIndex = 2
    TabOrder = 0
    ExplicitTop = 30
    ExplicitWidth = 934
    ExplicitHeight = 612
    FixedDimension = 21
    object tsInitial: TRzTabSheet
      Caption = 'Instructions'
      ExplicitWidth = 930
      ExplicitHeight = 587
      object pnlInstructions: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 1033
        Height = 238
        Align = alTop
        TabOrder = 0
        ExplicitWidth = 924
        object Label1: TLabel
          AlignWithMargins = True
          Left = 4
          Top = 184
          Width = 1025
          Height = 50
          Align = alClient
          WordWrap = True
          ExplicitWidth = 3
          ExplicitHeight = 15
        end
        object RzMemo1: TRzMemo
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 1025
          Height = 109
          Align = alTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          Lines.Strings = (
            
              'This tool takes input from XML files produced by a component wiz' +
              'ard inside the Delphi IDE. There are other ways of obtaining the' +
              ' '
            'information, but the ToolsAPI is the simplest to implement.'
            
              'These files are named Components.xml and Packages.xml, and the w' +
              'izard places them in the user'#39's Documents folder. You are free '
            
              'to place them wherever may be most convenient, and then use the ' +
              'control below to locate that folder for this tool.')
          ParentFont = False
          TabOrder = 0
          ExplicitWidth = 916
        end
        object RzGroupBox1: TRzGroupBox
          AlignWithMargins = True
          Left = 4
          Top = 119
          Width = 1025
          Height = 59
          Align = alTop
          Caption = 'Input Files Location'
          TabOrder = 1
          ExplicitWidth = 916
          DesignSize = (
            1025
            59)
          object SpeedButton2: TSpeedButton
            Left = 655
            Top = 19
            Width = 23
            Height = 23
            Caption = '...'
            OnClick = btnSelProjectFoldersClick
          end
          object edtInputFolder: TLabeledEdit
            AlignWithMargins = True
            Left = 101
            Top = 19
            Width = 784
            Height = 23
            Margins.Left = 100
            Margins.Right = 30
            EditLabel.Width = 76
            EditLabel.Height = 15
            EditLabel.Caption = 'Project Folder:'
            LabelPosition = lpLeft
            LabelSpacing = 4
            TabOrder = 0
            Text = ''
          end
          object btnSelInputFolder: TRzButton
            Left = 997
            Top = 18
            Width = 23
            Height = 24
            Anchors = [akTop, akRight]
            Caption = '...'
            TabOrder = 1
            OnClick = btnSelInputFolderClick
            ExplicitLeft = 888
          end
        end
        object btnLoadInput: TRzButton
          Left = 105
          Top = 191
          Width = 105
          Caption = 'Load Input'
          TabOrder = 2
          OnClick = btnLoadInputClick
        end
      end
      object grpAnalyzerSettings: TRzGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 247
        Width = 1033
        Height = 110
        Align = alTop
        Caption = 'Settings'
        TabOrder = 1
        ExplicitWidth = 924
        object Panel2: TPanel
          AlignWithMargins = True
          Left = 4
          Top = 19
          Width = 1025
          Height = 73
          Align = alTop
          TabOrder = 0
          ExplicitLeft = 1
          ExplicitTop = 16
          ExplicitWidth = 922
          DesignSize = (
            1025
            73)
          object btnSelProjectFolders: TSpeedButton
            Left = 994
            Top = 4
            Width = 23
            Height = 23
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = btnSelProjectFoldersClick
            ExplicitLeft = 891
          end
          object btnProcessForms: TSpeedButton
            Left = 101
            Top = 43
            Width = 141
            Height = 22
            Caption = 'Process Forms'
            OnClick = btnProcessFormsClick
          end
          object edtProjectFolders: TLabeledEdit
            AlignWithMargins = True
            Left = 101
            Top = 4
            Width = 787
            Height = 23
            Margins.Left = 100
            Margins.Right = 33
            EditLabel.Width = 89
            EditLabel.Height = 15
            EditLabel.Caption = 'Project Folder(s):'
            LabelPosition = lpLeft
            LabelSpacing = 4
            TabOrder = 0
            Text = ''
          end
        end
      end
    end
    object tsInputData: TRzTabSheet
      Caption = 'Input Data'
      ExplicitWidth = 930
      ExplicitHeight = 587
      object splInput: TRzSplitter
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 1033
        Height = 561
        Orientation = orVertical
        Position = 211
        Percent = 38
        SplitterStyle = ssBump
        SplitterWidth = 6
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 924
        ExplicitHeight = 562
        BarSize = (
          0
          211
          1033
          217)
        UpperLeftControls = (
          grdPackages)
        LowerRightControls = (
          grdComponents)
        object grdPackages: TRzDBGrid
          Left = 0
          Top = 0
          Width = 1033
          Height = 211
          Align = alClient
          DataSource = dMain.dsPackages
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
        end
        object grdComponents: TRzDBGrid
          Left = 0
          Top = 0
          Width = 1033
          Height = 344
          Align = alClient
          DataSource = dMain.dsComponents
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
        end
      end
      object sbInput: TRzStatusBar
        Left = 0
        Top = 567
        Width = 1039
        Height = 19
        BorderInner = fsNone
        BorderOuter = fsNone
        BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
        BorderWidth = 0
        TabOrder = 1
        ExplicitTop = 568
        ExplicitWidth = 930
        object sbInputPane1: TRzStatusPane
          Left = 0
          Top = 0
          Width = 250
          Height = 19
          Align = alLeft
          Caption = ''
        end
        object sbInputPane2: TRzStatusPane
          Left = 250
          Top = 0
          Width = 250
          Height = 19
          Align = alLeft
          Caption = ''
        end
      end
    end
    object tsAnalyzer: TRzTabSheet
      Caption = 'Analyzer'
      ExplicitWidth = 930
      ExplicitHeight = 587
      object splAnalyzer: TRzSplitter
        Left = 0
        Top = 0
        Width = 1039
        Height = 586
        Position = 138
        Percent = 13
        SplitterStyle = ssBump
        SplitterWidth = 6
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 930
        ExplicitHeight = 587
        BarSize = (
          138
          0
          144
          586)
        UpperLeftControls = (
          pnlAnalyzerCmds)
        LowerRightControls = (
          pcAnalyzer
          grpUsedCompsCmds)
        object pnlAnalyzerCmds: TRzPanel
          Left = 0
          Top = 0
          Width = 138
          Height = 586
          Align = alClient
          TabOrder = 0
          ExplicitLeft = 64
          ExplicitTop = 152
          ExplicitWidth = 185
          ExplicitHeight = 41
        end
        object pcAnalyzer: TRzPageControl
          Left = 0
          Top = 0
          Width = 895
          Height = 586
          Hint = ''
          ActivePage = tsUsedComponents
          Align = alClient
          TabIndex = 2
          TabOrder = 0
          TabOrientation = toLeft
          TabSequence = tsReverse
          TabStyle = tsCutCorner
          OnPageChange = pcAnalyzerPageChange
          ExplicitWidth = 786
          ExplicitHeight = 587
          FixedDimension = 113
          object tsAnalyzerSettings: TRzTabSheet
            Caption = 'Settings/Status'
            ExplicitWidth = 671
            ExplicitHeight = 585
            object grpAnalyzerStatus: TRzGroupBox
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 774
              Height = 263
              Align = alTop
              Caption = 'Status'
              TabOrder = 0
              ExplicitWidth = 665
              DesignSize = (
                774
                263)
              object lblFormFilesList: TLabel
                Left = 4
                Top = 19
                Width = 75
                Height = 15
                Caption = 'Form Files List'
              end
              object lblFormsListCount: TRzLabel
                Left = 609
                Top = 19
                Width = 5
                Height = 15
                Anchors = [akTop, akRight]
                Caption = '-'
                ExplicitLeft = 500
              end
              object lbFormFilesList: TListBox
                AlignWithMargins = True
                Left = 4
                Top = 37
                Width = 501
                Height = 222
                Margins.Top = 21
                Align = alLeft
                ItemHeight = 15
                TabOrder = 0
              end
              object btnSaveFormsList: TRzButton
                Left = 510
                Top = 37
                Width = 107
                Caption = 'Save To Disk'
                TabOrder = 1
                OnClick = btnSaveFormsListClick
              end
            end
          end
          object tsFormFiles: TRzTabSheet
            Caption = 'Form Files'
            ExplicitWidth = 671
            ExplicitHeight = 585
            object grpUsedCompStats: TRzGroupBox
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 774
              Height = 54
              Align = alTop
              Caption = 'Statistics'
              TabOrder = 0
              ExplicitWidth = 665
              object btnHarvestCompsFromDfms: TSpeedButton
                Left = 184
                Top = 18
                Width = 169
                Height = 23
                Caption = 'Harvest Components'
                OnClick = btnHarvestCompsFromDfmsClick
              end
              object edtAllCompsCount: TLabeledEdit
                Left = 76
                Top = 18
                Width = 39
                Height = 23
                EditLabel.Width = 64
                EditLabel.Height = 15
                EditLabel.Caption = 'Total Count:'
                LabelPosition = lpLeft
                LabelSpacing = 5
                TabOrder = 0
                Text = ''
              end
            end
            object pnlFormFilesGrid: TPanel
              AlignWithMargins = True
              Left = 3
              Top = 63
              Width = 774
              Height = 518
              Align = alClient
              TabOrder = 1
              ExplicitWidth = 665
              ExplicitHeight = 519
              object grdFormFiles: TRzDBGrid
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 766
                Height = 510
                Align = alClient
                DataSource = dMain.dsDfmFiles
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -12
                TitleFont.Name = 'Segoe UI'
                TitleFont.Style = []
              end
            end
          end
          object tsUsedComponents: TRzTabSheet
            Caption = 'Used Components'
            ExplicitWidth = 671
            ExplicitHeight = 585
            object RzGroupBox2: TRzGroupBox
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 774
              Height = 54
              Align = alTop
              Caption = 'Statistics'
              TabOrder = 0
              ExplicitWidth = 665
              DesignSize = (
                774
                54)
              object edtUsedCompsTotal: TLabeledEdit
                Left = 86
                Top = 18
                Width = 39
                Height = 23
                EditLabel.Width = 72
                EditLabel.Height = 15
                EditLabel.Caption = 'Forms Count:'
                LabelPosition = lpLeft
                LabelSpacing = 5
                TabOrder = 0
                Text = ''
              end
              object edtUsedCompsTypes: TLabeledEdit
                Left = 206
                Top = 18
                Width = 39
                Height = 23
                EditLabel.Width = 68
                EditLabel.Height = 15
                EditLabel.Caption = 'Comp Types:'
                LabelPosition = lpLeft
                LabelSpacing = 5
                TabOrder = 1
                Text = ''
              end
              object edtUsedCompsMaxPerForm: TLabeledEdit
                Left = 560
                Top = 18
                Width = 210
                Height = 23
                Anchors = [akLeft, akTop, akRight]
                EditLabel.Width = 81
                EditLabel.Height = 15
                EditLabel.Caption = 'Most Per Form:'
                LabelPosition = lpLeft
                LabelSpacing = 5
                TabOrder = 2
                Text = ''
              end
              object edtUsedCompsMostUsed: TLabeledEdit
                Left = 320
                Top = 18
                Width = 142
                Height = 23
                EditLabel.Width = 59
                EditLabel.Height = 15
                EditLabel.Caption = 'Most Used:'
                LabelPosition = lpLeft
                LabelSpacing = 5
                TabOrder = 3
                Text = ''
              end
            end
            object pnlUsedCompsGrid: TPanel
              AlignWithMargins = True
              Left = 3
              Top = 63
              Width = 774
              Height = 518
              Align = alClient
              TabOrder = 1
              ExplicitWidth = 665
              ExplicitHeight = 519
              object grdUsedComps: TRzDBGrid
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 766
                Height = 510
                Align = alClient
                DataSource = dMain.dsUsedComps
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -12
                TitleFont.Name = 'Segoe UI'
                TitleFont.Style = []
              end
            end
          end
        end
        object grpUsedCompsCmds: TRzGroupBox
          Left = 4
          Top = 160
          Width = 105
          Height = 70
          Caption = 'Export'
          TabOrder = 1
          Visible = False
          object btnUsedCompsToCSV: TRzButton
            Left = 16
            Top = 27
            Caption = 'To CSV'
            TabOrder = 0
            OnClick = btnUsedCompsToCSVClick
          end
        end
      end
    end
  end
  object dlgSelFolder: TRzSelectFolderDialog
    Left = 328
    Top = 533
  end
  object dlgFileOpen: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <>
    Options = [fdoPickFolders]
    Left = 552
    Top = 541
  end
  object dlgSave: TFileSaveDialog
    DefaultExtension = '.txt'
    FavoriteLinks = <>
    FileTypes = <>
    Options = []
    Left = 739
    Top = 469
  end
end
