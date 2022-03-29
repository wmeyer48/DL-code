object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'frmMain'
  ClientHeight = 675
  ClientWidth = 994
  Color = clBtnFace
  Constraints.MinHeight = 535
  Constraints.MinWidth = 750
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  TextHeight = 13
  object pnlGrid: TPanel
    Left = 0
    Top = 125
    Width = 994
    Height = 550
    Align = alClient
    TabOrder = 0
    object grdMain: TDBGrid
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 986
      Height = 542
      Align = alClient
      DataSource = dsCycles
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnMouseMove = grdMainMouseMove
      OnTitleClick = grdMainTitleClick
    end
  end
  object pnlSettings: TPanel
    Left = 0
    Top = 0
    Width = 994
    Height = 125
    Align = alTop
    TabOrder = 1
    object pnlReferenceReport: TPanel
      Left = 1
      Top = 1
      Width = 992
      Height = 31
      Align = alTop
      TabOrder = 0
      object lblRefReport: TLabel
        AlignWithMargins = True
        Left = 8
        Top = 7
        Width = 90
        Height = 13
        Caption = 'Reference Report:'
      end
      object edtReferenceReport: TEdit
        AlignWithMargins = True
        Left = 102
        Top = 4
        Width = 857
        Height = 23
        Margins.Left = 101
        Align = alClient
        TabOrder = 0
        ExplicitHeight = 21
      end
      object btnRefRepSel: TButton
        AlignWithMargins = True
        Left = 965
        Top = 4
        Width = 23
        Height = 23
        Align = alRight
        Caption = '...'
        TabOrder = 1
        OnClick = btnRefFileSelectClick
      end
    end
    object pnlNewReport: TPanel
      Left = 1
      Top = 32
      Width = 992
      Height = 31
      Align = alTop
      TabOrder = 1
      object lblNewReport: TLabel
        AlignWithMargins = True
        Left = 38
        Top = 7
        Width = 61
        Height = 13
        Caption = 'New Report:'
      end
      object edtNewReport: TEdit
        AlignWithMargins = True
        Left = 102
        Top = 4
        Width = 857
        Height = 23
        Margins.Left = 101
        Align = alClient
        TabOrder = 0
        ExplicitHeight = 21
      end
      object btnNewRepSel: TButton
        AlignWithMargins = True
        Left = 965
        Top = 4
        Width = 23
        Height = 23
        Align = alRight
        Caption = '...'
        TabOrder = 1
        OnClick = btnNewFileSelectClick
      end
    end
    object pnlStatus: TPanel
      Left = 1
      Top = 94
      Width = 992
      Height = 31
      Align = alTop
      TabOrder = 2
      object lblRecCount: TLabel
        Left = 3
        Top = 9
        Width = 49
        Height = 13
        Caption = 'Records:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblRecordsCount: TLabel
        Left = 63
        Top = 9
        Width = 10
        Height = 13
        Caption = '--'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblCycles: TLabel
        Left = 224
        Top = 9
        Width = 72
        Height = 13
        Caption = 'Cycles Count'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblRefCycles: TLabel
        Left = 400
        Top = 9
        Width = 10
        Height = 13
        Caption = '--'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblNewCycles: TLabel
        Left = 512
        Top = 9
        Width = 10
        Height = 13
        Caption = '--'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnExportData: TButton
        AlignWithMargins = True
        Left = 897
        Top = 4
        Width = 91
        Height = 23
        Align = alRight
        Caption = 'Export Data'
        TabOrder = 0
        OnClick = btnExportDataClick
      end
      object chkIncludeFieldNames: TCheckBox
        AlignWithMargins = True
        Left = 775
        Top = 4
        Width = 116
        Height = 23
        Align = alRight
        Caption = 'Include Field Names'
        TabOrder = 1
      end
    end
    object pnlSearchFilter: TPanel
      Left = 1
      Top = 63
      Width = 992
      Height = 31
      Align = alTop
      TabOrder = 3
      object lblSearch: TLabel
        AlignWithMargins = True
        Left = 25
        Top = 7
        Width = 74
        Height = 13
        Caption = 'Search Module:'
      end
      object edtSearch: TEdit
        AlignWithMargins = True
        Left = 102
        Top = 4
        Width = 151
        Height = 23
        Margins.Left = 101
        Align = alLeft
        TabOrder = 0
        OnChange = edtSearchChange
        ExplicitHeight = 21
      end
    end
  end
  object fdmCycles: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    IndexFieldNames = 'Module'
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 264
    Top = 65529
    object fdmCyclesRecID: TIntegerField
      FieldName = 'RecID'
    end
    object fdmCyclesModule: TStringField
      FieldName = 'Module'
      Size = 40
    end
    object fdmCyclesRefCount: TIntegerField
      FieldName = 'Ref Count'
    end
    object fdmCyclesNewCount: TIntegerField
      FieldName = 'New Count'
    end
    object fdmCyclesDelta: TIntegerField
      FieldName = 'Delta'
    end
  end
  object dlgOpen: TOpenDialog
    Left = 400
    Top = 1
  end
  object dsCycles: TDataSource
    DataSet = fdmCycles
    Left = 344
    Top = 1
  end
  object dlgSave: TSaveDialog
    InitialDir = 'e:\'
    Left = 560
    Top = 9
  end
  object fdBatchMove: TFDBatchMove
    Mappings = <>
    LogFileName = 'Data.log'
    Left = 673
    Top = 15
  end
  object fdGUIxWaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    ScreenCursor = gcrHourGlass
    Left = 777
    Top = 15
  end
end
