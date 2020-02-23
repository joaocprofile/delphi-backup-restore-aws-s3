unit Main.Form;

interface

uses
  Winapi.Windows, Vcl.Forms, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, System.Threading, Vcl.StdCtrls, Vcl.Menus, Vcl.ExtCtrls,
  Vcl.Controls, Vcl.ComCtrls,

  JcPanel, JcButton, Vcl.Buttons, BackupRestore.Interfaces;

type
  TBackupFirebird = class(TForm)
    pgc_main: TPageControl;
    tab_main: TTabSheet;
    tab_params: TTabSheet;
    pnl_menu: TJcPanel;
    pnl_top: TJcPanel;
    btn_main: TJcButton;
    btn_params: TJcButton;
    btn_aws_s3: TJcButton;
    Label1: TLabel;
    Label2: TLabel;
    Label9: TLabel;
    Bevel1: TBevel;
    TrayIcon: TTrayIcon;
    PopupMenu: TPopupMenu;
    Maximinizar1: TMenuItem;
    Minimizar1: TMenuItem;
    N1: TMenuItem;
    FinalizarNFeConsole1: TMenuItem;
    tab_aws_s3: TTabSheet;
    Label3: TLabel;
    Bevel2: TBevel;
    Label4: TLabel;
    Bevel3: TBevel;
    btn_actions_main: TJcPanel;
    btn_iniciarServico: TJcButton;
    btn_pararServico: TJcButton;
    btn_restaurarBackup: TJcButton;
    btn_backupManual: TJcButton;
    pnl_actions_params: TJcPanel;
    btn_params_cancel: TJcButton;
    btn_params_save: TJcButton;
    gbx_conexao: TGroupBox;
    Label6: TLabel;
    edt_Database: TEdit;
    Label7: TLabel;
    edt_Host: TEdit;
    Label8: TLabel;
    Edt_Port: TEdit;
    Label10: TLabel;
    edt_userName: TEdit;
    Label11: TLabel;
    edt_password: TEdit;
    gbx_params_geral: TGroupBox;
    Label5: TLabel;
    Edt_PrefixoName: TEdit;
    Label13: TLabel;
    Edt_BackupPath: TEdit;
    chk_autoStartService: TCheckBox;
    chk_compactarBackup: TCheckBox;
    chk_UploadS3: TCheckBox;
    GroupBox1: TGroupBox;
    Label14: TLabel;
    edt_bucket: TEdit;
    Label15: TLabel;
    edt_aws_AccessKey: TEdit;
    Label16: TLabel;
    edt_aws_SecretKey: TEdit;
    pnl_actions_awss3: TJcPanel;
    btn_awss3_cancel: TJcButton;
    btn_awss3_save: TJcButton;
    lsb_console: TListBox;
    Button1: TButton;
    Label17: TLabel;
    Region: TBitBtn;
    Label18: TLabel;
    BitBtn1: TBitBtn;
    ListBox1: TListBox;
    cbx_Databasetype: TComboBox;
    Label12: TLabel;
    Button2: TButton;
    procedure TrayIconClick(Sender: TObject);
    procedure Maximinizar1Click(Sender: TObject);
    procedure Minimizar1Click(Sender: TObject);
    procedure FinalizarNFeConsole1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_paramsClick(Sender: TObject);
    procedure btn_aws_s3Click(Sender: TObject);
    procedure btn_iniciarServicoClick(Sender: TObject);
    procedure btn_pararServicoClick(Sender: TObject);
    procedure btn_params_cancelClick(Sender: TObject);
    procedure btn_params_saveClick(Sender: TObject);
    procedure btn_mainClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure RegionClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    _monitoring: Boolean;

    procedure CreateEnvironment;
    procedure LoadRegistryToForm;
    procedure SaveRegistry;
    procedure SaveParams;
    procedure PageMain;
    procedure Backup;
    procedure Restore;
    procedure Monitor;
  public
    BackupRestore: IBackupRestore;
  end;

var
  BackupFirebird: TBackupFirebird;

implementation

uses
  System.Win.Registry, jc.Utils, jc.IniFile, jc.Libs.Interfaces,
  jc.S3Amazon, Jc.CryptS, BackupRestore.Firebird, BackupRestore.Registry;

{$R *.dfm}

procedure TBackupFirebird.RegionClick(Sender: TObject);
var
  aws: TAws;
begin
  aws := TAws.New('AKIAJLAWWMKD3YTMDXEA', 'tDDDokClHB0KyD8q3ioSXAsNhpplFjsiGTRf2c4J');
  try
    Label17.Caption := aws.getEndPoint;
   Label18.Caption := aws.getRegion;
 finally
//   aws.Free;
 end;

end;

procedure TBackupFirebird.SaveRegistry;
begin
  TBackupRestoreRegistry
    .New
      .PrefixoName(Edt_PrefixoName.Text)
      .FilePath(Edt_BackupPath.Text)
      .ServiceAutoStart(chk_autoStartService.Checked)
      .PackagingFile(chk_compactarBackup.Checked)
      .UploadS3Active(chk_UploadS3.Checked)
      .DatabaseType('Firebird')
      .Database(edt_Database.Text)
      .Host(edt_Host.Text)
      .Port(Edt_Port.Text)
      .UserName(edt_userName.Text)
      .Password(edt_password.Text)
      .S3bucket(edt_bucket.Text)
      .S3AccessKey(edt_aws_AccessKey.Text)
      .S3SecretKey(edt_aws_SecretKey.Text)
    .Save;
end;

