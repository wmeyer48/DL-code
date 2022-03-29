object dMain: TdMain
  OnCreate = DataModuleCreate
  Height = 480
  Width = 640
  PixelsPerInch = 96
  object dsPackages: TDataSource
    DataSet = cdsPackages
    Left = 40
    Top = 146
  end
  object dsComponents: TDataSource
    DataSet = cdsComponents
    Left = 136
    Top = 146
  end
  object cdsPackages: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 40
    Top = 88
  end
  object cdsComponents: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 136
    Top = 88
  end
  object cdsScratchComps: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 288
    Top = 88
    object cdsScratchCompsRecID: TIntegerField
      FieldName = 'RecID'
    end
    object cdsScratchCompsDfmID: TIntegerField
      FieldName = 'DfmID'
    end
    object cdsScratchCompsPackageID: TIntegerField
      FieldName = 'PackageID'
    end
    object cdsScratchCompsName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object cdsScratchCompsInstances: TIntegerField
      FieldName = 'Instances'
    end
  end
  object cdsDfmFiles: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 40
    Top = 240
    object cdsDfmFilesRecID: TIntegerField
      FieldName = 'RecID'
    end
    object cdsDfmFilesPath: TStringField
      FieldName = 'Path'
      Size = 150
    end
    object cdsDfmFilesName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object cdsDfmFilesUFN: TStringField
      FieldName = 'UFN'
      Size = 200
    end
  end
  object dsDfmFiles: TDataSource
    DataSet = cdsDfmFiles
    Left = 40
    Top = 298
  end
  object cdsUsedComps: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 152
    Top = 240
    object cdsUsedCompsRecID: TIntegerField
      FieldName = 'RecID'
    end
    object cdsUsedCompsDfmID: TIntegerField
      FieldName = 'DfmID'
    end
    object cdsUsedCompsPackageID: TIntegerField
      FieldName = 'PackageID'
    end
    object cdsUsedCompsName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object cdsUsedCompsInstances: TIntegerField
      FieldName = 'Instances'
    end
  end
  object dsUsedComps: TDataSource
    DataSet = cdsUsedComps
    Left = 152
    Top = 298
  end
  object cdsCompTypes: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 288
    Top = 200
    object cdsCompTypesRecID: TIntegerField
      FieldName = 'RecID'
    end
    object cdsCompTypesName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object cdsCompTypesInstances: TIntegerField
      FieldName = 'Instances'
    end
  end
end
