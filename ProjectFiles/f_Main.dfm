object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Project Files - Dead Cleaner  v.0.1'
  ClientHeight = 577
  ClientWidth = 1039
  Color = clBtnFace
  Constraints.MinWidth = 1055
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 13
  object pnlBottom: TRzPanel
    Left = 0
    Top = 536
    Width = 1039
    Height = 41
    Align = alBottom
    BorderOuter = fsGroove
    TabOrder = 0
    object btnClose: TRzButton
      AlignWithMargins = True
      Left = 959
      Top = 5
      Height = 31
      Align = alRight
      Caption = 'Close'
      TabOrder = 0
      OnClick = btnCloseClick
    end
    object chkExportWithHeader: TRzCheckBox
      Left = 756
      Top = 13
      Width = 114
      Height = 15
      Caption = 'Export With Header'
      State = cbUnchecked
      TabOrder = 1
    end
  end
  object pcMain: TRzPageControl
    Left = 0
    Top = 0
    Width = 1039
    Height = 536
    Hint = ''
    ActivePage = tsInventory
    Align = alClient
    BackgroundColor = 15327190
    UseColoredTabs = True
    ParentBackgroundColor = False
    TabIndex = 0
    TabOrder = 1
    FixedDimension = 19
    object tsInventory: TRzTabSheet
      Color = 15459550
      Caption = 'Inventory'
      object pcFileViews: TRzPageControl
        Left = 0
        Top = 55
        Width = 1035
        Height = 458
        Hint = ''
        ActivePage = tsInvProjectFiles
        ActivePageDefault = tsInvProjectFiles
        Align = alClient
        BackgroundColor = 15327190
        ParentBackgroundColor = False
        SoftCorners = True
        TabIndex = 1
        TabOrder = 0
        TabStyle = tsDoubleSlant
        Transparent = True
        OnPageChange = pcFileViewsPageChange
        FixedDimension = 19
        object tsInvProjectTree: TRzTabSheet
          Color = 15459550
          Caption = 'Explorer'
          object pnlProjTreeHdr: TRzGridPanel
            Left = 0
            Top = 0
            Width = 1031
            Height = 27
            Transparent = True
            Align = alTop
            ColumnCollection = <
              item
                SizeStyle = ssAbsolute
                Value = 125.000000000000000000
              end
              item
                Value = 100.000000000000000000
              end>
            ControlCollection = <
              item
                Column = 0
                Control = lblFilesInProjTree
                Row = 0
              end>
            RowCollection = <
              item
                Value = 100.000000000000000000
              end>
            TabOrder = 0
            object lblFilesInProjTree: TRzLabel
              AlignWithMargins = True
              Left = 5
              Top = 5
              Width = 114
              Height = 13
              Align = alTop
              Caption = 'Files in Project Tree:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
          end
          object splitProjTree: TRzSplitter
            Left = 0
            Top = 27
            Width = 1031
            Height = 408
            Position = 326
            Percent = 32
            RealTimeDrag = True
            SplitterStyle = ssGroupBar
            SplitterWidth = 6
            Align = alClient
            TabOrder = 1
            Transparent = True
            BarSize = (
              326
              0
              332
              408)
            UpperLeftControls = (
              treeDirs)
            LowerRightControls = (
              lvwFiles
              pnlFileTypes)
            object treeDirs: TLsDirTree21
              Left = 0
              Top = 0
              Width = 326
              Height = 408
              FolderType = [ftReadOnly, ftHidden, ftSystem, ftArchive]
              FileList = lvwFiles
              Language = lnEnglish
              SelectedPath = 's:\'
              About = 'Version 2.1.8.6'
              Align = alClient
              HideSelection = False
              Indent = 19
              ParentColor = False
              TabOrder = 0
              TabStop = True
            end
            object lvwFiles: TLsFilelistView28
              Left = 0
              Top = 41
              Width = 699
              Height = 367
              About = 'Version 2.8.8.6'
              ColWidth_Mod = 125
              Directory = 'My Computer'
              DirTree = treeDirs
              FileType = [ftReadOnly, ftHidden, ftSystem, ftArchive]
              Language = lnEnglish
              Mask = '*.pas;*.dpr*;*.dpk'
              ParentDirCaption = ' Up one level'
              TimeFormat = tfShortFormat
              ShortCuts.scCopy = 16451
              ShortCuts.scPaste = 16470
              ShortCuts.scCut = 16472
              ShortCuts.scOpen = 16463
              ShortCuts.scView = 16454
              ShortCuts.scNewFolder = 16462
              ShortCuts.scSelectAll = 16449
              ShortCuts.scDelete = 46
              ShortCuts.scBack = 8
              ShortCuts.scRename = 113
              ShortCuts.scFindFile = 114
              ShortCuts.scRefresh = 116
              ShortCuts.Actions = [vaCopy, vaPaste, vaCut, vaOpen, vaView, vaNewFolder, vaSelectAll, vaDelete, vaBack, vaRename, vaFindFile, vaRefresh]
              LItemColorByATTR = False
              Align = alClient
              ParentColor = False
              TabOrder = 0
              TabStop = True
            end
            object pnlFileTypes: TRzGridPanel
              Left = 0
              Top = 0
              Width = 699
              Height = 41
              Transparent = True
              Align = alTop
              ColumnCollection = <
                item
                  SizeStyle = ssAbsolute
                  Value = 100.000000000000000000
                end
                item
                  Value = 100.000000000000000000
                end>
              ControlCollection = <
                item
                  Column = 1
                  Control = pnlFileTypesSel
                  Row = 0
                end
                item
                  Column = 0
                  Control = lblFileFilter
                  Row = 0
                end>
              RowCollection = <
                item
                  Value = 100.000000000000000000
                end>
              TabOrder = 1
              DesignSize = (
                699
                41)
              object pnlFileTypesSel: TRzPanel
                Left = 102
                Top = 2
                Width = 595
                Height = 37
                Align = alClient
                BorderOuter = fsNone
                TabOrder = 0
                Transparent = True
                object chkFilesPas: TRzCheckBox
                  Left = 9
                  Top = 11
                  Width = 46
                  Height = 15
                  Caption = '*.pas'
                  State = cbUnchecked
                  TabOrder = 0
                  Transparent = True
                  OnClick = chkFilesMaskClick
                end
                object chkFilesDpr: TRzCheckBox
                  Left = 71
                  Top = 11
                  Width = 45
                  Height = 15
                  Caption = '*.dpr'
                  State = cbUnchecked
                  TabOrder = 1
                  Transparent = True
                  OnClick = chkFilesMaskClick
                end
                object chkFilesDproj: TRzCheckBox
                  Left = 132
                  Top = 11
                  Width = 54
                  Height = 15
                  Caption = '*.dproj'
                  State = cbUnchecked
                  TabOrder = 2
                  Transparent = True
                  OnClick = chkFilesMaskClick
                end
                object chkFilesDpk: TRzCheckBox
                  Left = 202
                  Top = 11
                  Width = 46
                  Height = 15
                  Caption = '*.dpk'
                  State = cbUnchecked
                  TabOrder = 3
                  Transparent = True
                  OnClick = chkFilesMaskClick
                end
              end
              object lblFileFilter: TRzLabel
                Left = 5
                Top = 14
                Width = 94
                Height = 13
                Anchors = []
                Caption = 'Show Files of Type:'
                Transparent = True
                ExplicitTop = 15
              end
            end
          end
        end
        object tsInvProjectFiles: TRzTabSheet
          Color = 15459550
          Caption = 'Project Files (All)'
          object grdAllFiles: TJvDBGrid
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 1025
            Height = 388
            Align = alClient
            DataSource = dmMain.dsFiles
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnTitleClick = grdAllFilesTitleClick
            TitleButtons = True
            TitleArrow = True
            MinColumnWidth = 55
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            ColumnResize = gcrNone
            EditControls = <>
            RowsHeight = 17
            TitleRowHeight = 17
            Columns = <
              item
                Expanded = False
                FieldName = 'RecID'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Name'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Ext'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FullName'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Path'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Used'
                Width = 55
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Ambiguous'
                Visible = True
              end>
          end
          object pnlProjFilesBottom: TRzPanel
            Left = 0
            Top = 394
            Width = 1031
            Height = 41
            Align = alBottom
            BorderOuter = fsLowered
            ParentColor = True
            TabOrder = 1
            object lblInvFiles: TRzLabel
              Left = 750
              Top = 14
              Width = 4
              Height = 13
              Caption = '-'
            end
            object btnExportProjTree: TRzButton
              AlignWithMargins = True
              Left = 875
              Top = 5
              Width = 151
              Height = 31
              Align = alRight
              Caption = 'Export Project Files'
              TabOrder = 0
              OnClick = btnExportProjTreeClick
            end
          end
        end
        object tsInvProjectFilesUsed: TRzTabSheet
          Color = 15459550
          Caption = 'Mapped Files (Used)'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object grdMappedModules: TJvDBGrid
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 1025
            Height = 388
            Align = alClient
            DataSource = dmMain.dsMapUnits
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnTitleClick = grdMappedModulesTitleClick
            TitleButtons = True
            TitleArrow = True
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            ColumnResize = gcrNone
            EditControls = <>
            RowsHeight = 17
            TitleRowHeight = 17
            Columns = <
              item
                Expanded = False
                FieldName = 'RecID'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Name'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Ext'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FullName'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Path'
                Visible = True
              end>
          end
          object pnlMappedFilesBottom: TRzPanel
            Left = 0
            Top = 394
            Width = 1031
            Height = 41
            Align = alBottom
            BorderOuter = fsLowered
            ParentColor = True
            TabOrder = 1
            object lblMappedFiles: TRzLabel
              Left = 750
              Top = 14
              Width = 4
              Height = 13
              Caption = '-'
            end
            object btnExportMappedFiles: TRzButton
              AlignWithMargins = True
              Left = 875
              Top = 5
              Width = 151
              Height = 31
              Align = alRight
              Caption = 'Export Mapped Files'
              TabOrder = 0
              OnClick = btnExportMappedFilesClick
            end
          end
        end
        object tsDCUFiles: TRzTabSheet
          Color = 15459550
          Caption = 'DCU Files'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object grdDCUFiles: TJvDBGrid
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 1025
            Height = 388
            Align = alClient
            DataSource = dmMain.dsDCUs
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnTitleClick = grdDCUFilesTitleClick
            TitleButtons = True
            TitleArrow = True
            MinColumnWidth = 55
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            ColumnResize = gcrNone
            EditControls = <>
            RowsHeight = 17
            TitleRowHeight = 17
            Columns = <
              item
                Expanded = False
                FieldName = 'RecID'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Name'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Ext'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FullName'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Path'
                Visible = True
              end>
          end
          object pnlDCUBottom: TRzPanel
            Left = 0
            Top = 394
            Width = 1031
            Height = 41
            Align = alBottom
            BorderOuter = fsLowered
            ParentColor = True
            TabOrder = 1
            object lblDCUFiles: TRzLabel
              Left = 750
              Top = 14
              Width = 4
              Height = 13
              Caption = '-'
            end
            object btnExportDCUFiles: TRzButton
              AlignWithMargins = True
              Left = 875
              Top = 5
              Width = 151
              Height = 31
              Align = alRight
              Caption = 'Export DCU Files'
              TabOrder = 0
              OnClick = btnExportDCUFilesClick
            end
          end
        end
        object tsProjUnits: TRzTabSheet
          Color = 15459550
          Caption = 'Proj Units (MMX)'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object grdUnitsRep: TJvDBGrid
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 1025
            Height = 388
            Align = alClient
            DataSource = dmMain.dsProjUnits
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnTitleClick = grdUnitsRepTitleClick
            TitleButtons = True
            TitleArrow = True
            MinColumnWidth = 55
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            ColumnResize = gcrNone
            EditControls = <>
            RowsHeight = 17
            TitleRowHeight = 17
            Columns = <
              item
                Expanded = False
                FieldName = 'RecID'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Name'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Ext'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FullName'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Path'
                Visible = True
              end>
          end
          object pnlMMXFilesBottom: TRzPanel
            Left = 0
            Top = 394
            Width = 1031
            Height = 41
            Align = alBottom
            BorderOuter = fsLowered
            ParentColor = True
            TabOrder = 1
            object lblProjUnits: TRzLabel
              Left = 750
              Top = 14
              Width = 4
              Height = 13
              Caption = '-'
            end
            object btnExportProjectUnits: TRzButton
              AlignWithMargins = True
              Left = 875
              Top = 5
              Width = 151
              Height = 31
              Align = alRight
              Caption = 'Export Project Units'
              TabOrder = 0
              OnClick = btnExportProjectUnitsClick
            end
          end
        end
        object tsDeadModules: TRzTabSheet
          Color = 15459550
          Caption = 'Dead Modules'
          object grdDeadModules: TJvDBGrid
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 1025
            Height = 388
            Align = alClient
            DataSource = dmMain.dsDeadFiles
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnTitleClick = grdDeadModulesTitleClick
            MultiSelect = True
            TitleButtons = True
            TitleArrow = True
            MinColumnWidth = 55
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            ColumnResize = gcrNone
            EditControls = <>
            RowsHeight = 17
            TitleRowHeight = 17
            Columns = <
              item
                Expanded = False
                FieldName = 'RecID'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Tag'
                Width = 55
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Name'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Ext'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FullName'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Path'
                Visible = True
              end>
          end
          object pnlDeadModulesActions: TRzPanel
            Left = 0
            Top = 394
            Width = 1031
            Height = 41
            Align = alBottom
            BorderOuter = fsLowered
            ParentColor = True
            TabOrder = 1
            object lblDeadFiles: TRzLabel
              Left = 750
              Top = 14
              Width = 4
              Height = 13
              Caption = '-'
            end
            object chkDeadSelected: TRzCheckBox
              AlignWithMargins = True
              Left = 5
              Top = 13
              Width = 123
              Height = 23
              Margins.Top = 11
              Align = alLeft
              Caption = 'Tag Selected Modules'
              State = cbUnchecked
              TabOrder = 0
              Transparent = True
              OnClick = chkDeadSelectedClick
              ExplicitHeight = 15
            end
            object btnExportDeadModules: TRzButton
              AlignWithMargins = True
              Left = 875
              Top = 5
              Width = 151
              Height = 31
              Align = alRight
              Caption = 'Export Dead Modules'
              TabOrder = 1
              OnClick = btnExportDeadModulesClick
            end
            object btnDeleteDeadFiles: TRzButton
              AlignWithMargins = True
              Left = 151
              Top = 5
              Width = 151
              Height = 31
              Margins.Left = 20
              Align = alLeft
              Caption = 'Delete Tagged Modules'
              TabOrder = 2
              OnClick = btnDeleteDeadFilesClick
            end
            object memDead: TRzMemo
              Left = 324
              Top = 5
              Width = 263
              Height = 31
              Color = clInfoBk
              Lines.Strings = (
                'Deletes all files in the folder which match the name, '
                'with any extension.')
              ReadOnly = True
              TabOrder = 3
            end
          end
        end
        object tsDuplicateFileNames: TRzTabSheet
          Color = 15459550
          Caption = 'Duplicate FileNames'
          object grdDuplicateFileNames: TJvDBGrid
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 1025
            Height = 388
            Align = alClient
            DataSource = dmMain.dsDuplicates
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnTitleClick = grdDuplicateFileNamesTitleClick
            MultiSelect = True
            TitleButtons = True
            TitleArrow = True
            MinColumnWidth = 55
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            ColumnResize = gcrNone
            EditControls = <>
            RowsHeight = 17
            TitleRowHeight = 17
            Columns = <
              item
                Expanded = False
                FieldName = 'RecID'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Tag'
                Width = 55
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Name'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Ext'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FullName'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Path'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Used'
                Width = 55
                Visible = True
              end>
          end
          object pnlDuplicatesActions: TRzPanel
            Left = 0
            Top = 394
            Width = 1031
            Height = 41
            Align = alBottom
            BorderOuter = fsLowered
            ParentColor = True
            TabOrder = 1
            object lblDupeFiles: TRzLabel
              Left = 750
              Top = 14
              Width = 4
              Height = 13
              Caption = '-'
            end
            object btnExportDuplicateFiles: TRzButton
              AlignWithMargins = True
              Left = 875
              Top = 5
              Width = 151
              Height = 31
              Align = alRight
              Caption = 'Export Duplicate Files'
              TabOrder = 0
              OnClick = btnExportDuplicateFilesClick
            end
            object chkDupeSelected: TRzCheckBox
              AlignWithMargins = True
              Left = 5
              Top = 13
              Width = 123
              Height = 23
              Margins.Top = 11
              Align = alLeft
              Caption = 'Tag Selected Modules'
              State = cbUnchecked
              TabOrder = 1
              Transparent = True
              OnClick = chkDupeSelectedClick
              ExplicitHeight = 15
            end
            object btnDeleteDupeFiles: TRzButton
              AlignWithMargins = True
              Left = 151
              Top = 5
              Width = 151
              Height = 31
              Margins.Left = 20
              Align = alLeft
              Caption = 'Delete Tagged Modules'
              TabOrder = 2
              OnClick = btnDeleteDupeFilesClick
            end
            object memDuplicates: TRzMemo
              Left = 316
              Top = 5
              Width = 263
              Height = 31
              Color = clInfoBk
              Lines.Strings = (
                'Deletes all files in the folder which match the name, '
                'with any extension.')
              ReadOnly = True
              TabOrder = 3
            end
            object JvDBGrid1: TJvDBGrid
              Left = 640
              Top = 8
              Width = 320
              Height = 120
              TabOrder = 4
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              SelectColumnsDialogStrings.Caption = 'Select columns'
              SelectColumnsDialogStrings.OK = '&OK'
              SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
              EditControls = <>
              RowsHeight = 17
              TitleRowHeight = 17
            end
          end
        end
      end
      object pnlFolders: TRzGridPanel
        Left = 0
        Top = 0
        Width = 1035
        Height = 55
        Transparent = True
        Align = alTop
        ColumnCollection = <
          item
            Value = 50.000000000000000000
          end
          item
            Value = 50.000000000000000000
          end>
        Constraints.MaxWidth = 1035
        ControlCollection = <
          item
            Column = 0
            Control = pnlPInvProjFolders
            Row = 0
          end
          item
            Column = 1
            Control = pnlInvMapFile
            Row = 0
          end
          item
            Column = 0
            Control = pnlInvDCUFolder
            Row = 1
          end
          item
            Column = 1
            Control = pnlInvUnitReportFile
            Row = 1
          end>
        RowCollection = <
          item
            Value = 50.000000000000000000
          end
          item
            Value = 50.000000000000000000
          end>
        TabOrder = 1
        object pnlPInvProjFolders: TRzPanel
          Left = 2
          Top = 2
          Width = 516
          Height = 26
          Align = alClient
          BorderOuter = fsNone
          TabOrder = 0
          Transparent = True
          DesignSize = (
            516
            26)
          object lblInvProjectFolders: TRzLabel
            Left = 10
            Top = 6
            Width = 76
            Height = 13
            Anchors = []
            Caption = 'Project Folders:'
            Transparent = True
          end
          object edtProjectFolders: TRzButtonEdit
            Left = 91
            Top = 1
            Width = 390
            Height = 21
            Text = ''
            Anchors = []
            Constraints.MaxWidth = 390
            Constraints.MinWidth = 390
            TabOrder = 0
            AltBtnNumGlyphs = 1
            ButtonNumGlyphs = 1
            OnButtonClick = edtProjectFoldersButtonClick
          end
        end
        object pnlInvMapFile: TRzPanel
          Left = 518
          Top = 2
          Width = 515
          Height = 26
          Align = alClient
          BorderOuter = fsNone
          TabOrder = 1
          Transparent = True
          object lblInvMapFile: TRzLabel
            Left = 38
            Top = 6
            Width = 43
            Height = 13
            Caption = 'Map File:'
            Transparent = True
          end
          object edtMapFile: TRzButtonEdit
            Left = 86
            Top = 2
            Width = 390
            Height = 21
            Text = ''
            Constraints.MaxWidth = 390
            Constraints.MinWidth = 390
            TabOrder = 0
            AltBtnNumGlyphs = 1
            ButtonNumGlyphs = 1
            OnButtonClick = edtMapFileButtonClick
          end
        end
        object pnlInvDCUFolder: TRzPanel
          Left = 2
          Top = 28
          Width = 516
          Height = 25
          Align = alClient
          BorderOuter = fsNone
          TabOrder = 2
          Transparent = True
          object lblInvDCUFolder: TRzLabel
            Left = 28
            Top = 6
            Width = 58
            Height = 13
            Caption = 'DCU Folder:'
            Transparent = True
          end
          object edtDCUFolder: TRzButtonEdit
            Left = 90
            Top = 3
            Width = 390
            Height = 21
            Text = ''
            Constraints.MaxWidth = 390
            Constraints.MinWidth = 390
            TabOrder = 0
            AltBtnNumGlyphs = 1
            ButtonNumGlyphs = 1
            OnButtonClick = edtDCUFolderButtonClick
          end
        end
        object pnlInvUnitReportFile: TRzPanel
          Left = 518
          Top = 28
          Width = 515
          Height = 25
          Align = alClient
          BorderOuter = fsNone
          TabOrder = 3
          Transparent = True
          object lblInvUnitReport: TRzLabel
            Left = 22
            Top = 6
            Width = 59
            Height = 13
            Caption = 'Unit Report:'
            Transparent = True
          end
          object edtUnitsRepFile: TRzButtonEdit
            Left = 86
            Top = 3
            Width = 390
            Height = 21
            Text = ''
            Constraints.MaxWidth = 390
            Constraints.MinWidth = 390
            TabOrder = 0
            AltBtnNumGlyphs = 1
            ButtonNumGlyphs = 1
            OnButtonClick = edtUnitsRepFileButtonClick
          end
        end
      end
      object RzPanel1: TRzPanel
        Left = 980
        Top = 0
        Width = 55
        Height = 55
        BorderOuter = fsGroove
        Constraints.MaxHeight = 55
        Constraints.MaxWidth = 55
        Constraints.MinHeight = 55
        Constraints.MinWidth = 55
        ParentColor = True
        TabOrder = 2
        object btnInvRefresh: TSpeedButton
          AlignWithMargins = True
          Left = 5
          Top = 5
          Width = 45
          Height = 45
          Align = alClient
          Glyph.Data = {
            760E0000424D760E000000000000360000002800000020000000260000000100
            180000000000400E0000182E0000182E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF8F6E7C8BDD8A6
            93C9836ABE6A4BBD6748BC6545BD694ACA876ED9A795E8C9BEFCF9F8FFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5E8E3D7A28FBB6444B75A38B75A
            38B75A38B75A38B75A38B75A38B75A38B75A38B75A38B75A38BC6646D8A694F6
            EAE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFDFBFADCAE9DB85D3CB75A38B75A38B75A38B75A
            38B75A38B75A38B75A38B75A38B75A38B75A38B75A38B75A38B75A38B75A38B8
            5C3ADCAF9FFEFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFF5E8E4C4785DB75A38B75A38B75A38B75A38B75A38B75A
            38BA6241C17153C88066CE9079CF927BC17154B75A38B75A38B75A38B75A38B7
            5A38B75A38C88167F6EAE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFF3E4DFBE6A4CB75A38B75A38B75A38B75A38BA6040D9A795F9F1
            EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF3F0E0B7A8C17053B75A38B7
            5A38B75A38B75A38BC6647F4E6E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFF5E7E2BD6748B75A38B75A38B75A38BA603FD7A492F9F1EEFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDE1BBADB9
            5F3EB75A38B75A38B75A38C06F51F8EFEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FDFAFAC57A5FB75A38B75A38B75A38BD6848F4E6E1FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3
            E3DDC37558B75A38B75A38B75A38C4785DFCF8F6FFFFFFFFFFFFFFFFFFFFFFFF
            D8A593B75A38B75A38B75A38BA6241F1DED7FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFF8EFEBBF6D4FB75A38B75A38B75A38DBAC9BFFFFFFFFFFFFFFFFFFF9F2EF
            B95E3DB75A38B75A38B95E3DECD4CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFF3E4DEBB6444B75A38B75A38BA603FF7EDE9FFFFFFFFFFFFDFB5A6
            B75A38B75A38B75A38E1BAACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFE1B9ABB75A38B75A38B75A38D29984FFFFFFFFFEFEC27457
            B75A38B75A38BD6748FDFAF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFEFCFBC17255B75A38B75A38BB6242FDFAF9EED8CFB75A38
            B75A38B75A38DAAA98FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFE1BAACB75A38B75A38B75A38EACEC4D49D88B75A38
            B75A38B85B3AF7EEEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFF7EDE9B75A38B75A38B75A38D39B86CC8B73B75A38
            B75A38C06F51FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFC4785CB75A38B75A38C67D62C77F64B75A38
            B75A38C98268FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFCF927BB75A38B75A38BC6647C27356B75A38
            B75A38D1957FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFD6A18DB75A38B75A38B85B3ABD6849B75A38
            B75A38D29984FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFDFB6A7C67C61C67C61C67C61C06F52B75A38
            B75A38C67D62FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1957FB75A38
            B75A38BA6040FEFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1BBADB75A38
            B75A38B75A38F4E6E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2E1DBB75A38
            B75A38B75A38D7A491FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDBC6646
            B75A38B75A38B95E3DF6EAE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFE0B8A9FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0B8A9
            B75A38B75A38B75A38D1957FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFB75A38CC8971F9F0EDFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFC
            C57A5EB75A38B75A38B75A38EDD5CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFB75A38B75A38BD6848EACEC4FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            EFDBD3B75B39B75A38B75A38B95F3DE8CBC0FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFB75A38B75A38B75A38B75A38D5A08CFCF9F8FFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFD49C88B75A38B75A38B75A38B75B39E1BAACFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFB75A38B75A38B75A38B75A38B75A38C3765AF2E2DCFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFAF4F2C77E64B75A38B75A38B75A38B75A38D49B87F4E5E0FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFB75A38B75A38B75A38B75A38B75A38B75A38B95F3DE0
            B8A9FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFDFAFAD39984B75A38B75A38B75A38B75A38B75A38C9836AE6C6
            BAFDFAFAFFFFFFFFFFFFB75A38B75A38B75A38B75A38B75A38B75A38B75A38B7
            5A38CC8971F9F0EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFEFEE0B8AAB85C3AB75A38B75A38B75A38B75A38B75A
            38B85D3CC17255C9846BB75A38B75A38B75A38B75A38B75A38B75A38B75A38B7
            5A38B75A38BD6849EACFC5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDD5CCBF6C4EB75A38B75A38B75A38B75A
            38B75A38B75A38B75A38B75A38B75A38B75A38B75A38B75A38B75A38B75A38B7
            5A38B75A38B75A38B75A38D5A08CFCF9F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDECD4CBD39B86BC6545B75A
            38B75A38B75A38B75A38B75A38B75A38B75A38B75A38B75A38B75A38B75A38B7
            5A38B75A38B75A38B75A38B75A38C3765AF2E2DCFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFBFAE9CD
            C3D49C88CB876FC67C61B75A38B75A38B75A38B75A38B75A38B75A38B75A38B7
            5A38B75A38B75A38B75A38B75A38B75A38CE8E77FDFAF9FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFB75A38B75A38B75A38B75A38B75A38B75A38B75A38B7
            5A38B75A38B75A38B85C3AD1957FF2E1DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFB75A38B75A38B75A38B75A38B75A38B75A38B75A38B7
            5A38BA603FD5A08CF6EAE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFB75A38B75A38B75A38B75A38B75A38B75A38BC6545DA
            AB9AF9F1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFB75A38B75A38B75A38B75A38BF6C4EDFB7A8FCF7F6FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFB75A38B75A38C37559E4C2B5FDFBFAFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFC78065E9CDC2FEFEFDFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          StyleElements = [seFont, seClient]
          OnClick = btnInvRefreshClick
          ExplicitLeft = 48
          ExplicitTop = 32
          ExplicitWidth = 23
          ExplicitHeight = 22
        end
      end
    end
    object tsSearch: TRzTabSheet
      TabVisible = False
      Caption = 'Search'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object pnlSearchTop: TRzPanel
        Left = 0
        Top = 0
        Width = 1035
        Height = 65
        Align = alTop
        BorderOuter = fsGroove
        TabOrder = 0
        object pnlSearchRight: TRzPanel
          Left = 502
          Top = 2
          Width = 500
          Height = 61
          Align = alLeft
          BorderOuter = fsNone
          Constraints.MaxWidth = 500
          Constraints.MinWidth = 500
          Enabled = False
          TabOrder = 0
          object lblSearchMapFile: TRzLabel
            Left = 47
            Top = 11
            Width = 43
            Height = 13
            Caption = 'Map File:'
            Enabled = False
          end
          object lblSearchUnitReport: TRzLabel
            Left = 31
            Top = 35
            Width = 59
            Height = 13
            Caption = 'Unit Report:'
            Enabled = False
          end
          object edtSearchMapFile: TRzButtonEdit
            Left = 94
            Top = 8
            Width = 400
            Height = 21
            Text = ''
            Constraints.MaxWidth = 400
            Constraints.MinWidth = 400
            Enabled = False
            TabOrder = 0
            AltBtnNumGlyphs = 1
            ButtonNumGlyphs = 1
          end
          object edtSearchUnitReport: TRzButtonEdit
            Left = 94
            Top = 32
            Width = 400
            Height = 21
            Text = ''
            Constraints.MaxWidth = 400
            Constraints.MinWidth = 400
            Enabled = False
            TabOrder = 1
            AltBtnNumGlyphs = 1
            ButtonNumGlyphs = 1
          end
        end
        object pnlSearchLeft: TRzPanel
          Left = 2
          Top = 2
          Width = 500
          Height = 61
          Align = alLeft
          BorderOuter = fsNone
          Constraints.MaxWidth = 500
          Constraints.MinWidth = 500
          TabOrder = 1
          object lblSearchFolders: TRzLabel
            Left = 14
            Top = 11
            Width = 75
            Height = 13
            Caption = 'Search Folders:'
          end
          object lblSearchTokens: TRzLabel
            Left = 15
            Top = 35
            Width = 74
            Height = 13
            Caption = 'Search Tokens:'
          end
          object edtSearchFollers: TRzButtonEdit
            Left = 94
            Top = 8
            Width = 400
            Height = 21
            Text = ''
            Constraints.MaxWidth = 400
            Constraints.MinWidth = 400
            TabOrder = 0
            AltBtnNumGlyphs = 1
            ButtonNumGlyphs = 1
          end
          object edtSearchTokens: TRzButtonEdit
            Left = 94
            Top = 32
            Width = 400
            Height = 21
            Text = ''
            Constraints.MaxWidth = 400
            Constraints.MinWidth = 400
            TabOrder = 1
            AltBtnNumGlyphs = 1
            ButtonNumGlyphs = 1
          end
        end
      end
    end
  end
  object dlgOpenProjectFolders: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <>
    Options = [fdoPickFolders, fdoAllowMultiSelect]
    Left = 48
    Top = 536
  end
  object dlgOpenDCUFolder: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <>
    Options = [fdoPickFolders]
    Left = 152
    Top = 536
  end
  object dlgOpenMapFile: TFileOpenDialog
    FavoriteLinks = <>
    FileName = '*.map'
    FileTypes = <>
    Options = []
    Left = 256
    Top = 536
  end
  object dlgOpenUnitReportFile: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <>
    Options = []
    Left = 368
    Top = 536
  end
  object dlgSave: TFileSaveDialog
    FavoriteLinks = <>
    FileTypes = <>
    Options = []
    Left = 562
    Top = 535
  end
end
