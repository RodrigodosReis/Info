inherited fClientes: TfClientes
  Caption = 'Cadastro de Clientes'
  ClientHeight = 439
  ClientWidth = 848
  Position = poDesktopCenter
  ExplicitWidth = 854
  ExplicitHeight = 468
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl: TPageControl
    Width = 848
    Height = 439
    Font.Charset = ANSI_CHARSET
    Font.Name = 'Tahoma'
    ParentFont = False
    ExplicitWidth = 848
    ExplicitHeight = 439
    inherited TabPesquisa: TTabSheet
      ExplicitWidth = 840
      ExplicitHeight = 411
      object Label8: TLabel [0]
        Left = 1
        Top = 5
        Width = 80
        Height = 13
        Caption = 'Pesquisar por:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inherited DBGridDadosTerc: TDBGrid
        Left = 1
        Top = 48
        Width = 836
        DataSource = DataSource
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Name = 'Tahoma'
        OnDrawColumnCell = DBGridDadosTercDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Nome'
            Width = 476
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BAIRRO'
            Title.Caption = 'Bairro'
            Width = 235
            Visible = True
          end>
      end
      inherited BtnPesquisar: TBitBtn
        Top = 11
        Width = 128
        ExplicitTop = 11
        ExplicitWidth = 128
      end
      object ComboBoxPesqPor: TComboBox
        Left = 1
        Top = 21
        Width = 82
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 2
        Text = 'Nome'
        OnChange = ComboBoxPesqPorChange
        Items.Strings = (
          'Nome'
          'C'#243'digo')
      end
      object EditPesq: TMaskEdit
        Left = 85
        Top = 21
        Width = 396
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 3
        Text = ''
        OnKeyPress = EditPesqKeyPress
      end
    end
    inherited TabCadastro: TTabSheet
      ExplicitWidth = 840
      ExplicitHeight = 411
      object Label1: TLabel [0]
        Left = 1
        Top = 7
        Width = 38
        Height = 13
        Caption = 'C'#243'digo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel [1]
        Left = 54
        Top = 7
        Width = 32
        Height = 13
        Caption = 'Nome'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LabelDoc2: TLabel [2]
        Left = 564
        Top = 7
        Width = 62
        Height = 13
        Caption = 'Identidade'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label37: TLabel [3]
        Left = 96
        Top = 55
        Width = 52
        Height = 13
        Caption = 'Telefone '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label42: TLabel [4]
        Left = 211
        Top = 55
        Width = 38
        Height = 13
        Caption = 'E-mail '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel [5]
        Left = 1
        Top = 55
        Width = 20
        Height = 13
        Caption = 'CPF'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inherited PanelCadBottom: TPanel
        Top = 336
        Width = 840
        TabOrder = 8
        ExplicitTop = 336
        ExplicitWidth = 840
        inherited ToolBar: TToolBar
          Left = 226
          Top = 0
          Width = 545
          Height = 52
          ButtonHeight = 52
          ButtonWidth = 56
          Font.Charset = ANSI_CHARSET
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Images = ImageList1
          ParentFont = False
          ExplicitLeft = 226
          ExplicitTop = 0
          ExplicitWidth = 545
          ExplicitHeight = 52
          inherited BtnNovo: TToolButton
            ImageIndex = 0
            ExplicitWidth = 56
            ExplicitHeight = 52
          end
          inherited BtnSalvar: TToolButton
            Left = 56
            ImageIndex = 1
            ExplicitLeft = 56
            ExplicitWidth = 56
            ExplicitHeight = 52
          end
          inherited BtnAlterar: TToolButton
            Left = 112
            ImageIndex = 2
            ExplicitLeft = 112
            ExplicitWidth = 56
            ExplicitHeight = 52
          end
          inherited BtnExcluir: TToolButton
            Left = 168
            ExplicitLeft = 168
            ExplicitWidth = 56
            ExplicitHeight = 52
          end
          inherited BtnCancelar: TToolButton
            Left = 224
            ImageIndex = 5
            ExplicitLeft = 224
            ExplicitWidth = 56
            ExplicitHeight = 52
          end
          inherited BtnVoltar: TToolButton
            Left = 280
            OnClick = BtnVoltarClick
            ExplicitLeft = 280
            ExplicitWidth = 56
            ExplicitHeight = 52
          end
          inherited ToolButton1: TToolButton
            Left = 336
            ImageIndex = 4
            ExplicitLeft = 336
            ExplicitWidth = 56
            ExplicitHeight = 52
          end
        end
        inherited StatusBar: TStatusBar
          Width = 838
          ExplicitWidth = 838
        end
      end
      object EditRG: TEdit
        Tag = 5
        Left = 564
        Top = 23
        Width = 101
        Height = 21
        MaxLength = 14
        TabOrder = 2
      end
      object MaskEditCPF: TMaskEdit
        Tag = 5
        Left = 1
        Top = 71
        Width = 86
        Height = 21
        EditMask = '999.999.999-99;0;_'
        MaxLength = 14
        TabOrder = 3
        Text = ''
      end
      object EditCodigo: TEdit
        Tag = 5
        Left = 1
        Top = 23
        Width = 41
        Height = 21
        TabStop = False
        Color = clInactiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object EditNome: TEdit
        Tag = 5
        Left = 54
        Top = 23
        Width = 488
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 40
        TabOrder = 1
      end
      object GroupBox1: TGroupBox
        Left = 3
        Top = 106
        Width = 835
        Height = 224
        Caption = 'Endere'#231'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        object Label14: TLabel
          Left = 9
          Top = 20
          Width = 20
          Height = 13
          Caption = 'CEP'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label22: TLabel
          Left = 768
          Top = 20
          Width = 44
          Height = 13
          Caption = 'N'#250'mero'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label23: TLabel
          Left = 8
          Top = 67
          Width = 79
          Height = 13
          Caption = 'Complemento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label24: TLabel
          Left = 456
          Top = 67
          Width = 34
          Height = 13
          Caption = 'Bairro'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label25: TLabel
          Left = 8
          Top = 116
          Width = 38
          Height = 13
          Caption = 'Cidade'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label26: TLabel
          Left = 458
          Top = 116
          Width = 14
          Height = 13
          Caption = 'UF'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label86: TLabel
          Left = 490
          Top = 116
          Width = 23
          Height = 13
          Caption = 'Pa'#237's'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 101
          Top = 19
          Width = 65
          Height = 13
          Caption = 'Logradouro'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object MaskEditCEP: TRMaskEdit
          Tag = 5
          Left = 6
          Top = 35
          Width = 66
          Height = 21
          Hint = 
            'Digite o CEP e tecle Tab para trazer automaticamente o endere'#231'o ' +
            'ou Pesquise-o teclando F10'
          CharCase = ecUpperCase
          Ctl3D = True
          EditMask = '99999-999;0;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 9
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          Text = ''
          OnExit = MaskEditCEPExit
          Valor = 'RMaskEdit1'
          Field = 'CEP'
        end
        object EditEndereco: TREdit
          Tag = 5
          Left = 100
          Top = 35
          Width = 661
          Height = 21
          CharCase = ecUpperCase
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 50
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          Valor = 'REdit1'
          Field = 'ENDERECO'
        end
        object EditNumero: TREdit
          Tag = 5
          Left = 767
          Top = 35
          Width = 64
          Height = 21
          CharCase = ecUpperCase
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 10
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          Valor = 'REdit1'
          Field = 'NUMERO'
        end
        object EditComplemento: TREdit
          Tag = 5
          Left = 9
          Top = 83
          Width = 441
          Height = 21
          CharCase = ecUpperCase
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 30
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
          Valor = 'REdit1'
          Field = 'COMPLEMENTO'
        end
        object EditBairro: TREdit
          Tag = 5
          Left = 457
          Top = 83
          Width = 304
          Height = 21
          CharCase = ecUpperCase
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 30
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 4
          Valor = 'REdit1'
          Field = 'BAIRRO'
        end
        object BtnPesqCep: TBitBtn
          Tag = 5
          Left = 75
          Top = 35
          Width = 23
          Height = 21
          Caption = '...'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
          TabStop = False
          OnClick = BtnPesqCepClick
        end
        object EditCidade: TREdit
          Tag = 5
          Left = 9
          Top = 131
          Width = 441
          Height = 21
          CharCase = ecUpperCase
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 70
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
          Valor = 'REdit1'
          Field = 'BAIRRO'
        end
        object EditUF: TREdit
          Tag = 5
          Left = 457
          Top = 131
          Width = 28
          Height = 21
          CharCase = ecUpperCase
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 2
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 6
          Valor = 'REdit1'
          Field = 'BAIRRO'
        end
        object EditPais: TREdit
          Tag = 5
          Left = 491
          Top = 132
          Width = 270
          Height = 21
          CharCase = ecUpperCase
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 100
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 7
          Valor = 'REdit1'
          Field = 'COMPLEMENTO'
        end
      end
      object MaskEditTelCel: TRMaskEdit
        Tag = 5
        Left = 97
        Top = 71
        Width = 104
        Height = 21
        Ctl3D = True
        EditMask = '(99) 999999999;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 14
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 4
        Text = ''
        Valor = 'RMaskEdit1'
        Field = 'TELEFONE_CEL'
      end
      object EditEmail: TRMaskEdit
        Tag = 5
        Left = 211
        Top = 71
        Width = 294
        Height = 21
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 50
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 5
        Text = ''
        Valor = 'RMaskEdit1'
        Field = 'TELEFONE_FAX'
      end
      object BtnEmail: TBitBtn
        Left = 511
        Top = 68
        Width = 31
        Height = 24
        Hint = 'Clique aqui para enviar e-mail'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Glyph.Data = {
          F6000000424DF60000000000000056000000280000000E0000000A0000000100
          080000000000A000000000000000000000000800000000000000FFFFFF00BFFB
          FA0097EBEA000CC5C40000A4A300007E7D00004A490000000000060707070707
          07070707070707070D0006030404040404040404040404070D00060104020202
          02020202020404070D0006000204020205050202040204070D00060002020405
          02020504020204070D0006000202050202020205020204070D00060002050202
          02020202050204070D0006000502020202020202020504070D00060400000000
          00000000000003070D0006060606060606060606060606060D00}
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        OnClick = BtnEmailClick
      end
      object CkPesq: TCheckBox
        Tag = 5
        Left = 564
        Top = 70
        Width = 200
        Height = 17
        Caption = 'Pesquisar CEP Com ACBr?'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Configura'#231#227'o de &Email  '
      ImageIndex = 2
      object GrEmail: TGroupBox
        Left = 0
        Top = 3
        Width = 837
        Height = 405
        Caption = ' Cadastre o email desejado para realizar envios de emails '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label68: TLabel
          Left = 12
          Top = 22
          Width = 82
          Height = 13
          Caption = 'Servidor SMTP'
        end
        object Label69: TLabel
          Left = 540
          Top = 21
          Width = 31
          Height = 13
          Caption = 'Porta'
        end
        object Label70: TLabel
          Left = 12
          Top = 105
          Width = 260
          Height = 13
          Caption = 'Email (Nome de Usu'#225'rio no provedor de Email)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label71: TLabel
          Left = 360
          Top = 104
          Width = 35
          Height = 13
          Caption = 'Senha'
        end
        object Label72: TLabel
          Left = 11
          Top = 144
          Width = 145
          Height = 13
          Caption = 'Assunto do email enviado'
        end
        object Label73: TLabel
          Left = 9
          Top = 186
          Width = 112
          Height = 13
          Caption = 'Mensagem do Email'
        end
        object lblDefaultCharset: TLabel
          Left = 11
          Top = 308
          Width = 91
          Height = 13
          Caption = 'Default Charset:'
          Color = clBtnFace
          ParentColor = False
        end
        object lbl1: TLabel
          Left = 300
          Top = 308
          Width = 69
          Height = 13
          Caption = 'IDE Charset:'
          Color = clBtnFace
          ParentColor = False
        end
        object Label4: TLabel
          Left = 294
          Top = 65
          Width = 110
          Height = 13
          Caption = 'Nome para Exibi'#231#227'o'
        end
        object Label5: TLabel
          Left = 12
          Top = 65
          Width = 83
          Height = 13
          Caption = 'Email de Envio '
        end
        object EditSMTP: TEdit
          Left = 12
          Top = 38
          Width = 522
          Height = 21
          MaxLength = 100
          TabOrder = 0
        end
        object edtSmtpPort: TEdit
          Left = 540
          Top = 37
          Width = 40
          Height = 21
          TabOrder = 1
        end
        object edtSmtpUser: TEdit
          Left = 11
          Top = 120
          Width = 345
          Height = 21
          MaxLength = 100
          TabOrder = 6
        end
        object edtSmtpPass: TEdit
          Left = 360
          Top = 120
          Width = 220
          Height = 21
          PasswordChar = '*'
          TabOrder = 7
        end
        object edtEmailAssunto: TEdit
          Left = 11
          Top = 160
          Width = 806
          Height = 21
          TabOrder = 8
        end
        object cbEmailSSL: TCheckBox
          Left = 585
          Top = 39
          Width = 82
          Height = 17
          Caption = 'Usar SSL ?'
          TabOrder = 2
        end
        object mmEmailMsg: TMemo
          Left = 9
          Top = 202
          Width = 808
          Height = 94
          TabOrder = 9
        end
        object cbEmailTLS: TCheckBox
          Left = 662
          Top = 39
          Width = 82
          Height = 17
          Caption = 'Usar TLS ?'
          TabOrder = 3
        end
        object Button1: TButton
          Left = 11
          Top = 368
          Width = 283
          Height = 25
          Caption = 'Salvar Configura'#231#227'o'
          TabOrder = 12
          OnClick = Button1Click
        end
        object cbbDefaultCharset: TComboBox
          Left = 11
          Top = 327
          Width = 283
          Height = 21
          Style = csDropDownList
          TabOrder = 10
        end
        object cbbIdeCharSet: TComboBox
          Left = 300
          Top = 328
          Width = 283
          Height = 21
          Style = csDropDownList
          TabOrder = 11
        end
        object btLerConfig: TButton
          Left = 300
          Top = 368
          Width = 283
          Height = 25
          Caption = 'Ler Configura'#231#227'o'
          TabOrder = 13
          OnClick = btLerConfigClick
        end
        object EditExib: TEdit
          Left = 294
          Top = 81
          Width = 522
          Height = 21
          TabOrder = 5
        end
        object EditEnvio: TEdit
          Left = 12
          Top = 81
          Width = 276
          Height = 21
          TabOrder = 4
        end
        object cbEmailHTML: TCheckBox
          Left = 740
          Top = 39
          Width = 94
          Height = 17
          Caption = 'Usar HTML ?'
          TabOrder = 14
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Configura'#231#227'o de SGBD &Firebird '
      ImageIndex = 3
      TabVisible = False
    end
  end
  inherited Pop: TPopupMenu
    Left = 542
    Top = 205
  end
  inherited ImageList1: TImageList
    Height = 32
    Width = 32
    Left = 489
    Top = 205
    Bitmap = {
      494C010107000800040020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000004000000001002000000000000080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
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
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
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
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
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
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
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
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
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
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
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
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
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
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AD6B2C00E1A53C00E7C69000F3E1
      C400F9F1E300FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000904AC000000C5000000C2000000C2000000C2000000C3000000C5000404
      A900FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F6DFBE00EFC78100EAB34E00EBB84F00EBB74E00EAB54F00EFC78100F6DF
      BE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E5CEBB00B6B7BA00975C1A00DF9C1F00CC891B00CD8A
      1B00CD8A1B00D7A24A00E6BF7400E5CEB8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF000701
      AF002826F7006464FC006464FC006464FC006464FC006464FC003E3AFC000000
      F6000000AE00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFFFFFFF00FFFFFF00FEFBF800E7B0
      5F00EEC35A00F5D77700FCEC8F00FDE88B00F8E28900F7E28600F6DA7900EEC3
      5A00E7B05F00FEFBF800FFFFFF00FFFFFF00000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B366240012101900804A0900E39C2000CB891C00CD8A
      1C00CD8A1C00CC891C00D6941C00AC641D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF000B05B500191E
      F700C5C3FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C5C3FF006464
      FC000200F4000000B300FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFFFFFFF00FEFCF800E1A04000F3D3
      7100F6DB8000FAE28400F2CF6300B6510000F5D77500F2D27200F4D47600F6DC
      8000F3D27100E19F3F00FEFCF800FFFFFF00000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C77C2D0013111A00864F0900E49A2100CD8A1D00CF8B
      1D00CF8B1D00CE8A1D00D8941B00B4702B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF000F0ABC002833F7006A72
      FC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C5C3
      FF003336F7000D10F5000000BB00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFFFFFFF00E0A55C00F2CD6800F5D4
      7400F9DB7700EDBE4A00BB672F00BB672F00FFE27200F9DC7800F9DB7600F9DA
      7500FCE48000F3D26B00E0A55B00FFFFFF00000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FEFE
      FF002121CB00FFFFFF00D792410014111B008A530B00E69E2200CE8C1F00CF8D
      1F00CF8D1F00CE8C1F00D6941D00B77430000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001510C4003344F8000B1CF500EDED
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009396FF000B13F400141BF6000705C4000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFF0D7BE00E5AE4A00F4D36F00F6D6
      6E00E6AB3A00B15B1100FAFEFF00BB672F00D78B2400DB9A3500DB983300DA96
      3200DB953600F2CE6900E7B34C00F0D7BE00000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF001614D900242AF500AE6E4100251A00008E530E00D8922000CF8C1F00D08F
      2300D08F2200CF8E2200D7962000BB7934000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003638DC00172FF7001026F400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008F96FF000B1BF3001723F6000A0CD9000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFE0AD7300EDC15400F7D36600E19E
      2A00BD703000F7F2F000FFFFFF00BB672F00CF7B0F00CF7B0F00CF7B0F00CF7B
      0F00CF7B0F00D4923200F7D36000E0AD7300000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003039E8001D2AE800232CE800222E
      EB002430EF002032FF001B25F90000002F00AA6F0600E4EAF100BC741800D693
      2400D2922700D2912700D8992500BF7E36000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003639DE001B38F700142FF400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007683FD00FFFF
      FF00BBC3FF000F24F4001A2EF7000C10DB000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFD28C4100FDDA7300E29C2700C785
      4400FEFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CF7B0F00FCDB7000D38B4100000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000616EF000152EF400223AF4002137
      F4002338F200273AEF00213CFF002B3FFF0089564500FAD27300D29A3D00D698
      2E00D3922900D4932B00DA9C2D00C38339000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003337E1001E3DF7001735F500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006D80FB00FFFF
      FF00BBC3FF00122AF4001A35F7000C12DE000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFD4924600E6BD6500C6854B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CF800F00FFEE9D00D08B4000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006B7BF5004565F7004A67F6004E69
      F600425CF3001F3CF2005E7FFF001F28B900A4682000F0BA4D00DEAE5600DFAF
      5800DBA74900D59A3600DB9F3100C6893E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006D70EF00425BFA002441F600FFFF
      FF00FFFFFF00FBFCFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006D80FB00FFFF
      FF00BBC3FF001732F500334FF8003F45E8000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFC9833800EEC97100C98F5900FEFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DCA64300FAE79500C67E3200000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005A61F000656FF100636DF1006670
      F000495FF100638AFF008667B4000D030000AA762800F2C46D00E0B05D00E0B2
      5E00E2B46200E2B26100E1AE4B00CB8C3F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006F73F100647CFD005E76FC00FFFF
      FF0093A1FF00D7DCFF0093A1FF00FFFFFF008696FE00FFFFFF006D80FB00FDFE
      FF00BBC3FF005B72FB006175FC005359EF000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFC2773800FCE18600E2AC4A00CB89
      3F00F8F4F300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DFA74100F8DC8100C2783800000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF003B40F0005461FF00EAA94F0022180B00A8793A00F5CA7700E2B76800E3B8
      6900E3B86900E4B86A00EAC37700D2994D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007176F4006880FD005E76FB00FFFF
      FF00B5C2FF00E4E9FF00ACB8FF00FFFFFF00AAB6FF00FFFFFF006D80FB008F96
      FF008F96FF006076FC006278FD00535AF2000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFCC936900EACA8000EECA6B00E3B0
      4500D0934200F9F8F900FFFFFF00E7B34E00E7B34E00E7B34E00E7B34E00E7B3
      4E00E7B34E00E7B34E00EECE8400CC936900000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FBFB
      FF002222FF00FFFFFF00F7B64D001C101400B2803F00F8D28400E6BF7300E7C0
      7400E7C07400E7BF7300ECCB8000D69E53000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005754F00097ABFF00617CFB00FFFF
      FF00B5C2FF00E3E8FF00ACBBFF00FFFFFF00A9B7FF00FFFFFF006D80FB00617B
      FB00657CFC00667DFC00657DFC00504DF0000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFE4C7B700CC904A00F9E39200E7BB
      5800E2A93700D5984000FFFFFF00DDAA6A00DC9D2300E1A83C00E0A53600DFA3
      2E00DFAB4000F8E49500CD904A00E3C7B700000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F6B245001D121200B9894900FDD99100EAC68100EAC5
      8100EAC58100EAC58100F0D08F00D9A458000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF005451F20094A7FF005E7C
      FC00B5C2FF00E6EBFF00AFBDFF00FFFFFF00AABAFF00FFFFFF006D80FB00657D
      FB006981FC006781FC004D49F200FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFFFFFFF00B56F4700E2B66700F7E2
      9300E8C16200E0A42D00DBA75E00DCA46200E1A72C00E4AF3F00E4B34900E8BD
      5F00F7E59600E2B66900B56F4700FFFFFF00000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E7AC5C00180D0E00C4995700FFF2AF00FFE09D00FFE4
      A000F8DB9A00F3D49500F5DEA300DEAC5D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF005350F40095AA
      FF005E7CFC00F1F3FF00B5C2FF00FFFFFF00AEBDFF00FFFFFF007E96FF006983
      FB006C87FD004E4AF300FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFFFFFFF00FCF9F800A74F1A00DFAF
      5A00F8E18900F1D87F00E7C05E00DEA54700E8BF6200E8C56800F0D47C00F8E1
      8A00DFAE5A00A74F1A00FCF9F800FFFFFF00000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00ECB15C00301F1B00231F20006E5A44009E866300BBA7
      7C00DDC18C00F1D39900FEEBBA00E3B265000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF005552
      F60099ADFF007E96FF00829AFF007E96FF007E96FF007E96FF007E96FF006D89
      FC004F4AF500FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFFFFFFF00FFFFFF00FCF8F600AD63
      4500C17C2C00E2B85B00F1D27400F8DF7F00F5DB7E00F0D17300E2B85B00C17C
      2C00AD634500FCF8F600FFFFFF00FFFFFF00000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00EAB96800DCA85100D09D4E00C5944700BA8A4100B382
      3900CF9A4800DFAC5400E9B96400E4B360000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF005955F9007378FC007276FC006C72FC006F73FC006D73FC007578FD005C57
      FB00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DCC1B700BD836200B05E1A00AE612300AE612300B05E1A00BD836200DCC1
      B700FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
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
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
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
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
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
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
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
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
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
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
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
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
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
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
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
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
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
      000000000000000000000000000000000000FFFFFF00FFFFFF00825B1E00A383
      52009E7D48009E7D49009E7D49009E7D49009E7D49009E7D49009E7D49009E7D
      49009E7C4B00997544008D673300FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C1761B00C2751900BD6B1300B965
      0400B9650400B9650400BA650400BA650400BA650400BA650400BA650400BA65
      0400BA650400BC690A00B96A1500C3791F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6751B00D6933400D1842000CC7C1500CA760600C26A0000A96100009040
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00140EAE001711B800100B
      A100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00100BA1001711B800140EAE00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00A0805200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0099774500FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D5933D00EFB73600CDC6C000E9F8
      FF00DBE5F600DBE8F800DBE8F800DBE8F900DBE8F800DAE7F800DBE7F800D8E4
      F500E9F6FF00CDC6C000EAA71400C0761D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DFA44200FBFFFF00F8D77200F5C75B00F1BD4100EDAE2500D5900000B050
      0500FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001F1AB5002522E9002723F1001F1B
      D100130EA600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00130E
      A6001F1BD1002723F1002522E9001F1AB5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00A6855600FFFF
      FF00F5F4EC00F3F1E800F3F1E900F3F1E900F2F0E700EFE8DE00EEE9E000EFEB
      E200F6F3ED00F0EBE20099723800FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CD955100E8AE3C00DCD7D400ECE8
      E900ADA0A200A79B9E009E93950094898C008A81850083797C007B727600685F
      6400ECE8E900DCD7D400E59E2000C77B25000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EDAB2A00EDAB2A00E59E2900E29B2500DE932300DA8F2200D4841C00D383
      1C00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3AC8004648F6002425F1002A2B
      F3002121D400140FAD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00140FAD002121
      D4002A2BF3002425F1004648F6003D3AC8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00AD916400FFFF
      FF00F6F4EF00F5F2EF00F5F2EF00F5F2EF00F5F2EF00F6F5ED00F3F4E800F3F0
      EA00FCFCF900EFE9E00099733A00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D0965300EAB44700DCD7D400EFF0
      EF00DFDEDC00E1E0DF00E0DFDE00DFE0DD00E0DFDD00DFDEDD00DFE0DE00DBD9
      D900EDEDED00DCD7D400E7A62B00C9802B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000221CB6006262E100444BF300262D
      EF002C33F2002326D7001812B300FFFFFF00FFFFFF001812B3002326D7002C33
      F200262DEF00474DF4006262E100221CB6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00B3966900FFFF
      FF00F6F4EF00F5F2ED00F5F2ED00F5F2ED00F5F3EE00F5F2EE00F7F3EF00F5F2
      ED00FDFDFA00EFE8E00099733A00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D49B5800EBB95000DCD7D400ECE8
      E900A99D9F00A4999E009A91940092888B00897F850082797C007A717700655C
      6200ECE8E900DCD7D400E8AC3700CC8531000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DD982C00DEA13A00DA922800D4892400D0832200CC7B1B00C0680E00B055
      0300FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00241DBB006566E3004853
      F3002934EF002F3BF200262BD9001A13BA001A13BA00262BD9002F3BF2002834
      EF004752F3005F61DF00241DBA00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00B1966700FFFF
      FF00F6F4EF00F5F2ED00F5F2ED00F5F2ED00F7F6EF00F6F1EE00FCF6F400FAF3
      F200FEFBFD00EFE9DF0099733900FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D69E5B00EDBD5A00DCD7D400FFFF
      FF00FFFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DCD7D400EAB34000D08B34000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00E09E3600FBFFFF00FBE18A00F8DE8100F6D27000F5C95F00E5A63000AE52
      0200FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF002621C200656A
      E5004756F3002C3DF0003041F1002B36E4002B36E4003041F1002D3DF0004A59
      F3005D5FE0002119BF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00B1966600FFFF
      FF00F6F4EF00F5F2ED00F4F1EC00F4F0EC00F9F3F200FBFAF000FBF9F500FBF4
      F300FCF7F300EFEAE30099733B00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D9A45E00F0C26300DCD7D400ECE8
      E900A99D9F00A4999E009A91940092888B00897F850082797C007A717700655C
      6200ECE8E900DCD7D400EDB74900D2903A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DC9A3200FAFFFF00F6D57500F3CB6800F2C25700F1BB4300E0951B00AE50
      0100FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF002721
      C6006267E6004356F2003044F0003448F2003448F2003044EF004255F2006166
      E500221AC400FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00B0956D00FFFF
      FF00F7F4ED00F4F1EC00F6F2ED00F9F2F200FAFAF400FBFDF600FCFAF900F4EF
      E700F5F1EC00F0EAE2009A743C00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D8A35C00F0C66D00DCD7D400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DCD7D400EEBD5400D7963E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F1B53800EBAD3100E2941F00DD8E
      1C00D9962F00F9FFFF00F5CD6A00F3C35F00F1C04C00EEB43A00DC921200AB4C
      0000A54C0000984500008E4300008F4400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF002C23CC004551E900354DF100364CEF00364CEF00354DF0004251EA002B23
      CD00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00B19E7C00FFFF
      FF00FCFEF800F9F9F000FBFAF900FAF9FC00FBFCFB00FAFAFC00F3F1E900EAE5
      DD00ECE7E000E6D8CB009A763C00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEAC6900F9D28100C1975C009A7B
      600095775E0097795D0097795D0097795D0097795D0097795C0097795C009577
      5E009A7A5E00C19A6400F7CA6B00D99B44000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0B13400E9AD3600F6F0D400F5E6
      BE00F4D67800F9E39E00F4CB6400F1C15500EEB94300EBB03300E49A0800D081
      0000C1770000CA7D0000A24600008E4300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF001D14CE003240E6003C54F2003850F000384FF0003B54F2003445E9001D15
      CE00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00BDA78700FFFF
      FF00FDFEFC00FAFBF800FAFAFC00FAFBFE00FCFBF900F5F2EA00F0EEE700E9E2
      DA00E6DDD400D6CBB4009B773E00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DDAB6700F6D58B00FFD05600C0A8
      8700C8C5C900CEC6BF00CDC6C000CDC6C000CDC6BF00D6D0CA00D6D3D000CFCE
      D400C0A88800FFD25D00F3CC7500DCA148000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00EAA82B00E9AD3600F9F5
      E300F5E6BE00F6D77700F2C65900F1BD4600EFB23700EAAA2600E3950000CC86
      0000C6820000AB5607008C420000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF001F17
      D400313EE4003E58F1003953F000455EF200455FF2003A53F0003E57F000303A
      E3001F15D300FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00C5B19000FFFF
      FF00FCFDFD00FAF9F900FAFBFD00FBFDFA00F9F7F000F3EEE400DDD4C500D4BE
      AB00D0BCA100BEA784009B783F00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DCA96600F6D99300FBC85D00C2B4
      A200D7DEEB00DDDDDD00DCDDDE00DCDBDD00E7E8EA00C8BAA700A2969200C2B4
      A200C6BCA900FBCB6300F3D07E00E0A74C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00DD8E2100DB95
      2800EEECE100F5E6BE00F0BC4500EDB13500EAA62200E79D0D00C8820000ECB9
      3E00AB56070094420000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF002018D9003542
      E700425FF3003D59F100556EF300737FF200737EF200566EF3003D59F100425E
      F300313AE4001F16D900FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00C7B59600FFFF
      FF00F8FDFD00FAFBFB00FBFDFA00F6F7EB00F3F1E900E3D9CA00C9B49300EBE3
      DC00E1D9C600B79D73009D773F00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E5B97300F6DA9700FBCC6200C8BA
      A700DDE0E900E1DFDD00E0DFDE00DFDDDC00EFF3F9009F886F00E5AF47009E91
      8900C7BDB200FDCF6A00F5D48400E3AC51000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00D789
      1B00D68D2400EDE3D700EEB33400EAAB2B00E7A11600E59A0000E8B83000C068
      0E009C440000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF002018DE003744E9004663
      F200405DF1005C77F3006E76EF003028DF002E25DF007078F0005D77F400405D
      F1004562F200333DE8002117DD00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00C8B59900FFFF
      FF00FBFDFF00FDFDFD00F6F7F200EDE7E000EFE4DD00D1BEA600CDB99A00FFFF
      FF00CFBBA100B3966A00FAF8F500FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E9BC7500F8DD9E00FDCF6900CEC0
      AF00E3E7EF00E7E5E300E6E5E400E5E4E200F1F6FF00BAA38600FFE87300B5AB
      9E00CAC0B800FFD26E00F9DA8E00E7B25B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D3801700D0831F00F1C35E00E9A11900E7990700E8AD1800C0680E00A34A
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000221BE2003947EC004A69F3004462
      F2005F7AF300686EF000271FE200FFFFFF00FFFFFF002C23E200717AF100607B
      F4004362F2004A69F3003846EB002019E2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00C9B89B00FFFF
      FF00FCFFFF00FCF8F300F4EBE500E5DFD700E3D6C600CDB69600BCAA8900D6C8
      B400AA8A5700FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EAC07900F8E09B00FBD16500D3C4
      AF00EAEEF600ECEBE800ECEBE900EBE9E600FBFFFF00A28E7800DEAF4F00A89C
      9500D1C7B900FFDA7800F5D88900E2A442000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CE781100CE883600E9B93900E2900000C0680E00A94C0000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004144EC005372F4004464F2006481
      F4006E76F200271EE600FFFFFF00FFFFFF00FFFFFF00FFFFFF002D25E700747C
      F2006480F4004564F2005270F3003D41EB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00CBBDA200FFFF
      FF00FFFFFF00FAF7F600F0E8DF00DFD7C700D8C6B100C1AA85009F824C00B296
      6A00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ECC47E00FEF4D500FFE29000DCD7
      D400F5FFFF00F6FEFF00F6FEFF00F6FDFF00FFFFFF00DFDDDC00C8BAA700DFDD
      DC00E5E4E200FFDE8800E4AA4500FCF5EC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00BF600500CE883600C0680E00B0520000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004441ED007B8FF5007A94F600737B
      F3002D24EA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002D24
      EA00737CF3007A93F6007A8FF6004441ED000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00C4B39300CFBD
      A400CDBCA100C9B79B00C8B69A00C5AF8D00C3AB8500AA916100AA8C5E00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ECC68100F0CA8200F4CA7D00E8C7
      8800EFCF9400EFD49800EDCF9200EED09200EED09300F2D39600F7D79B00F6D6
      9B00E6C48A00EBB55200FDF9F200FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00BA5F0700B6590400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF004845F0005A59F2002D24
      ED00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF002D24ED005959F2004844F000FFFFFF000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000400000000100010000000000000400000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF00000000
      FFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFF00000000
      FFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFF00000000
      FFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFF00000000
      FFFFFFFFFFFFFFFFFFFFFFFF00000000FF0000FFFF0000FFFF0000FF00000000
      FF0000FFFF0000FFFF0000FF00000000FF0000FFFF0000FFFF0000FF00000000
      FF0000FFFF0000FFFF0000FF00000000FF0000FFFF0000FFFF0000FF00000000
      FF0000FFFF0000FFFF0000FF00000000FF0000FFFF0000FFFF0000FF00000000
      FF0000FFFF0000FFFF0000FF00000000FF0000FFFF0000FFFF0000FF00000000
      FF0000FFFF0000FFFF0000FF00000000FF0000FFFF0000FFFF0000FF00000000
      FF0000FFFF0000FFFF0000FF00000000FF0000FFFF0000FFFF0000FF00000000
      FF0000FFFF0000FFFF0000FF00000000FF0000FFFF0000FFFF0000FF00000000
      FF0000FFFF0000FFFF0000FF00000000FFFFFFFFFFFFFFFFFFFFFFFF00000000
      FFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFF00000000
      FFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFF00000000
      FFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFF00000000
      FFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object DataSource: TDataSource
    DataSet = Query
    Left = 383
    Top = 205
  end
  object Query: TUniQuery
    Connection = DM.DB
    SQL.Strings = (
      'select c.* from clientes c'
      'where 1 = 1')
    Left = 595
    Top = 205
    object QueryCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object QueryNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object QueryRG: TStringField
      FieldName = 'RG'
      Size = 15
    end
    object QueryCPF: TStringField
      FieldName = 'CPF'
      Size = 15
    end
    object QueryTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object QueryEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object QueryLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 100
    end
    object QueryNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 15
    end
    object QueryCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object QueryCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object QueryBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object QueryCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 100
    end
    object QueryUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object QueryPAIS: TStringField
      FieldName = 'PAIS'
      Size = 50
    end
  end
  object QueryMem: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 436
    Top = 205
    object QueryMemCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object QueryMemNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object QueryMemRG: TStringField
      FieldName = 'RG'
      Size = 15
    end
    object QueryMemCPF: TStringField
      FieldName = 'CPF'
      Size = 15
    end
    object QueryMemTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object QueryMemEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object QueryMemLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 100
    end
    object QueryMemNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 15
    end
    object QueryMemCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object QueryMemCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object QueryMemBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object QueryMemCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 100
    end
    object QueryMemUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object QueryMemPAIS: TStringField
      FieldName = 'PAIS'
      Size = 50
    end
  end
  object ACBrCEP1: TACBrCEP
    ProxyPort = '8080'
    ParseText = True
    WebService = wsViaCep
    PesquisarIBGE = True
    OnBuscaEfetuada = ACBrCEP1BuscaEfetuada
    Left = 224
    Top = 205
  end
  object ACBrIBGE1: TACBrIBGE
    ProxyPort = '8080'
    CacheArquivo = 'ACBrIBGE.txt'
    Left = 277
    Top = 205
  end
  object ACBrMail1: TACBrMail
    Host = '127.0.0.1'
    Port = '25'
    SetSSL = False
    SetTLS = False
    Attempts = 3
    DefaultCharset = UTF_8
    IDECharset = CP1252
    OnMailException = ACBrMail1MailException
    Left = 330
    Top = 205
  end
end
