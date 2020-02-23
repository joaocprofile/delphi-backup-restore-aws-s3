object BackupFirebird: TBackupFirebird
  Left = 0
  Top = 0
  Caption = 'Backup Restore'
  ClientHeight = 459
  ClientWidth = 877
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pgc_main: TPageControl
    Left = 145
    Top = 57
    Width = 732
    Height = 402
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    ActivePage = tab_main
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 0
    object tab_main: TTabSheet
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      TabVisible = False
      object Label9: TLabel
        AlignWithMargins = True
        Left = 10
        Top = 3
        Width = 704
        Height = 24
        Margins.Left = 10
        Margins.Right = 10
        Align = alTop
        Caption = 'Principal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5787709
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 9
      end
      object Bevel1: TBevel
        AlignWithMargins = True
        Left = 10
        Top = 33
        Width = 704
        Height = 6
        Margins.Left = 10
        Margins.Right = 10
        Align = alTop
        Shape = bsTopLine
      end
      object Label17: TLabel
        Left = 40
        Top = 160
        Width = 37
        Height = 13
        Caption = 'Label17'
      end
      object Label18: TLabel
        Left = 40
        Top = 179
        Width = 37
        Height = 13
        Caption = 'Label18'
      end
      object btn_actions_main: TJcPanel
        AlignWithMargins = True
        Left = 0
        Top = 42
        Width = 724
        Height = 45
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        BevelColor = 13816530
        BevelWidth = 0
        BorderWidth = 0
        Gradient.Enabled = False
        Gradient.FadeColor = 16638395
        ParentBackground = False
        ParentColor = True
        TabOrder = 0
        object btn_iniciarServico: TJcButton
          AlignWithMargins = True
          Left = 10
          Top = 5
          Width = 121
          Height = 35
          Margins.Left = 10
          Margins.Top = 5
          Margins.Bottom = 5
          ColorFace = 16752724
          ColorGrad = 16752724
          ColorDark = 16752724
          ColorLight = 16752724
          ColorBorder = 15319723
          ColorText = clWhite
          OverColorFace = 16419924
          OverColorGrad = 16419924
          OverColorDark = 16419924
          OverColorLight = 16419924
          OverColorBorder = 15319723
          OverColorText = clWhite
          DownColorFace = 16419924
          DownColorGrad = 16419924
          DownColorDark = 16419924
          DownColorLight = 16419924
          DownColorBorder = 15319723
          DownColorText = clWhite
          DisabledColorFace = 15658734
          DisabledColorGrad = 15658734
          DisabledColorDark = 15658734
          DisabledColorLight = 15658734
          DisabledColorBorder = 13816530
          DisabledColorText = 13816530
          ColorFocusRect = 16752724
          ColorScheme = csBlue
          Ctl3D = True
          Layout = blGlyphLeft
          Spacing = 4
          TransparentGlyph = True
          Gradient = True
          HotTrack = True
          Align = alLeft
          Caption = 'Iniciar Servi'#231'o'
          CaptionAlign = acCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = btn_iniciarServicoClick
        end
        object btn_pararServico: TJcButton
          AlignWithMargins = True
          Left = 137
          Top = 5
          Width = 121
          Height = 35
          Margins.Top = 5
          Margins.Bottom = 5
          ColorFace = 16752724
          ColorGrad = 16752724
          ColorDark = 16752724
          ColorLight = 16752724
          ColorBorder = 15319723
          ColorText = clWhite
          OverColorFace = 16419924
          OverColorGrad = 16419924
          OverColorDark = 16419924
          OverColorLight = 16419924
          OverColorBorder = 15319723
          OverColorText = clWhite
          DownColorFace = 16419924
          DownColorGrad = 16419924
          DownColorDark = 16419924
          DownColorLight = 16419924
          DownColorBorder = 15319723
          DownColorText = clWhite
          DisabledColorFace = 15658734
          DisabledColorGrad = 15658734
          DisabledColorDark = 15658734
          DisabledColorLight = 15658734
          DisabledColorBorder = 13816530
          DisabledColorText = 13816530
          ColorFocusRect = 16752724
          ColorScheme = csBlue
          Ctl3D = True
          Layout = blGlyphLeft
          Spacing = 4
          TransparentGlyph = True
          Gradient = True
          HotTrack = True
          Align = alLeft
          Caption = 'Parar Servi'#231'o'
          CaptionAlign = acCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = btn_pararServicoClick
        end
        object btn_restaurarBackup: TJcButton
          AlignWithMargins = True
          Left = 570
          Top = 5
          Width = 144
          Height = 35
          Margins.Top = 5
          Margins.Right = 10
          Margins.Bottom = 5
          ColorFace = 5197823
          ColorGrad = 5197823
          ColorDark = 5197823
          ColorLight = 5197823
          ColorBorder = clSilver
          ColorText = clWhite
          OverColorFace = 3487231
          OverColorGrad = 3487231
          OverColorDark = 3487231
          OverColorLight = 3487231
          OverColorBorder = clGray
          OverColorText = clWhite
          DownColorFace = 3487231
          DownColorGrad = 3487231
          DownColorDark = 3487231
          DownColorLight = 3487231
          DownColorBorder = clGray
          DownColorText = clWhite
          DisabledColorFace = 15395583
          DisabledColorGrad = 15395583
          DisabledColorDark = 15395583
          DisabledColorLight = 15395583
          DisabledColorBorder = clSilver
          DisabledColorText = clSilver
          ColorFocusRect = 5197823
          ColorScheme = csRed
          Ctl3D = True
          Layout = blGlyphLeft
          Spacing = 4
          TransparentGlyph = True
          Gradient = True
          HotTrack = True
          Align = alRight
          Caption = 'Restaurar Backup'
          CaptionAlign = acCenter
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object btn_backupManual: TJcButton
          AlignWithMargins = True
          Left = 420
          Top = 5
          Width = 144
          Height = 35
          Margins.Top = 5
          Margins.Bottom = 5
          ColorFace = 10982787
          ColorGrad = 10982787
          ColorDark = 10982787
          ColorLight = 10982787
          ColorBorder = 15319723
          ColorText = clWhite
          OverColorFace = 10980227
          OverColorGrad = 10980227
          OverColorDark = 10980227
          OverColorLight = 10980227
          OverColorBorder = 15319723
          OverColorText = clWhite
          DownColorFace = 10980227
          DownColorGrad = 10980227
          DownColorDark = 10980227
          DownColorLight = 10980227
          DownColorBorder = 15319723
          DownColorText = clWhite
          DisabledColorFace = 15658734
          DisabledColorGrad = 15658734
          DisabledColorDark = 15658734
          DisabledColorLight = 15658734
          DisabledColorBorder = 13816530
          DisabledColorText = 13816530
          ColorFocusRect = 10982787
          ColorScheme = csGray
          Ctl3D = True
          Layout = blGlyphLeft
          Spacing = 4
          TransparentGlyph = True
          Gradient = True
          HotTrack = True
          Align = alRight
          Caption = 'Backup Manual'
          CaptionAlign = acCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object Button1: TButton
          Left = 304
          Top = 3
          Width = 75
          Height = 25
          Caption = 'Button1'
          TabOrder = 4
          OnClick = Button1Click
        end
      end
      object lsb_console: TListBox
        AlignWithMargins = True
        Left = 10
        Top = 232
        Width = 704
        Height = 157
        Margins.Left = 10
        Margins.Right = 10
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        ItemHeight = 13
        TabOrder = 1
      end
      object Region: TBitBtn
        Left = 40
        Top = 129
        Width = 75
        Height = 25
        Caption = 'aws'
        TabOrder = 2
        OnClick = RegionClick
      end
      object BitBtn1: TBitBtn
        Left = 137
        Top = 93
        Width = 75
        Height = 25
        Caption = 'BitBtn1'
        TabOrder = 3
        OnClick = BitBtn1Click
      end
      object ListBox1: TListBox
        Left = 137
        Top = 124
        Width = 232
        Height = 68
        ItemHeight = 13
        TabOrder = 4
      end
      object Button2: TButton
        Left = 456
        Top = 129
        Width = 75
        Height = 25
        Caption = 'Backup'
        TabOrder = 5
        OnClick = Button2Click
      end
    end
    object tab_params: TTabSheet
      Caption = 'tab_params'
      ImageIndex = 1
      TabVisible = False
      DesignSize = (
        724
        392)
      object Label3: TLabel
        AlignWithMargins = True
        Left = 10
        Top = 3
        Width = 704
        Height = 24
        Margins.Left = 10
        Margins.Right = 10
        Align = alTop
        Caption = 'Par'#226'metros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5787709
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 102
      end
      object Bevel2: TBevel
        AlignWithMargins = True
        Left = 10
        Top = 33
        Width = 704
        Height = 8
        Margins.Left = 10
        Margins.Right = 10
        Align = alTop
        Shape = bsTopLine
      end
      object pnl_actions_params: TJcPanel
        AlignWithMargins = True
        Left = 0
        Top = 347
        Width = 724
        Height = 45
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alBottom
        BevelColor = 13816530
        BevelWidth = 0
        BorderWidth = 0
        Color = 13816530
        Gradient.Enabled = False
        Gradient.FadeColor = 16638395
        ParentBackground = False
        TabOrder = 0
        object btn_params_cancel: TJcButton
          AlignWithMargins = True
          Left = 575
          Top = 5
          Width = 144
          Height = 35
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          ColorFace = clWhite
          ColorGrad = clWhite
          ColorDark = clWhite
          ColorLight = clWhite
          ColorBorder = clSilver
          ColorText = clGray
          OverColorFace = 15658734
          OverColorGrad = 15658734
          OverColorDark = 15658734
          OverColorLight = 15658734
          OverColorBorder = clSilver
          OverColorText = clGray
          DownColorFace = clWhite
          DownColorGrad = clWhite
          DownColorDark = clWhite
          DownColorLight = clWhite
          DownColorBorder = clSilver
          DownColorText = clGray
          DisabledColorFace = 15658734
          DisabledColorGrad = clWhite
          DisabledColorDark = 13816530
          DisabledColorLight = clWhite
          DisabledColorBorder = clGray
          DisabledColorText = clGray
          ColorFocusRect = clWhite
          ColorScheme = csDefault
          Ctl3D = True
          Layout = blGlyphLeft
          Spacing = 4
          TransparentGlyph = True
          Gradient = True
          HotTrack = True
          Align = alRight
          Caption = 'Cancelar'
          CaptionAlign = acCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = btn_params_cancelClick
        end
        object btn_params_save: TJcButton
          AlignWithMargins = True
          Left = 425
          Top = 5
          Width = 144
          Height = 35
          Margins.Top = 5
          Margins.Bottom = 5
          ColorFace = 8694800
          ColorGrad = 8694800
          ColorDark = 8694800
          ColorLight = 8694800
          ColorBorder = 15319723
          ColorText = clWhite
          OverColorFace = 8689168
          OverColorGrad = 8689168
          OverColorDark = 8689168
          OverColorLight = 8689168
          OverColorBorder = 15319723
          OverColorText = clWhite
          DownColorFace = 8689168
          DownColorGrad = 8689168
          DownColorDark = 8689168
          DownColorLight = 8689168
          DownColorBorder = 15319723
          DownColorText = clWhite
          DisabledColorFace = 15658734
          DisabledColorGrad = 15658734
          DisabledColorDark = 15658734
          DisabledColorLight = 15658734
          DisabledColorBorder = 13816530
          DisabledColorText = 13816530
          ColorFocusRect = 8694800
          ColorScheme = csGreen
          Ctl3D = True
          Layout = blGlyphLeft
          Spacing = 4
          TransparentGlyph = True
          Gradient = True
          HotTrack = True
          Align = alRight
          Caption = 'Salvar'
          CaptionAlign = acCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = btn_params_saveClick
          ExplicitTop = 1
        end
      end
      object gbx_conexao: TGroupBox
        Left = 10
        Top = 181
        Width = 704
        Height = 159
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Conex'#227'o do Banco de Dados'
        TabOrder = 2
        DesignSize = (
          704
          159)
        object Label6: TLabel
          Left = 13
          Top = 52
          Width = 77
          Height = 13
          Caption = 'Banco de Dados'
        end
        object Label7: TLabel
          Left = 13
          Top = 77
          Width = 40
          Height = 13
          Caption = 'Servidor'
        end
        object Label8: TLabel
          Left = 365
          Top = 78
          Width = 26
          Height = 13
          Caption = 'Porta'
        end
        object Label10: TLabel
          Left = 13
          Top = 103
          Width = 36
          Height = 13
          Caption = 'Usu'#225'rio'
        end
        object Label11: TLabel
          Left = 13
          Top = 129
          Width = 30
          Height = 13
          Caption = 'Senha'
        end
        object Label12: TLabel
          Left = 13
          Top = 24
          Width = 20
          Height = 13
          Caption = 'Tipo'
        end
        object edt_Database: TEdit
          Left = 98
          Top = 49
          Width = 592
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 0
        end
        object edt_Host: TEdit
          Left = 98
          Top = 74
          Width = 255
          Height = 21
          TabOrder = 1
        end
        object Edt_Port: TEdit
          Left = 397
          Top = 74
          Width = 31
          Height = 21
          TabOrder = 2
        end
        object edt_userName: TEdit
          Left = 98
          Top = 100
          Width = 145
          Height = 21
          TabOrder = 3
        end
        object edt_password: TEdit
          Left = 98
          Top = 126
          Width = 145
          Height = 21
          PasswordChar = '*'
          TabOrder = 4
        end
        object cbx_Databasetype: TComboBox
          Left = 98
          Top = 21
          Width = 145
          Height = 22
          Style = csOwnerDrawFixed
          ItemIndex = 0
          TabOrder = 5
          Text = 'Firebird'
          Items.Strings = (
            'Firebird'
            'Interbase'
            'MySql')
        end
      end
      object gbx_params_geral: TGroupBox
        Left = 10
        Top = 42
        Width = 704
        Height = 134
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Par'#226'metros Gerais do Backup'
        TabOrder = 1
        DesignSize = (
          704
          134)
        object Label5: TLabel
          Left = 13
          Top = 23
          Width = 63
          Height = 13
          Caption = 'Prefixo nome'
        end
        object Label13: TLabel
          Left = 13
          Top = 49
          Width = 62
          Height = 13
          Caption = 'Path Backup '
        end
        object Edt_PrefixoName: TEdit
          Left = 98
          Top = 20
          Width = 262
          Height = 21
          TabOrder = 0
        end
        object Edt_BackupPath: TEdit
          Left = 98
          Top = 46
          Width = 592
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 1
        end
        object chk_autoStartService: TCheckBox
          Left = 98
          Top = 73
          Width = 201
          Height = 17
          Caption = 'Auto iniciar servi'#231'o'
          TabOrder = 2
        end
        object chk_compactarBackup: TCheckBox
          Left = 98
          Top = 91
          Width = 201
          Height = 17
          Caption = 'Compactar arquivo de backup'
          TabOrder = 3
        end
        object chk_UploadS3: TCheckBox
          Left = 98
          Top = 109
          Width = 201
          Height = 17
          Caption = 'Ativar Upload S3'
          TabOrder = 4
        end
      end
    end
    object tab_aws_s3: TTabSheet
      Caption = 'tab_aws_s3'
      ImageIndex = 2
      TabVisible = False
      DesignSize = (
        724
        392)
      object Label4: TLabel
        AlignWithMargins = True
        Left = 10
        Top = 3
        Width = 704
        Height = 24
        Margins.Left = 10
        Margins.Right = 10
        Align = alTop
        Caption = 'Configura'#231#245'es AWS S3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5787709
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 200
      end
      object Bevel3: TBevel
        AlignWithMargins = True
        Left = 10
        Top = 33
        Width = 704
        Height = 22
        Margins.Left = 10
        Margins.Right = 10
        Align = alTop
        Shape = bsTopLine
        ExplicitLeft = 18
        ExplicitTop = 41
      end
      object GroupBox1: TGroupBox
        Left = 10
        Top = 41
        Width = 704
        Height = 114
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Par'#226'metros S3'
        TabOrder = 0
        object Label14: TLabel
          Left = 13
          Top = 23
          Width = 32
          Height = 13
          Caption = 'Bucket'
        end
        object Label15: TLabel
          Left = 13
          Top = 50
          Width = 80
          Height = 13
          Caption = 'AWS Access Key'
        end
        object Label16: TLabel
          Left = 13
          Top = 77
          Width = 78
          Height = 13
          Caption = 'AWS Secret Key'
        end
        object edt_bucket: TEdit
          Left = 98
          Top = 20
          Width = 262
          Height = 21
          TabOrder = 0
        end
        object edt_aws_AccessKey: TEdit
          Left = 98
          Top = 47
          Width = 262
          Height = 21
          TabOrder = 1
        end
        object edt_aws_SecretKey: TEdit
          Left = 98
          Top = 74
          Width = 262
          Height = 21
          TabOrder = 2
        end
      end
      object pnl_actions_awss3: TJcPanel
        AlignWithMargins = True
        Left = 0
        Top = 347
        Width = 724
        Height = 45
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alBottom
        BevelColor = 13816530
        BevelWidth = 0
        BorderWidth = 0
        Color = 13816530
        Gradient.Enabled = False
        Gradient.FadeColor = 16638395
        ParentBackground = False
        TabOrder = 1
        object btn_awss3_cancel: TJcButton
          AlignWithMargins = True
          Left = 575
          Top = 5
          Width = 144
          Height = 35
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          ColorFace = clWhite
          ColorGrad = clWhite
          ColorDark = clWhite
          ColorLight = clWhite
          ColorBorder = clSilver
          ColorText = clGray
          OverColorFace = 15658734
          OverColorGrad = 15658734
          OverColorDark = 15658734
          OverColorLight = 15658734
          OverColorBorder = clSilver
          OverColorText = clGray
          DownColorFace = clWhite
          DownColorGrad = clWhite
          DownColorDark = clWhite
          DownColorLight = clWhite
          DownColorBorder = clSilver
          DownColorText = clGray
          DisabledColorFace = 15658734
          DisabledColorGrad = clWhite
          DisabledColorDark = 13816530
          DisabledColorLight = clWhite
          DisabledColorBorder = clGray
          DisabledColorText = clGray
          ColorFocusRect = clWhite
          ColorScheme = csDefault
          Ctl3D = True
          Layout = blGlyphLeft
          Spacing = 4
          TransparentGlyph = True
          Gradient = True
          HotTrack = True
          Align = alRight
          Caption = 'Cancelar'
          CaptionAlign = acCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = btn_params_cancelClick
        end
        object btn_awss3_save: TJcButton
          AlignWithMargins = True
          Left = 425
          Top = 5
          Width = 144
          Height = 35
          Margins.Top = 5
          Margins.Bottom = 5
          ColorFace = 8694800
          ColorGrad = 8694800
          ColorDark = 8694800
          ColorLight = 8694800
          ColorBorder = 15319723
          ColorText = clWhite
          OverColorFace = 8689168
          OverColorGrad = 8689168
          OverColorDark = 8689168
          OverColorLight = 8689168
          OverColorBorder = 15319723
          OverColorText = clWhite
          DownColorFace = 8689168
          DownColorGrad = 8689168
          DownColorDark = 8689168
          DownColorLight = 8689168
          DownColorBorder = 15319723
          DownColorText = clWhite
          DisabledColorFace = 15658734
          DisabledColorGrad = 15658734
          DisabledColorDark = 15658734
          DisabledColorLight = 15658734
          DisabledColorBorder = 13816530
          DisabledColorText = 13816530
          ColorFocusRect = 8694800
          ColorScheme = csGreen
          Ctl3D = True
          Layout = blGlyphLeft
          Spacing = 4
          TransparentGlyph = True
          Gradient = True
          HotTrack = True
          Align = alRight
          Caption = 'Salvar'
          CaptionAlign = acCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = btn_params_saveClick
        end
      end
    end
  end
  object pnl_menu: TJcPanel
    Left = 0
    Top = 57
    Width = 145
    Height = 402
    Align = alLeft
    BevelColor = 6908265
    Color = 6908265
    Gradient.Enabled = False
    Gradient.FadeColor = 16638395
    ParentBackground = False
    TabOrder = 1
    object btn_main: TJcButton
      AlignWithMargins = True
      Left = 1
      Top = 1
      Width = 143
      Height = 60
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      ColorFace = 6908265
      ColorGrad = 6908265
      ColorDark = 6908265
      ColorLight = 6908265
      ColorBorder = clGray
      ColorText = clWhite
      OverColorFace = 8487297
      OverColorGrad = 8487297
      OverColorDark = 8487297
      OverColorLight = 8487297
      OverColorBorder = clWhite
      OverColorText = clWhite
      DownColorFace = 10980227
      DownColorGrad = 10980227
      DownColorDark = 10980227
      DownColorLight = 10980227
      DownColorBorder = 15319723
      DownColorText = clWhite
      DisabledColorFace = 15658734
      DisabledColorGrad = 15658734
      DisabledColorDark = 15658734
      DisabledColorLight = 15658734
      DisabledColorBorder = 13816530
      DisabledColorText = 13816530
      ColorFocusRect = 6908265
      ColorScheme = csCustom
      Ctl3D = True
      Layout = blGlyphTop
      Glyph.Data = {
        160E0000424D160E000000000000360000002800000020000000250000000100
        180000000000E00D0000000000000000000000000000000000003C37313C3731
        3C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37
        313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C
        37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C3731
        3C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37
        313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C
        37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C3731
        3C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37
        313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C
        37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C3731
        3C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37
        313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C
        37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C3731
        3C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37
        313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C
        37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C3731
        3C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37
        313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C
        37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C3731
        3C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37
        313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C
        37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C3731
        3C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37
        313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C
        37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C3731
        3C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37
        313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C
        37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C3731
        3C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37
        313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C
        37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C3731
        3C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37
        313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C
        37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C3731
        3C37313C37313C37313C37313C37313C3731C1BFBDFEFEFEFFFFFFFFFFFFFFFF
        FFFFFFFFDCDBDA3C37313C3731DCDBDAFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEC1
        BFBD3C37313C37313C37313C37313C37313C37313C37313C37313C37313C3731
        3C37313C37313C37313C37313C37313C3731CBCAC9E2E2E183807C83807C8380
        7CD2D0CFDFDEDD3C37313C3731DFDEDDD2D0CF83807C83807C83807CE2E2E1CB
        CAC93C37313C37313C37313C37313C37313C37313C37313C37313C37313C3731
        3C37313C37313C37313C37313C37313C3731CBCAC9DFDEDD3C37313C37313C37
        31CBCAC9DFDEDD3C37313C3731DFDEDDCBCAC93C37313C37313C3731DFDEDDCB
        CAC93C37313C37313C37313C37313C37313C37313C37313C37313C37313C3731
        3C37313C37313C37313C37313C37313C3731CBCAC9DFDEDD3C37313C37313C37
        31CBCAC9DFDEDD3C37313C3731DFDEDDCBCAC93C37313C37313C3731DFDEDDCB
        CAC93C37313C37313C37313C37313C37313C37313C37313C37313C37313C3731
        3C37313C37313C37313C37313C37313C3731CBCAC9DFDEDD3C37313C37313C37
        31CBCAC9DFDEDD3C37313C3731DFDEDDCBCAC93C37313C37313C3731DFDEDDCB
        CAC93C37313C37313C37313C37313C37313C37313C37313C37313C37313C3731
        3C37313C37313C37313C37313C37313C3731CBCAC9DFDEDD3C37313C37313C37
        31CBCAC9DFDEDD3C37313C3731DFDEDDCBCAC93C37313C37313C3731DFDEDDCB
        CAC93C37313C37313C37313C37313C37313C37313C37313C37313C37313C3731
        3C37313C37313C37313C37313C37313C3731CBCAC9DFDEDD3C37313C37313C37
        31CBCAC9FCFCFBF5F5F4F5F5F4FCFCFBCBCAC93C37313C37313C3731DFDEDDCB
        CAC93C37313C37313C37313C37313C37313C37313C37313C37313C37313C3731
        3C37313C37313C37313C37313C37313C3731CBCAC9DFDEDD3C37313C37313C37
        318B8885B8B6B3B8B6B3B8B6B3B8B6B38B88853C37313C37313C3731DFDEDDCB
        CAC93C37313C37313C37313C37313C37313C37313C37313C37313C37313C3731
        3C37313C37313C37317A7672E5E5E4B1AFACCBCAC9DFDEDD3C37313C37313C37
        313C37313C37313C37313C37313C37313C37313C37313C37313C3731DFDEDDCB
        CAC9ABA9A7E4E3E27A76723C37313C37313C37313C37313C37313C37313C3731
        3C37313C37313C373145413BCBC9C8F9F9F9EDEDECDFDEDD3C37313C37313C37
        313C37313C37313C37313C37313C37313C37313C37313C37313C3731DFDEDDEA
        EAE9F8F8F7CBC9C845413B3C37313C37313C37313C37313C37313C37313C3731
        3C37313C37313C37313C3731514C47CCCBC9FEFEFEDFDEDD3C37313C37313C37
        313C37313C37313C37313C37313C37313C37313C37313C37313C3731DFDEDDFE
        FEFECCCBC9514C473C37313C37313C37313C37313C37313C37313C37313C3731
        3C37313C37313C37313C37313C3731514C47CCCBC9F8F8F7ADABA83C37313C37
        313C37313C37313C37313C37313C37313C37313C37313C3731ADABA8F8F8F7CC
        CBC9514C473C37313C37313C37313C37313C37313C37313C37313C37313C3731
        3C37313C37313C37313C37313C37313C3731514C47CCCBC9F8F8F7ADABA83C37
        313C37313C37313C37313C37313C37313C37313C3731ADABA8F8F8F7CCCBC951
        4C473C37313C37313C37313C37313C37313C37313C37313C37313C37313C3731
        3C37313C37313C37313C37313C37313C37313C3731514C47CCCBC9F8F8F7ADAB
        A83C37313C37313C37313C37313C37313C3731ADABA8F8F8F7CCCBC9514C473C
        37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C3731
        3C37313C37313C37313C37313C37313C37313C37313C3731514C47CCCBC9F8F8
        F7ADABA83C37313C37313C37313C3731ADABA8F8F8F7CCCBC9514C473C37313C
        37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C3731
        3C37313C37313C37313C37313C37313C37313C37313C37313C3731514C47CCCB
        C9F8F8F7ADABA83C37313C3731ADABA8F8F8F7CCCBC9514C473C37313C37313C
        37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C3731
        3C37313C37313C37313C37313C37313C37313C37313C37313C37313C3731514C
        47CCCBC9F8F8F7ADABA8ADABA8F8F8F7CCCBC9514C473C37313C37313C37313C
        37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C3731
        3C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37
        31514C47CCCBC9FCFCFCFCFCFCCCCBC9514C473C37313C37313C37313C37313C
        37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C3731
        3C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37
        313C3731514C47C9C8C6C9C8C6514C473C37313C37313C37313C37313C37313C
        37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C3731
        3C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37
        313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C
        37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C3731
        3C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37
        313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C
        37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C3731
        3C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37
        313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C
        37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C3731
        3C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37
        313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C
        37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C3731
        3C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37
        313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C
        37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C3731
        3C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37
        313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C
        37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C3731
        3C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37
        313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C
        37313C37313C37313C37313C37313C37313C37313C37313C3731}
      Spacing = 0
      TransparentGlyph = True
      Gradient = True
      HotTrack = True
      Align = alTop
      Caption = '                      Principal                       '
      CaptionAlign = acLeft
      TabOrder = 0
      OnClick = btn_mainClick
    end
    object btn_params: TJcButton
      AlignWithMargins = True
      Left = 1
      Top = 64
      Width = 143
      Height = 60
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      ColorFace = 6908265
      ColorGrad = 6908265
      ColorDark = 6908265
      ColorLight = 6908265
      ColorBorder = clGray
      ColorText = clWhite
      OverColorFace = 8487297
      OverColorGrad = 8487297
      OverColorDark = 8487297
      OverColorLight = 8487297
      OverColorBorder = clWhite
      OverColorText = clWhite
      DownColorFace = 10980227
      DownColorGrad = 10980227
      DownColorDark = 10980227
      DownColorLight = 10980227
      DownColorBorder = 15319723
      DownColorText = clWhite
      DisabledColorFace = 15658734
      DisabledColorGrad = 15658734
      DisabledColorDark = 15658734
      DisabledColorLight = 15658734
      DisabledColorBorder = 13816530
      DisabledColorText = 13816530
      ColorFocusRect = 6908265
      ColorScheme = csCustom
      Ctl3D = True
      Layout = blGlyphTop
      Glyph.Data = {
        360C0000424D360C00000000000036000000280000001F000000200000000100
        180000000000000C0000000000000000000000000000000000002825213C3731
        3C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37
        313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C
        37313C37313C37313C37313C37313C37313C37313C37310000002825213C3731
        3C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37
        313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C
        37313C37313C37313C37313C37313C37313C37313C37310000003C37313C3731
        3C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37
        313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C
        37313C37313C37313C37313C37313C37313C37313C37310000003C37313C3731
        3C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37
        313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C
        37313C37313C37313C37313C37313C37313C37313C37310000003C37313C3731
        3C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37
        313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C
        37313C37313C37313C37313C37313C37313C37313C37310000003C37313C3731
        3C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37
        313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C
        37313C37313C37313C37313C37313C37313C37313C37310000003C37313C3731
        3C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37
        313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C
        37313C37313C37313C37313C37313C37313C37313C37310000003C37313C3731
        3C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37
        31514C477F7C7883807C83807C7F7C78514C473C37313C37313C37313C37313C
        37313C37313C37313C37313C37313C37313C37313C37310000003C37313C3731
        3C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37
        31D0CFCDFFFFFFFFFFFFFFFFFFFFFFFFD0CFCD3C37313C37313C37313C37313C
        37313C37313C37313C37313C37313C37313C37313C37310000003C37313C3731
        3C37313C37313C37313C37313C37313C37313C37313C37313C37313C37315954
        4FE3E2E2CDCCCA3C37313C3731CDCCCAE3E2E259544F3C37313C37313C37313C
        37313C37313C37313C37313C37313C37313C37313C37310000003C37313C3731
        3C37313C37313C37313C37313C37313C37313C37313C37313C37313C37317673
        6FEEEDEDB6B4B23C37313C3731B6B4B2EEEDED76736F3C37313C37313C37313C
        37313C37313C37313C37313C37313C37313C37313C37310000003C37313C3731
        3C37313C37313C37313C37313C37317F7C78EFEEEEFCFCFCDFDEDDA4A29FC3C1
        C0F6F6F69896923C37313C3731989692F6F6F6C3C1C09C9996DFDEDDFCFCFCEF
        EEEE7F7C783C37313C37313C37313C37313C37313C37310000003C37313C3731
        3C37313C37313C37313C37313C3731CBCAC9F1F1F0B4B2AFE7E6E6FEFEFEFCFC
        FBC5C3C145413B3C37313C373145413BC4C2C0FAFAFAFEFEFEE7E6E6B8B6B4F2
        F2F2CBCAC93C37313C37313C37313C37313C37313C37310000003C37313C3731
        3C37313C37313C37313C3731979592F7F7F7BDBBB93C37313C37313C37313C37
        313C37313C37313C37313C37313C37313C37313C37313C37313C37313C3731BD
        BBB9F7F7F79795923C37313C37313C37313C37313C37310000003C37313C3731
        3C37313C37313C37313C3731CBCAC9F0F0EF7D7A763C37313C37313C37313C37
        31878481E2E1E0FCFCFCFCFCFCE2E1E08784813C37313C37313C37313C373178
        7570EDEDECCBCAC93C37313C37313C37313C37313C37310000003C37313C3731
        3C37313C37313C37313C3731999693F5F5F4E9E9E8827F7B3C37313C37318B88
        85F2F2F2E6E6E5A4A29FA4A29FE6E6E5F2F2F28B88853C37313C3731787570E3
        E2E2F5F5F49D9A973C37313C37313C37313C37313C37310000003C37313C3731
        3C37313C37313C37313C37313C3731827F7BEBEAEAE9E8E76E6A663C3731D0CF
        CDEBEAEA73706C3C37313C373173706CEBEAEAD0CFCD3C37316E6A66E9E8E7EB
        EAEA827F7B3C37313C37313C37313C37313C37313C37310000003C37313C3731
        3C37313C37313C37313C37313C37313C3731918E8BF2F1F19F9D9A514C47E2E1
        E0CBCAC93C37313C37313C37313C3731CBCAC9E2E1E0514C479F9D9AF2F1F191
        8E8B3C37313C37313C37313C37313C37313C37313C37310000003C37313C3731
        3C37313C37313C37313C37313C373145413BBBBAB8F3F3F38D8A863C3731DCDB
        DAD9D8D745413B3C37313C373145413BD9D8D7DCDBDA3C37318D8A86F3F3F3BB
        BAB845413B3C37313C37313C37313C37313C37313C37310000003C37313C3731
        3C37313C37313C37313C3731514C47CBC9C8FCFCFBC5C4C245413B3C3731B6B4
        B2F7F7F7ADABA83C37313C3731ADABA8F7F7F7B6B4B23C373145413BC5C4C2FC
        FCFBCFCDCC5C57523C37313C37313C37313C37313C37310000003C37313C3731
        3C37313C37313C37313C3731C1BFBDF7F7F7ABA9A73C37313C37313C37315C57
        52CFCDCCFDFDFDF7F7F7F7F7F7FDFDFDCFCDCC5C57523C37313C37313C3731AD
        ABA8F8F8F7C1BFBD3C37313C37313C37313C37313C37310000003C37313C3731
        3C37313C37313C37313C3731BBB9B7F6F5F5908D893C37313C37313C37313C37
        313C3731908D89BCBAB8BAB8B6908D893C37313C37313C37313C37313C373197
        9592F7F7F7BBB9B73C37313C37313C37313C37313C37310000003C37313C3731
        3C37313C37313C37313C37316E6A66E9E8E7DEDDDC5C5752898682C1BFBDBDBB
        B9726E6A3C37313C37313C37313C3731726E6ABDBBB9C1BFBD89868259544FDC
        DBDAE9E8E76E6A663C37313C37313C37313C37313C37310000003C37313C3731
        3C37313C37313C37313C37313C3731A7A5A3FAFAFAF8F8F7FDFDFDF7F7F7F9F9
        F9E9E8E76E6A663C37313C37316E6A66E9E8E7F9F9F9F7F7F7FDFDFDF8F8F7FA
        FAFAA7A5A33C37313C37313C37313C37313C37313C37310000003C37313C3731
        3C37313C37313C37313C37313C373145413BB5B3B1C9C8C68986823C37318E8B
        88F5F5F4ADABA83C37313C3731ADABA8F6F5F5918E8B3C3731898682C9C8C6B5
        B3B145413B3C37313C37313C37313C37313C37313C37310000003C37313C3731
        3C37313C37313C37313C37313C37313C37313C37313C37313C37313C37316E6A
        66EAEAE9C3C1C03C37313C3731C3C1C0EAEAE96E6A663C37313C37313C37313C
        37313C37313C37313C37313C37313C37313C37313C37310000003C37313C3731
        3C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37
        31DFDEDDE5E4E3B8B6B3B8B6B3E5E4E3DFDEDD3C37313C37313C37313C37313C
        37313C37313C37313C37313C37313C37313C37313C37310000003C37313C3731
        3C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37
        319D9A97EEEDEDF5F5F4F5F5F4EEEDED9D9A973C37313C37313C37313C37313C
        37313C37313C37313C37313C37313C37313C37313C37310000003C37313C3731
        3C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37
        313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C
        37313C37313C37313C37313C37313C37313C37313C37310000003C37313C3731
        3C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37
        313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C
        37313C37313C37313C37313C37313C37313C37313C37310000003C37313C3731
        3C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37
        313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C
        37313C37313C37313C37313C37313C37313C37313C37310000003C37313C3731
        3C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37
        313C37313C37313C37313C37313C37313C37313C37313C37313C37313C37313C
        37313C37313C37313C37313C37313C37313C37313C3731000000}
      Spacing = 0
      TransparentGlyph = True
      Gradient = True
      HotTrack = True
      Align = alTop
      Caption = 'Par'#226'metros'
      CaptionAlign = acCenter
      TabOrder = 1
      OnClick = btn_paramsClick
    end
    object btn_aws_s3: TJcButton
      AlignWithMargins = True
      Left = 1
      Top = 127
      Width = 143
      Height = 60
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      ColorFace = 6908265
      ColorGrad = 6908265
      ColorDark = 6908265
      ColorLight = 6908265
      ColorBorder = clGray
      ColorText = clWhite
      OverColorFace = 8487297
      OverColorGrad = 8487297
      OverColorDark = 8487297
      OverColorLight = 8487297
      OverColorBorder = clWhite
      OverColorText = clWhite
      DownColorFace = 10980227
      DownColorGrad = 10980227
      DownColorDark = 10980227
      DownColorLight = 10980227
      DownColorBorder = 15319723
      DownColorText = clWhite
      DisabledColorFace = 15658734
      DisabledColorGrad = 15658734
      DisabledColorDark = 15658734
      DisabledColorLight = 15658734
      DisabledColorBorder = 13816530
      DisabledColorText = 13816530
      ColorFocusRect = 6908265
      ColorScheme = csCustom
      Ctl3D = True
      Layout = blGlyphTop
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        20000000000000100000130B0000130B00000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000808080B0D0D
        0D150D0D0D150D0D0D150D0D0D150D0D0D150D0D0D150D0D0D150D0D0D150D0D
        0D150D0D0D150D0D0D150D0D0D150D0D0D150D0D0D150908080B000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000001616160E6766658F7B7A
        78D27A7977D27A7977D27A7977D27A7977D27A7977D27A7977D27A7977D27A79
        77D27A7977D27A7977D27A7977D27A7977D27B7A78D2676664941716160F0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000D0D0C068C8C8B92C4C3C3F8C3C2
        C1FFC3C2C1FFC3C2C1FFC3C2C1FFC3C2C1FFC3C2C1FFC3C2C1FFC3C2C1FFC0BF
        BEFBBFBEBCF9BFBEBCF9BFBEBCF9BFBEBCF9BFBEBDFAC4C3C2F88C8C8B920C0C
        0C06000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000018181713B2B0B0D1C9C8C7FFC7C6
        C5FFC7C6C5FFC7C6C5FFC7C6C5FFC7C6C5FFC7C6C5FFC8C7C6FFBDBCBBD75757
        57533D3D3C473D3D3C473D3D3C473D3D3C4746454549ACABAABAB3B2B1D31717
        1713000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000001515150FAEADADC5CCCBCAFFCAC9
        C8FFCAC9C8FFCAC9C8FFCAC9C8FFCAC9C8FFCAC9C8FFCAC9C8FFC6C6C5F19B9A
        99B28E8D8DAB8E8D8DAB8E8D8DAB8E8D8DAB929291ADC1BFBFE4AFAEADC51515
        150E000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000050505015A5959498E8D8D9B908F
        8EA0908F8FA0908F8FA0908F8FA0908F8FA0908F8FA0908F8FA091908FA19392
        91A4949392A4949392A4949392A4949392A4939291A48F8E8D9C5A5959480505
        0501000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000001919190F5654
        527B5E5C5A935D5C5A935D5C5A935D5C5A935D5C5A935D5C5A935D5C5A935D5C
        5A935D5C5A935D5C5A935D5C5A935E5C5A935856547E1C1C1B12000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000003232312B9C9B9BA8B8B7
        B6FDB9B8B6FFB9B7B6FFB9B7B6FFB9B7B6FFB9B7B6FFB9B7B6FFB9B7B6FFB9B7
        B6FFB9B7B6FFB9B7B6FFB9B7B6FFB9B7B6FFB9B8B6FF9D9C9CAA323231290000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000D0D0D079A9999AAC0C0BEE39493
        929E8F8E8E9A8F8F8E9A8F8F8E9A8F8F8E9A8F8F8E9A8F8F8E9A8F8F8E9A8F8F
        8E9A8F8F8E9A8F8F8E9A8F8F8E9A8F8F8E9A9493929EC1BFBFE49A9A99A60D0D
        0D06000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000017171712B4B3B2D1949392940A0A
        0A01040404000404040004040400040404000404040004040400040404000404
        0400040404000404040004040400040404000A0A0A0194939298B4B3B2CE1717
        1710000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000017171712B3B2B1D1908E8E8F0404
        0400000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000040404008F8F8E93B3B2B1CE1717
        1711000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000017171712B3B2B1D1908E8E8F0404
        0400000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000040404008F8F8E93B3B2B1CE1717
        1711000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000017171712B3B2B1D1908E8E8F0404
        0400000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000040404008F8F8E93B3B2B1CE1717
        1711000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000017171712B3B2B1D1908E8E8F0404
        0400000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000040404008F8F8E93B3B2B1CE1717
        1711000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000017171712B3B2B1D1908E8E8F0404
        0400000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000040404008F8F8E93B3B2B1CE1717
        1711000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000017171712B3B2B1D1908E8E8F0404
        0400000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000040404008F8F8E93B3B2B1CE1717
        1711000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000017171712B4B2B2D2918F8F910808
        0800040404000404040004040400040404000404040004040400040404000404
        0400040404000404040004040400040404000808080090908F95B3B2B1CF1717
        1711000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000012111109A7A6A6B3BBBAB9D9908F
        8F898E8E8D858E8E8D868E8E8D868E8E8D868E8E8D868E8E8D868E8E8D868E8E
        8D868E8E8D868E8E8D868E8E8D868E8E8D85908F8E89BBBAB9DCABAAA9B01313
        1308000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000010101004B4B4B38A7A6A6B6B3B2
        B1D6B3B2B1D6B3B2B1D6B3B2B1D6B3B2B1D6B3B2B1D6B3B2B1D6B3B2B1D6B3B2
        B1D6B3B2B1D6B3B2B1D6B3B2B1D6B3B2B1D6B3B2B1D6A7A6A5B44C4C4C360202
        0200000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000001212120A1818
        1715171717151717171517171715171717151717171517171715171717151717
        1715171717151717171517171715171717151818171512121109000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Spacing = 0
      TransparentGlyph = True
      Gradient = True
      HotTrack = True
      Align = alTop
      Caption = '                      AWS S3                       '
      CaptionAlign = acLeft
      TabOrder = 2
      OnClick = btn_aws_s3Click
    end
  end
  object pnl_top: TJcPanel
    Left = 0
    Top = 0
    Width = 877
    Height = 57
    Align = alTop
    BevelColor = 6908265
    Color = 6908265
    Gradient.Enabled = False
    Gradient.FadeColor = 16638395
    ParentBackground = False
    TabOrder = 2
    object Label1: TLabel
      Left = 17
      Top = 17
      Width = 128
      Height = 19
      Caption = 'Backup Restore'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 152
      Top = 20
      Width = 67
      Height = 16
      Caption = 'for AWS S3'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clSilver
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
  end
  object TrayIcon: TTrayIcon
    Animate = True
    Hint = 'Backup Firebird'
    BalloonHint = 'Backup Firebird for AWS S3'
    BalloonTitle = 'Backup Firebird for AWS S3'
    Visible = True
    OnClick = TrayIconClick
    Left = 23
    Top = 305
  end
  object PopupMenu: TPopupMenu
    Left = 85
    Top = 304
    object Maximinizar1: TMenuItem
      Caption = 'Maximinizar'
      OnClick = Maximinizar1Click
    end
    object Minimizar1: TMenuItem
      Caption = 'Minimizar'
      OnClick = Minimizar1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object FinalizarNFeConsole1: TMenuItem
      Caption = 'Fechar Programa'
      OnClick = FinalizarNFeConsole1Click
    end
  end
end
