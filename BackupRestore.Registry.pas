unit BackupRestore.Registry;

interface

uses BackupRestore.Interfaces;

type
  TBackupRestoreRegistry = class(TInterfacedObject, IBackupRestoreRegistry)
  private
    FPrefixoName:  String;
    FFilePath: String;
    FServiceAutoStart: Boolean;
    FPackagingFile: Boolean;
    FUploadS3Active: Boolean;
    FDatabaseType: String;
    FDatabase: String;
    FHost: String;
    FPort: String;
    FUserName: String;
    FPassword: String;
    FS3bucket: String;
    FS3AccessKey: String;
    FS3SecretKey: String;
  public
    Constructor Create;
    Destructor Destroy; override;
    class function New(): TBackupRestoreRegistry;

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

uses
  jc.IniFile, jc.Utils, jc.Libs.Interfaces;

{ TBackupRestoreRegistry }

constructor TBackupRestoreRegistry.Create;
begin

end;

destructor TBackupRestoreRegistry.Destroy;
begin
  inherited;
end;

class function TBackupRestoreRegistry.New: TBackupRestoreRegistry;
begin
  Result := self.Create();
end;

function TBackupRestoreRegistry.Save: IBackupRestoreRegistry;
begin
  TJcIniFile
    .New(getPathApplication('', getStringNameEXE+'.ini'))
      .AddString('backup',     'prefixo-name',  self.PrefixoName)
      .AddString('backup',     'file-path',  self.FilePath)
      .AddBoolean('backup',    'service-auto-start',  self.ServiceAutoStart)
      .AddBoolean('backup',    'packaging-file',  Self.PackagingFile)
      .AddBoolean('backup',    'upload-s3-active',  self.UploadS3Active)
      .AddString('connection', 'database-type',  self.DatabaseType)
      .AddString('connection', 'database',  self.Database)
      .AddString('connection', 'host',  self.Host)
      .AddString('connection', 'port',  self.Port)
      .AddString('connection', 'user-name',  self.UserName)
      .AddString('connection', 'password', self.Password)
      .AddString('aws-s3',     'bucket',  self.S3bucket)
      .AddString('aws-s3',     'access-key',  self.S3AccessKey)
      .AddString('aws-s3',     'secret-key',  self.S3SecretKey);
end;

function TBackupRestoreRegistry.Load: IBackupRestoreRegistry;
Var
  iFile: IJcInifile;
begin
 iFile := TJcIniFile.Get(getPathApplication('', getStringNameEXE+'.ini'));

 self.PrefixoName(      iFile.getString('backup',     'prefixo-name', ''));
 self.FilePath(         iFile.getString('backup',     'file-path', '') );
 self.ServiceAutoStart( iFile.GetBoolean('backup',    'service-auto-start', false) );
 self.PackagingFile(    iFile.GetBoolean('backup',    'packaging-file', false) );
 self.UploadS3Active(   iFile.GetBoolean('backup',    'upload-s3-active', false) );
 self.DatabaseType(     iFile.getString('connection', 'database-type', '') ) ;
 self.Database(         iFile.getString('connection', 'database', ''));
 self.Host(             iFile.getString('connection', 'host', ''));
 self.Port(             iFile.getString('connection', 'port', ''));
 self.UserName(         iFile.getString('connection', 'user-name', ''));
 self.Password(         iFile.getString('connection', 'password', ''));
 self.S3bucket(         iFile.getString('aws-s3',     'bucket', ''));
 self.S3AccessKey(      iFile.getString('aws-s3',     'access-key', ''));
 self.S3SecretKey(      iFile.getString('aws-s3',     'secret-key', ''));
end;

function TBackupRestoreRegistry.ServiceAutoStart(Value: Boolean): IBackupRestoreRegistry;
begin
  Result := self;
  FServiceAutoStart := Value;
end;

function TBackupRestoreRegistry.Database: String;
begin
  Result := FDatabase;
end;

function TBackupRestoreRegistry.Database(Value: String): IBackupRestoreRegistry;
begin
  Result := self;
  FDatabase := Value;
end;

function TBackupRestoreRegistry.DatabaseType(Value: String): IBackupRestoreRegistry;
begin
  Result := self;
  FDatabaseType := Value;
end;

function TBackupRestoreRegistry.DatabaseType: String;
begin
  Result := FDatabaseType;
end;

function TBackupRestoreRegistry.FilePath(Value: String): IBackupRestoreRegistry;
begin
  Result := self;
  FFilePath := Value;
end;

function TBackupRestoreRegistry.FilePath: String;
begin
  Result := FFilePath;
end;

function TBackupRestoreRegistry.Host(Value: String): IBackupRestoreRegistry;
begin
  result := self;
  FHost := Value;
end;

function TBackupRestoreRegistry.Host: String;
begin
  Result := FHost;
end;

function TBackupRestoreRegistry.PackagingFile: Boolean;
begin
  Result := FPackagingFile;
end;

function TBackupRestoreRegistry.PackagingFile(Value: Boolean): IBackupRestoreRegistry;
begin
  Result := self;
  FPackagingFile := Value;
end;

function TBackupRestoreRegistry.Password(Value: String): IBackupRestoreRegistry;
begin
  Result := self;
  FPassword := Value;
end;

function TBackupRestoreRegistry.Port(Value: String): IBackupRestoreRegistry;
begin
  Result := self;
  FPort := Value;
end;

function TBackupRestoreRegistry.Password: String;
begin
  Result := FPassword;
end;

function TBackupRestoreRegistry.Port: String;
begin
  Result := FPort;
end;

function TBackupRestoreRegistry.PrefixoName(Value: String): IBackupRestoreRegistry;
begin
  result := self;
  FPrefixoName := Value;
end;

function TBackupRestoreRegistry.PrefixoName: String;
begin
  Result := FPrefixoName;
end;

function TBackupRestoreRegistry.S3bucket(Value: String): IBackupRestoreRegistry;
begin
  Result := self;
  FS3bucket := Value;
end;

function TBackupRestoreRegistry.S3AccessKey: String;
begin
  Result := FS3bucket;
end;

function TBackupRestoreRegistry.S3bucket: String;
begin
  Result := FS3bucket;
end;

function TBackupRestoreRegistry.S3AccessKey(Value: String): IBackupRestoreRegistry;
begin
  result := self;
  FS3AccessKey := value;
end;

function TBackupRestoreRegistry.S3SecretKey(Value: String): IBackupRestoreRegistry;
begin
  result := self;
  FS3SecretKey := Value;
end;

function TBackupRestoreRegistry.S3SecretKey: String;
begin
  Result := FS3SecretKey;
end;

function TBackupRestoreRegistry.ServiceAutoStart: Boolean;
begin
  Result := FServiceAutoStart;
end;

function TBackupRestoreRegistry.UploadS3Active(Value: Boolean): IBackupRestoreRegistry;
begin
  Result := self;
  FUploadS3Active := Value;
end;

function TBackupRestoreRegistry.UserName(Value: String): IBackupRestoreRegistry;
begin
  Result := self;
  FUserName := Value;
end;

function TBackupRestoreRegistry.UploadS3Active: Boolean;
begin
  Result := FUploadS3Active;
end;

function TBackupRestoreRegistry.UserName: String;
begin
  Result := FUserName;
end;

end.
