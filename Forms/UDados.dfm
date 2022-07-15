object FormDados: TFormDados
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 213
  Width = 491
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=agenda'
      'User_Name=root'
      'Server=localhost'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 80
    Top = 32
  end
  object MySQLDriver: TFDPhysMySQLDriverLink
    VendorLib = 'C:\libmysql.dll'
    Left = 72
    Top = 96
  end
  object FDGUIxWaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 88
    Top = 153
  end
  object ProfisionaisDS: TDataSource
    DataSet = Profisionais
    Left = 240
    Top = 80
  end
  object Profisionais: TFDTable
    Active = True
    IndexFieldNames = 'id_proficional'
    Connection = FDConnection
    TableName = 'agenda.proficionais'
    Left = 240
    Top = 32
    object Profisionaisid_proficional: TIntegerField
      FieldName = 'id_proficional'
      Origin = 'id_proficional'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Profisionaisds_profisional: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ds_profisional'
      Origin = 'ds_profisional'
      Size = 100
    end
    object Profisionaisds_especialidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ds_especialidade'
      Origin = 'ds_especialidade'
      Size = 45
    end
    object Profisionaisnr_contato: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nr_contato'
      Origin = 'nr_contato'
      EditMask = '!\(99\)000-0000;1;_'
      Size = 12
    end
  end
end
