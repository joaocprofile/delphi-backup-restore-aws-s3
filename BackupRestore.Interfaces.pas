unit BackupRestore.Interfaces;

interface

type
   TDatabaseType = (dtFB, dtIB);
   TBActionType = (atBackup, atRestore);

   IBackupRestoreRegistry = interface;

   IBackupRestore = interface
     ['{43FD54C7-4DFF-4325-BAFA-A1EA76285E50}']

     function Registry: IBackupRestoreRegistry;
     function Backup: IBackupRestore;
     function Restore: IBackupRestore;
   end;

   IBackupRestoreRegistry = interface
     ['{7B7ADB35-5294-4999-BDD4-118182CADB6C}']
     function Save: IBackupRestoreRegistry;
     function Load: IBackupRestoreRegistry;

     function PrefixoName(Value: String): IBackupRestoreRegistry; overload;
     function PrefixoName: String; overload;
     function FilePath(Value: String): IBackupRestoreRegistry; overload;
     function FilePath: String; overload;
     function ServiceAutoStart(Value: Boolean): IBackupRestoreRegistry; overload;
     function ServiceAutoStart: Boolean; overload;
     function PackagingFile(Value: Boolean): IBackupRestoreRegistry; overload;
     function PackagingFile: Boolean; overload;
     function UploadS3Active(Value: Boolean): IBackupRestoreRegistry; overload;
     function UploadS3Active: Boolean; overload;
     function DatabaseType(Value: String): IBackupRestoreRegistry; overload;
     function DatabaseType: String; overload;
     function Database(Value: String): IBackupRestoreRegistry; overload;
     function Database: String; overload;
     function Host(Value: String): IBackupRestoreRegistry; overload;
     function Host: String; overload;
     function Port(Value: String): IBackupRestoreRegistry; overload;
     function Port: String; overload;
     function UserName(Value: String): IBackupRestoreRegistry; overload;
     function UserName: String; overload;
     function Password(Value: String): IBackupRestoreRegistry; overload;
     function Password: String; overload;
     function S3bucket(Value: String): IBackupRestoreRegistry; overload;
     function S3bucket: String; overload;
     function S3AccessKey(Value: String): IBackupRestoreRegistry; overload;
     function S3AccessKey: String; overload;
     function S3SecretKey(Value: String): IBackupRestoreRegistry; overload;
     function S3SecretKey: String; overload;
   end;

implementation

end.
