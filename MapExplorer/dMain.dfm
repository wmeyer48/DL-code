object dmMain: TdmMain
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 222
  Width = 461
  object cdsModules: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 56
    Top = 48
    object cdsModulesRecID: TIntegerField
      FieldName = 'RecID'
    end
    object cdsModulesSegment: TStringField
      FieldName = 'Segment'
      Size = 10
    end
    object cdsModulesGroup: TStringField
      FieldName = 'Group'
      Size = 10
    end
    object cdsModulesModule: TStringField
      FieldName = 'Module'
      Size = 50
    end
  end
  object cdsPublics: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 144
    Top = 48
    object cdsPublicsRecID: TIntegerField
      FieldName = 'RecID'
    end
    object cdsPublicsSegment: TStringField
      FieldName = 'Segment'
      Size = 10
    end
    object cdsPublicsModule: TStringField
      FieldName = 'Module'
      Size = 30
    end
    object cdsPublicsMember: TStringField
      FieldName = 'Member'
      Size = 50
    end
  end
  object dsModules: TDataSource
    DataSet = cdsModules
    Left = 56
    Top = 120
  end
  object dsPublics: TDataSource
    DataSet = cdsPublics
    Left = 144
    Top = 120
  end
end
