program BackupRestoreS3;

uses
  Vcl.Forms,
  Main.Form in 'Main.Form.pas' {BackupFirebird},
  jc.S3Amazon in '..\delphi-libs\jc.S3Amazon.pas',
  BackupRestore.Firebird in 'BackupRestore.Firebird.pas',
  BackupRestore.Interfaces in 'BackupRestore.Interfaces.pas',
  BackupRestore.Utils in 'BackupRestore.Utils.pas',
  BackupRestore.Registry in 'BackupRestore.Registry.pas',
  BackupRestore.Components.Firebird in 'BackupRestore.Components.Firebird.pas' {ComponentsFirebird: TDataModule},
  BackupRestore.Components.Interfaces in 'BackupRestore.Components.Interfaces.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := true;

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TBackupFirebird, BackupFirebird);
  Application.Run;
end.
