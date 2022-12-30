object dmMain: TdmMain
  OnCreate = DataModuleCreate
  Height = 260
  Width = 805
  object fdmFiles: TFDMemTable
    Active = True
    Indexes = <
      item
        Name = 'idxMain'
      end>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 48
    Top = 40
    object fdmFilesRecID: TIntegerField
      FieldName = 'RecID'
    end
    object fdmFilesName: TStringField
      FieldName = 'Name'
      Size = 60
    end
    object fdmFilesExt: TStringField
      FieldName = 'Ext'
    end
    object fdmFilesFullName: TStringField
      FieldName = 'FullName'
      Size = 220
    end
    object fdmFilesPath: TStringField
      FieldName = 'Path'
      Size = 200
    end
    object fdmFilesUsed: TBooleanField
      FieldName = 'Used'
    end
    object fdmFilesAmbiguous: TBooleanField
      FieldName = 'Ambiguous'
    end
  end
  object fdmDCUs: TFDMemTable
    Active = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 144
    Top = 40
    object fdmDCUsRecID: TIntegerField
      FieldName = 'RecID'
    end
    object fdmDCUsName: TStringField
      FieldName = 'Name'
      Size = 60
    end
    object fdmDCUsExt: TStringField
      FieldName = 'Ext'
    end
    object fdmDCUsFullName: TStringField
      FieldName = 'FullName'
      Size = 220
    end
    object fdmDCUsPath: TStringField
      FieldName = 'Path'
      Size = 200
    end
  end
  object fdmProjUnits: TFDMemTable
    Active = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 240
    Top = 40
    object fdmProjUnitsRecID: TIntegerField
      FieldName = 'RecID'
    end
    object fdmProjUnitsName: TStringField
      FieldName = 'Name'
      Size = 60
    end
    object fdmProjUnitsExt: TStringField
      FieldName = 'Ext'
    end
    object fdmProjUnitsFullName: TStringField
      FieldName = 'FullName'
      Size = 220
    end
    object fdmProjUnitsPath: TStringField
      FieldName = 'Path'
      Size = 200
    end
  end
  object fdmMapUnits: TFDMemTable
    Active = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 344
    Top = 40
    object fdmMapUnitsRecID: TIntegerField
      FieldName = 'RecID'
    end
    object fdmMapUnitsName: TStringField
      FieldName = 'Name'
      Size = 60
    end
    object fdmMapUnitsExt: TStringField
      FieldName = 'Ext'
    end
    object fdmMapUnitsFullName: TStringField
      FieldName = 'FullName'
      Size = 220
    end
    object fdmMapUnitsPath: TStringField
      FieldName = 'Path'
      Size = 200
    end
  end
  object dsFiles: TDataSource
    DataSet = fdmFiles
    Left = 48
    Top = 112
  end
  object dsDCUs: TDataSource
    DataSet = fdmDCUs
    Left = 144
    Top = 112
  end
  object dsProjUnits: TDataSource
    DataSet = fdmProjUnits
    Left = 240
    Top = 112
  end
  object dsMapUnits: TDataSource
    DataSet = fdmMapUnits
    Left = 344
    Top = 112
  end
  object fdmDeadFiles: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'RecID'
        DataType = ftInteger
      end
      item
        Name = 'Name'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Ext'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FullName'
        DataType = ftString
        Size = 220
      end
      item
        Name = 'Path'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'Tag'
        DataType = ftBoolean
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 440
    Top = 40
    object fdmDeadFilesRecID: TIntegerField
      FieldName = 'RecID'
    end
    object fdmDeadFilesTag: TBooleanField
      FieldName = 'Tag'
    end
    object fdmDeadFilesName: TStringField
      FieldName = 'Name'
      Size = 60
    end
    object fdmDeadFilesExt: TStringField
      FieldName = 'Ext'
    end
    object fdmDeadFilesFullName: TStringField
      FieldName = 'FullName'
      Size = 220
    end
    object fdmDeadFilesPath: TStringField
      FieldName = 'Path'
      Size = 200
    end
  end
  object dsDeadFiles: TDataSource
    DataSet = fdmDeadFiles
    Left = 440
    Top = 112
  end
  object fdmDuplicates: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 544
    Top = 40
    object fdmDuplicatesRecID: TIntegerField
      FieldName = 'RecID'
    end
    object fdmDuplicatesTag: TBooleanField
      FieldName = 'Tag'
    end
    object fdmDuplicatesName: TStringField
      FieldName = 'Name'
      Size = 60
    end
    object fdmDuplicatesExt: TStringField
      FieldName = 'Ext'
    end
    object fdmDuplicatesFullName: TStringField
      FieldName = 'FullName'
      Size = 220
    end
    object fdmDuplicatesPath: TStringField
      FieldName = 'Path'
      Size = 200
    end
    object fdmDuplicatesUsed: TBooleanField
      FieldName = 'Used'
    end
  end
  object dsDuplicates: TDataSource
    DataSet = fdmDuplicates
    Left = 544
    Top = 112
  end
  object fdmColCalc: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 664
    Top = 40
  end
end
