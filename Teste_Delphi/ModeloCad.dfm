object frmModeloCad: TfrmModeloCad
  Left = 244
  Top = 156
  BorderStyle = bsDialog
  Caption = 'Modelo de Cadastro'
  ClientHeight = 416
  ClientWidth = 585
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl: TPageControl
    Left = 0
    Top = 0
    Width = 585
    Height = 416
    ActivePage = TabPesquisa
    Align = alClient
    TabOrder = 0
    OnChanging = PageControlChanging
    object TabPesquisa: TTabSheet
      Caption = '&Pesquisa'
      object DBGridDadosTerc: TDBGrid
        Left = 0
        Top = 40
        Width = 585
        Height = 361
        Hint = 'D'#234' um duplo clique para selecionar o registro'
        Color = clWhite
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGridDadosTercDblClick
      end
      object BtnPesquisar: TBitBtn
        Left = 489
        Top = 3
        Width = 85
        Height = 31
        Caption = '&Pesquisar'
        Default = True
        Glyph.Data = {
          A2070000424DA207000000000000360000002800000019000000190000000100
          1800000000006C070000C30E0000C30E00000000000000000000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0A2A8B04B627F2E466060666DC8C5C2C0C0C0C0C0C0C0C0C000C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0A2A9AE3164A11267D2085CC50A346A777A80
          C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0235FA01979F1
          368EFF4E9CFF1D6ACB4D5D6EC0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          B5B1AF2C63A10B79F03491FF81BAFC9FD2FF327BCF808A93C0C0C0C0C0C0C0C0
          C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0B4BBB637629B1877F12F90FE82BCF7CAEBFF81B4E95578
          9FC0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C03B6CA21574EE2E8AFE7EB8
          F3C4EBFF93BDF15B79A7B4BCC9C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B6B9
          C5196DE22E8AFF6FB2FACCF0FF98C2F64F78ADBABBB8C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B9BABEA29F
          A19B9EA3B8B4BBC0C0C0A7A9B33D71CC64ADFFC3E7FFA1CFF8517AAFB4B4B9C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0B2B2BA9E979BA59A97AD9A91A4988C958082827067867E76A1A1B49DBCE39E
          CCEA5E85B8AEB5BAC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0
          C0C0C0C0C0C0C0C0C0C0B6B5BAC8BAB7E2BEA5E6B387EEC382EFCE92EFC9ACDD
          BDAAB6A4A0E0CEC2BCB7BE98B1CDC3CDD0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0CCC9CAE4C5BFBC7F60AB601EC6
          771CDA9B2BF2C058FAC97CEFC78BE7C7AFA99B99A19992C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0E2
          D8D2BB70598C2600AE4D00B86C00C8820ADCA028EAB442EBBD52EEBD82DAC3B9
          79767EC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C000C0C0C0C0C0C0DBDAE2D6B39EA72C009C3703AB4101AD5D01BE7400C98805
          D2960DD1931EDD9837F7C6A8857D87AEADACC0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0EBECECC68765A03100A83700
          A33800AB4905B16004B86D00BE7900BD7800BA6E02DE9E6CBCA9A7969492C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
          F0F1F0C67255B84F19B03F079D3A00A63B01A34802AC5302B45C01B65B01AD4D
          00C98046D4BEB49D9C99C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C000C0C0C0C0C0C0E8E8E7C57E65D06F4AB95D2FA74C14A33D039C39
          00A13D01A64204A53E059F3300BE7E53CDBFBDA8A6A4C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0EBEAE5D5AA8AE081
          6AD18B6BC36B3FB85522AD44099F37009E37029D3702982F00D39F87ACA6B0C9
          C8C7C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0
          C0C0C0C0C0C0C0F5E5D9CD917DF4B295DC9878C17658BE6035AA5017AA4002A0
          3100B15525E1CEC9A9A3A6C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0F9F3F0F0D3C6CE9B81F1B79CEE
          A890DE8B6EC97140C3511CAF4A23E9C1AAC3BDBCC0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
          C0C0F7EEE9F2DACDD5AB9ADEA495D89A82D1876BD89377EFCCBCC5D0CDC0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0F9F2EEFFECE6F9DDD3EDD8C5ECDFD2
          E2D9D5D9D3D3C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C000}
        TabOrder = 1
        OnClick = BtnPesquisarClick
      end
    end
    object TabCadastro: TTabSheet
      Caption = '&Cadastro'
      ImageIndex = 1
      OnShow = TabCadastroShow
      object PanelCadBottom: TPanel
        Left = 0
        Top = 313
        Width = 577
        Height = 75
        Align = alBottom
        TabOrder = 0
        object ToolBar: TToolBar
          Left = 102
          Top = 1
          Width = 451
          Height = 54
          Align = alCustom
          ButtonHeight = 21
          ButtonWidth = 49
          Caption = 'ToolBar'
          ShowCaptions = True
          TabOrder = 0
          object BtnNovo: TToolButton
            Left = 0
            Top = 0
            Cursor = crHandPoint
            Caption = '&Novo'
            ImageIndex = 1
            ParentShowHint = False
            ShowHint = True
            OnClick = BtnNovoClick
          end
          object BtnSalvar: TToolButton
            Left = 49
            Top = 0
            Cursor = crHandPoint
            Caption = '&Salvar'
            ImageIndex = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = BtnSalvarClick
          end
          object BtnAlterar: TToolButton
            Left = 98
            Top = 0
            Cursor = crHandPoint
            Caption = '&Alterar'
            ImageIndex = 7
            ParentShowHint = False
            ShowHint = True
            OnClick = BtnAlterarClick
          end
          object BtnExcluir: TToolButton
            Left = 147
            Top = 0
            Cursor = crHandPoint
            Caption = '&Excluir'
            ImageIndex = 3
            ParentShowHint = False
            ShowHint = True
            OnClick = BtnExcluirClick
          end
          object BtnCancelar: TToolButton
            Left = 196
            Top = 0
            Cursor = crHandPoint
            Caption = 'Cance&lar'
            ImageIndex = 9
            ParentShowHint = False
            ShowHint = True
            OnClick = BtnCancelarClick
          end
          object BtnVoltar: TToolButton
            Left = 245
            Top = 0
            Caption = '&Voltar'
            ImageIndex = 6
          end
          object ToolButton1: TToolButton
            Left = 294
            Top = 0
            Cursor = crHandPoint
            Caption = '&Fechar'
            ImageIndex = 5
            ParentShowHint = False
            ShowHint = True
            OnClick = ToolButton1Click
          end
        end
        object StatusBar: TStatusBar
          Left = 1
          Top = 55
          Width = 575
          Height = 19
          Font.Charset = ANSI_CHARSET
          Font.Color = clBtnText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          Panels = <>
          SimplePanel = True
          UseSystemFont = False
        end
      end
    end
  end
  object Pop: TPopupMenu
    Left = 292
    object Novo2: TMenuItem
      Caption = 'Novo'
      ShortCut = 113
      OnClick = Novo2Click
    end
    object Salvar2: TMenuItem
      Caption = 'Salvar'
      ShortCut = 114
      OnClick = Salvar2Click
    end
    object Alterar2: TMenuItem
      Caption = 'Alterar'
      ShortCut = 115
      OnClick = Alterar2Click
    end
    object Excluir2: TMenuItem
      Caption = 'Excluir'
      ShortCut = 116
      OnClick = Excluir2Click
    end
    object Cancelar2: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 117
      OnClick = Cancelar2Click
    end
    object Fechar2: TMenuItem
      Caption = 'Fechar'
      ShortCut = 118
      OnClick = Fechar2Click
    end
  end
  object ImageList1: TImageList
    Left = 212
    Top = 80
  end
end
