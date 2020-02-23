unit BackupRestore.Utils;

interface

type
  TUtils = class
   public
     class function BackupFileName(const Prefixo: String): String;
     class function BackupFileNameZip(const Prefixo: String): String;
     class function BackupFileNameFbk(const Prefixo: String): String;
     class function BackupFileNameS3(const Prefixo: String): String;

     class function FileCompression(const InputFile: String; OutputName: String; Extension: String): boolean;
     class function FileDecompression(const InputFile: String; OutputName: String; Extension: String): boolean;
  end;

implementation

uses
  System.ZLib, System.Classes, System.SysUtils, jc.Utils;

class function TUtils.BackupFileName(const Prefixo: String): String;
var
  iAno, iMes, idia: Word;
begin
  DecodeDate(Now, iAno, iMes, iDia);
  result := Prefixo +'-'+                 // Prefixo Name
            FormatFloat('0000', iAno) +   // Year
            FormatFloat('00', iMes) +     // Month
            FormatFloat('00', iDia) +     // Day
            FormatDateTime('hhmm', now);  // Hour and Minuts
end;

class function TUtils.BackupFileNameZip(const Prefixo: String): String;
begin
  Result := BackupFileName(Prefixo) + '.zip';
end;

class function TUtils.BackupFileNameFbk(const Prefixo: String): String;
begin
  Result := BackupFileName(Prefixo) + '.fbk';
end;

class function TUtils.BackupFileNameS3(const Prefixo: String): String;
var
  iAno, iMes, idia: Word;
begin
  DecodeDate(Now, iAno, iMes, iDia);
  result := Prefixo +'/'+ FormatFloat('0000', iAno) +'/'+ FormatFloat('00', iMes) + '/' + BackupFileNameZip(Prefixo);
end;

class function TUtils.FileCompression(const InputFile: String; OutputName: String; Extension: String): boolean;
var
  lInput, lOutput: TFileStream;
  lZip: TZCompressionStream;
begin
  lInput  := TFileStream.Create(InputFile, fmOpenRead);
  lOutput := TFileStream.Create(OutputName + Extension, fmCreate);
  lZip    := TZCompressionStream.Create(clDefault, LOutput);
  try
    LZip.CopyFrom(LInput, LInput.Size);
  finally
    LZip.Free;
    LInput.Free;
    LOutput.Free;
  end;
end;

class function TUtils.FileDecompression(const InputFile: String; OutputName: String; Extension: String): boolean;
var
  lInput, lOutput: TFileStream;
  lUnZip: TZDecompressionStream;
begin
  lInput := TFileStream.Create(InputFile, fmOpenRead);
  lOutput := TFileStream.Create(ChangeFileExt(OutputName, Extension), fmCreate);
  lUnZip := TZDecompressionStream.Create(LInput);
  try
    LOutput.CopyFrom(LUnZip, 0);
  finally
    LUnZip.Free;
    LInput.Free;
    LOutput.Free;
  end;
end;

end.
