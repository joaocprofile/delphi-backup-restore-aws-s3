unit BackupRestore.Components.Firebird;

interface

uses
  System.SysUtils, System.Classes,

  BackupRestore.Interfaces,

  FireDAC.UI.Intf, FireDAC.VCLUI.Wait,
  FireDAC.Phys.FBDef, FireDAC.Stan.Def, FireDAC.Phys.IBWrapper, FireDAC.Phys.FB,
  FireDAC.Phys, FireDAC.Phys.IBBase, FireDAC.Stan.Intf, FireDAC.Comp.UI;

type
  TComponentsFirebird = class(TDataModule)
    FDGUIxWaitCursor: TFDGUIxWaitCursor;
    FDPhysFBDriverLink: TFDPhysFBDriverLink;
    FDFBNRestore: TFDFBNRestore;
    FDFBNBackup: TFDFBNBackup;
  private
    FBackupRestore: IBackupRestore;
    procedure DriverLinkConfig;
  public
    constructor Create(Parent: IBackupRestore);
    class function New(Parent: IBackupRestore): TComponentsFirebird;

    procedure Config(AType: TBActionType);
    procedure Backup;
    procedure Restore;
  end;

implementation

uses
  jc.Utils;

{$R *.dfm}

{ TApp }

constructor TComponentsFirebird.Create(Parent: IBackupRestore);
begin
  FBackupRestore := Parent;
end;

class function TComponentsFirebird.New(Parent: IBackupRestore): TComponentsFirebird;
begin
  Result := Self.Create(Parent);
end;

procedure TComponentsFirebird.Backup;
begin
  Config(atBackup);
  FDFBNBackup.Backup;
end;

procedure TComponentsFirebird.Restore;
begin
  Config(atRestore);
  FDFBNRestore.Restore;
end;

procedure TComponentsFirebird.Config(AType: TBActionType);
begin
  DriverLinkConfig;
  case AType of
    atBackup: FDFBNBackup.BackupFile := FBackupRestore.Registry.FilePath;
    atRestore: FDFBNRestore.BackupFiles.Add(FBackupRestore.Registry.FilePath);
  end;

  with FDFBNBackup, FDFBNRestore do
  begin
    Database   := FBackupRestore.Registry.Database;
    Protocol   := ipTCPIP;
    Port       := FBackupRestore.Registry.Port.ToInteger;
    host       := FBackupRestore.Registry.Host;
    UserName   := FBackupRestore.Registry.UserName;
    Password   := FBackupRestore.Registry.Password;
  end;
end;

procedure TComponentsFirebird.DriverLinkConfig;
begin
  FDPhysFBDriverLink.DriverID  := 'FB';
  FDPhysFBDriverLink.VendorLib := getPathApplication('', 'fbclient.dll');
end;

end.
