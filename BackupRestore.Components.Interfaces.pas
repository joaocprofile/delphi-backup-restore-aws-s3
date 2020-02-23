unit BackupRestore.Components.Interfaces;

interface

uses BackupRestore.Interfaces;

type
   IBackupRestoreComponents = interface
     ['{43FD54C7-4DFF-4325-BAFA-A1EA76285E50}']

     procedure Config(AType: TBActionType);
     procedure Backup;
     procedure Restore;
   end;

implementation

end.
