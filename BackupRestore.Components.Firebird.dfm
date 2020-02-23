object ComponentsFirebird: TComponentsFirebird
  OldCreateOrder = False
  Height = 189
  Width = 305
  object FDGUIxWaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 64
    Top = 92
  end
  object FDPhysFBDriverLink: TFDPhysFBDriverLink
    VendorLib = 'C:\dev\git\delphi-legados\bin\fbclient.dll'
    Left = 64
    Top = 36
  end
  object FDFBNRestore: TFDFBNRestore
    DriverLink = FDPhysFBDriverLink
    Protocol = ipTCPIP
    Host = 'localhost'
    Port = 3050
    UserName = 'SYSDBA'
    Password = 'masterkey'
    Database = 'C:\dev\git\delphi-legados\bin\data.fdb'
    BackupFiles.Strings = (
      
        'C:\dev\git\delphi-legados\bin\backup.fbk                        ' +
        '                        ')
    Left = 208
    Top = 92
  end
  object FDFBNBackup: TFDFBNBackup
    DriverLink = FDPhysFBDriverLink
    Protocol = ipTCPIP
    Host = 'localhost'
    Port = 3050
    UserName = 'SYSDBA'
    Password = 'masterkey'
    Database = 'C:\dev\git\delphi-legados\bin\data.fdb'
    BackupFile = 'C:\dev\git\delphi-legados\bin\backup.fbk'
    Left = 208
    Top = 36
  end
end