procedure TBackupFirebird.LoadRegistryToForm;
Var
  Registry: IBackupRestoreRegistry;
begin
  Registry := TBackupRestoreRegistry.New;
  Registry.Load;

  Edt_PrefixoName.Text         := Registry.PrefixoName;
  Edt_BackupPath.Text          := Registry.FilePath;
  chk_autoStartService.Checked := Registry.ServiceAutoStart;
  chk_compactarBackup.Checked  := Registry.PackagingFile;
  chk_UploadS3.Checked         := Registry.UploadS3Active;
  cbx_Databasetype.Text        := Registry.DatabaseType;
  edt_Database.Text            := Registry.Database;
  edt_Host.Text                := Registry.Host;
  Edt_Port.Text                := Registry.Port;
  edt_userName.Text            := Registry.UserName;
  edt_password.Text            := Registry.Password;
  edt_bucket.Text              := Registry.S3bucket;
  edt_aws_AccessKey.Text       := Registry.S3AccessKey;
  edt_aws_SecretKey.Text       := Registry.S3SecretKey;
end;

procedure TBackupFirebird.SaveParams;
begin
  SaveRegistry;
  LoadRegistryToForm;
end;

procedure TBackupFirebird.PageMain;
begin
  pgc_main.ActivePageIndex := 0;
end;

procedure TBackupFirebird.CreateEnvironment;
var
  Reg : TRegistry;
begin
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    Reg.OpenKey('Software\Microsoft\Windows\CurrentVersion\Run', True);
    Reg.WriteString('BackupFirebird', Application.ExeName);
    Reg.CloseKey;
  finally
    Reg.Free;
  end;

  _monitoring := false;

  LoadRegistryToForm;
  SaveRegistry;
  PageMain;
end;

procedure TBackupFirebird.FormCreate(Sender: TObject);
begin
  CreateEnvironment;
  BackupRestore := TBackupRestoreFirebird.New;
end;


procedure TBackupFirebird.btn_mainClick(Sender: TObject);
begin
  PageMain;
end;

procedure TBackupFirebird.btn_paramsClick(Sender: TObject);
begin
  pgc_main.ActivePageIndex := 1;
  LoadRegistryToForm;
end;


procedure TBackupFirebird.Backup;
begin
    TTask.Run(
      procedure
      begin
        btn_backupManual.Enabled := false;
        try

        finally
          btn_backupManual.Enabled := true;
        end;
      end
    );
end;

procedure TBackupFirebird.Restore;
begin

end;


procedure TBackupFirebird.BitBtn1Click(Sender: TObject);
var
  strings: TStrings;
  i: Integer;
begin
  TAws.New('AKIAJLAWWMKD3YTMDXEA', 'tDDDokClHB0KyD8q3ioSXAsNhpplFjsiGTRf2c4J');

  strings := TAws.New.getBuckets;
  if Assigned(strings) then
  begin
    for i := 0 to Pred(strings.Count) do
      ListBox1.Items.Add(strings.Names[i]);
  end;
end;

procedure TBackupFirebird.btn_aws_s3Click(Sender: TObject);
begin
  pgc_main.ActivePageIndex := 2;
end;

procedure TBackupFirebird.btn_params_cancelClick(Sender: TObject);
begin
  PageMain;
end;

procedure TBackupFirebird.btn_params_saveClick(Sender: TObject);
begin
  SaveParams;
end;

procedure TBackupFirebird.TrayIconClick(Sender: TObject);
begin
  PopupMenu.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TBackupFirebird.Maximinizar1Click(Sender: TObject);
begin
  Application.ShowMainForm := True;
  BackupFirebird.Show;
end;

procedure TBackupFirebird.Minimizar1Click(Sender: TObject);
begin
  Application.ShowMainForm := False;
  BackupFirebird.Hide;
end;

procedure TBackupFirebird.FinalizarNFeConsole1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TBackupFirebird.Button1Click(Sender: TObject);
begin
//  lsb_console.Items.Add( TApp.Instance.getBackupFileNameFbk('agrovet') );
//  lsb_console.Items.Add( TApp.Instance.getBackupFileNameZip('agrovet') );
//  lsb_console.Items.Add( TApp.Instance.getBackupFileNameS3('agrovet') );

  lsb_console.Items.Add( TCryptS.New().Crypt('JOAO') );
  lsb_console.Items.Add( TCryptS.New('123456').Crypt('JOAO') );
end;

procedure TBackupFirebird.Button2Click(Sender: TObject);
begin

  BackupRestore.Backup;
end;

procedure TBackupFirebird.btn_iniciarServicoClick(Sender: TObject);
begin
 _monitoring := true;
  Monitor();
end;

procedure TBackupFirebird.Monitor;
var
  hBackup: TDatetime;
begin
  hBackup := Now;
  TTask.Run(
    procedure
    begin
      while _monitoring do
      begin
        TThread.Synchronize(TThread.CurrentThread,
          procedure
          begin
            lsb_console.Items.Clear;
            lsb_console.Items.Add('Aguardando...');
            lsb_console.Items.Add('Hora atual:     '+FormatDateTime('dd/mm/yyyy hh:mm:ss', now));
            lsb_console.Items.Add('Próximo backup: '+FormatDateTime('dd/mm/yyyy hh:mm:ss', hBackup));
          end
        );

        sleep(1000);
      end;
    end
  );
end;

procedure TBackupFirebird.btn_pararServicoClick(Sender: TObject);
begin
  _monitoring := false;
  lsb_console.Items.Clear;
end;




end.
