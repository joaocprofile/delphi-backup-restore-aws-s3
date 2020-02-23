unit BackupRestore.Firebird;

interface

uses BackupRestore.Interfaces, BackupRestore.Components.Firebird;

type
  TBackupRestoreFirebird = class(TInterfacedObject, IBackupRestore)
  private
    FComponentsFirebird: TComponentsFirebird;
    FRegistry: IBackupRestoreRegistry;
  public
    Constructor Create;
    Destructor Destroy; override;
    class function New(): TBackupRestoreFirebird;

    function Registry: IBackupRestoreRegistry;
    function Backup: IBackupRestore;
    function Restore: IBackupRestore;
  end;

implementation

uses
  System.SysUtils, BackupRestore.Registry;

{ TBackupRestoreFirebird }

constructor TBackupRestoreFirebird.Create;
begin
  FRegistry := TBackupRestoreRegistry.New;
  FRegistry.Load;

  FComponentsFirebird := TComponentsFirebird.New(Self);
end;

destructor TBackupRestoreFirebird.Destroy;
begin
  FComponentsFirebird.Free;

  inherited;
end;

class function TBackupRestoreFirebird.New(): TBackupRestoreFirebird;
begin
  Result := Self.Create;
end;

function TBackupRestoreFirebird.Backup: IBackupRestore;
begin
  FComponentsFirebird.Config(atBackup);
  FComponentsFirebird.Backup;
end;

function TBackupRestoreFirebird.Restore: IBackupRestore;
begin
  FComponentsFirebird.Config(atRestore);
  FComponentsFirebird.Restore;
end;

function TBackupRestoreFirebird.Registry: IBackupRestoreRegistry;
begin
  Result := FRegistry;
end;

end.
