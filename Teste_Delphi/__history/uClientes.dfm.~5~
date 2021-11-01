inherited fClientes: TfClientes
  Caption = 'Cadastro de Clientes'
  ClientHeight = 589
  ClientWidth = 847
  Position = poDesktopCenter
  ExplicitWidth = 853
  ExplicitHeight = 618
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl: TPageControl
    Width = 847
    Height = 589
    ActivePage = TabCadastro
    inherited TabPesquisa: TTabSheet
      ExplicitWidth = 839
      ExplicitHeight = 561
      object Label8: TLabel [0]
        Left = 1
        Top = -1
        Width = 82
        Height = 13
        Caption = 'Pesquisar por:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inherited DBGridDadosTerc: TDBGrid
        Width = 836
        Height = 518
      end
      object ComboBoxPesqPor: TComboBox
        Left = 1
        Top = 14
        Width = 82
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 2
        Text = 'Nome'
        Items.Strings = (
          'Nome'
          'C'#243'digo')
      end
      object EditPesq: TMaskEdit
        Left = 85
        Top = 14
        Width = 396
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 3
        Text = ''
      end
    end
    inherited TabCadastro: TTabSheet
      ExplicitWidth = 839
      ExplicitHeight = 561
      inherited PanelCadBottom: TPanel
        Top = 486
        Width = 839
        ExplicitTop = 486
        ExplicitWidth = 839
        inherited StatusBar: TStatusBar
          Width = 837
          ExplicitWidth = 837
        end
      end
      object GrEmail: TGroupBox
        Left = 0
        Top = 3
        Width = 585
        Height = 372
        Caption = 
          ' Cadastre o email desejado para realizar envios de emails pelo P' +
          'ro- Commerce '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object Label68: TLabel
          Tag = 5
          Left = 11
          Top = 62
          Width = 82
          Height = 13
          Caption = 'Servidor SMTP'
        end
        object Label69: TLabel
          Tag = 5
          Left = 539
          Top = 61
          Width = 31
          Height = 13
          Caption = 'Porta'
        end
        object Label70: TLabel
          Tag = 5
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
          Tag = 5
          Left = 360
          Top = 104
          Width = 35
          Height = 13
          Caption = 'Senha'
        end
        object Label72: TLabel
          Tag = 5
          Left = 11
          Top = 144
          Width = 145
          Height = 13
          Caption = 'Assunto do email enviado'
        end
        object Label73: TLabel
          Tag = 5
          Left = 9
          Top = 186
          Width = 112
          Height = 13
          Caption = 'Mensagem do Email'
        end
        object Label9: TLabel
          Left = 12
          Top = 21
          Width = 40
          Height = 13
          Caption = 'C'#243'digo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel
          Tag = 5
          Left = 59
          Top = 21
          Width = 129
          Height = 13
          Caption = 'Usu'#225'rio Pro-Commerce'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object EditNome: TEdit
          Tag = 5
          Left = 11
          Top = 78
          Width = 522
          Height = 21
          MaxLength = 100
          TabOrder = 0
        end
        object edtSmtpPort: TEdit
          Tag = 5
          Left = 539
          Top = 77
          Width = 40
          Height = 21
          TabOrder = 1
        end
        object edtSmtpUser: TEdit
          Tag = 5
          Left = 11
          Top = 120
          Width = 345
          Height = 21
          MaxLength = 100
          TabOrder = 2
        end
        object edtSmtpPass: TEdit
          Tag = 5
          Left = 360
          Top = 120
          Width = 220
          Height = 21
          PasswordChar = '*'
          TabOrder = 3
        end
        object edtEmailAssunto: TEdit
          Tag = 5
          Left = 11
          Top = 160
          Width = 570
          Height = 21
          TabOrder = 4
        end
        object cbEmailSSL: TCheckBox
          Tag = 5
          Left = 240
          Top = 39
          Width = 82
          Height = 17
          Caption = 'Usar SSL ?'
          TabOrder = 5
        end
        object mmEmailMsg: TMemo
          Tag = 5
          Left = 9
          Top = 202
          Width = 571
          Height = 164
          TabOrder = 6
        end
        object EditCodigo: TEdit
          Tag = 5
          Left = 12
          Top = 37
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
          TabOrder = 7
        end
        object CbUsuario: TSQLCombo
          Tag = 5
          Left = 59
          Top = 37
          Width = 129
          Height = 21
          Hint = 
            'Caro Usu'#225'rio!'#13#10'Ao preencher o campo USUARIO no cadastro, haver'#225' ' +
            'a vincula'#231#227'o '#13#10'do email informado no cadastro ao Usu'#225'rio informa' +
            'do!'#13#10'Deste modo, todos os emails gerados por esse usu'#225'rio inform' +
            'ado, ser'#227'o'#13#10'enviados pelo email apontado no cadastro!'#13#10'Se este n' +
            #227'o '#233' o comportamento desejado, n'#227'o preencha esse campo!!!'
          KeyField = 'F_1'
          ListField = 'F_1'
          ListSource.DataSet.BufferChunks = 1000
          ListSource.DataSet.CachedUpdates = False
          ListSource.DataSet.ParamCheck = True
          ListSource.DataSet.SQL.Strings = (
            'select cast('#39#39' as varchar(10))'
            'from  usuarios u'
            'inner join usuarios_empresas ue on u.usuario = ue.usuario'
            'union'
            'select u.usuario'
            'from  usuarios u'
            'inner join usuarios_empresas ue on u.usuario = ue.usuario'
            'order by 1')
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
          Query.BufferChunks = 1000
          Query.CachedUpdates = False
          Query.ParamCheck = True
          Query.SQL.Strings = (
            'select cast('#39#39' as varchar(10))'
            'from  usuarios u'
            'inner join usuarios_empresas ue on u.usuario = ue.usuario'
            'union'
            'select u.usuario'
            'from  usuarios u'
            'inner join usuarios_empresas ue on u.usuario = ue.usuario'
            'order by 1')
        end
        object ToolBar3: TToolBar
          Tag = 5
          Left = 192
          Top = 31
          Width = 31
          Height = 28
          Align = alCustom
          ButtonHeight = 26
          ButtonWidth = 27
          Caption = '+'
          EdgeInner = esNone
          EdgeOuter = esNone
          TabOrder = 9
          object ToolButton2: TToolButton
            Tag = 5
            Left = 0
            Top = 0
            Caption = 'ToolButton5'
            ImageIndex = 0
          end
        end
        object cbEmailTLS: TCheckBox
          Tag = 5
          Left = 330
          Top = 39
          Width = 82
          Height = 17
          Caption = 'Usar TLS ?'
          TabOrder = 10
        end
        object cbEmailHTML: TCheckBox
          Tag = 5
          Left = 421
          Top = 39
          Width = 96
          Height = 17
          Caption = 'Usar HTML ?'
          TabOrder = 11
        end
      end
    end
  end
  inherited Pop: TPopupMenu
    Left = 436
    Top = 280
  end
  inherited ImageList1: TImageList
    Left = 383
    Top = 280
  end
  object DataSource: TDataSource
    DataSet = Query
    Left = 330
    Top = 280
  end
  object Query: TUniQuery
    SQL.Strings = (
      'select cte.*'
      
        ', case when cte.modal_cte = 0 then cast('#39'RODOVI'#193'RIO'#39' as varchar(' +
        '30))'
      'when cte.modal_cte = 1 then cast('#39'AQUAVI'#193'RIO'#39' as varchar(30))'
      'when cte.modal_cte = 2 then cast('#39'A'#201'REO'#39' as varchar(30))'
      'when cte.modal_cte = 3 then cast('#39'DUTOVI'#193'RIO'#39' as varchar(30))'
      'when cte.modal_cte = 4 then cast('#39'FERROVI'#193'RIO'#39' as varchar(30))'
      'when cte.modal_cte = 5 then cast('#39'MULTIMODAL'#39' as varchar(30))'
      'end as desc_modal'
      ', case when cte.forma_pagto = 0 then cast('#39'PAGO'#39' as varchar(10))'
      'when cte.forma_pagto = 1 then cast('#39'A PAGAR'#39' as varchar(10))'
      'when cte.forma_pagto = 2 then cast('#39'OUTROS'#39' as varchar(10))'
      'end as desc_pagto'
      
        ', case when cte.tipo_servico = 0 then cast('#39'NORMAL'#39' as varchar(5' +
        '0))'
      
        'when cte.tipo_servico = 1 then cast('#39'SUBCONTRATA'#199#195'O'#39' as varchar(' +
        '50))'
      'when cte.tipo_servico = 2 then cast('#39'REDESPACHO'#39' as varchar(50))'
      
        'when cte.tipo_servico = 3 then cast('#39'REDESPACHO INTERMEDI'#193'RIO'#39' a' +
        's varchar(50))'
      
        'when cte.tipo_servico = 4 then cast('#39'SERVI'#199'O VINCULADO A MULTIMO' +
        'DAL'#39' as varchar(50))'
      'end as desc_tipo_servico'
      ',tc1.cidade as cid_emissao , tc2.cidade as cid_ini_prest'
      ',tc3.cidade as cid_fim_prest, cf1.nome as desc_tomador'
      ',cf2.nome as desc_remetente, cf3.nome as desc_expedidor'
      ',cf4.nome as desc_recebedor, cf5.nome as desc_destinatario'
      
        ', case when cte.status_cte = 0 then cast('#39'N'#195'O GERADO'#39' as varchar' +
        '(50))'
      'when cte.status_cte = 1 then cast('#39'GERADO'#39' as varchar(50))'
      'when cte.status_cte = 2 then cast('#39'VALIDADO'#39' as varchar(50))'
      
        'when cte.status_cte = 3 then cast('#39'ENVIADO SUCESSO'#39' as varchar(5' +
        '0))'
      
        'when cte.status_cte = 4 then cast('#39'RECEBIDO SUCESSO'#39' as varchar(' +
        '50))'
      'when cte.status_cte = 5 then cast('#39'CANCELADO'#39' as varchar(50))'
      
        'when cte.status_cte = 6 then cast('#39'INUTILIZADO NUMERA'#199#195'O'#39' as var' +
        'char(50))'
      
        'when cte.status_cte = 7 then cast('#39'DENEGADO'#39' as varchar(50)) end' +
        ' as desc_status'
      
        ', case when (cte.status_cte = 0) or (cte.status_cte = 1) or (cte' +
        '.status_cte = 2)'
      'or (cte.status_cte = 3) then cast('#39'A TRANSMITIR'#39' as varchar(20))'
      
        'when (cte.status_cte = 4) then cast('#39'TRANSMITIDO'#39' as varchar(20)' +
        ')'
      'when cte.status_cte = 5 then cast('#39'CANCELADO'#39' as varchar(20))'
      'when cte.status_cte = 6 then cast('#39'INUTILIZADO'#39' as varchar(20))'
      
        'when cte.status_cte = 7 then cast('#39'DENEGADO'#39' as varchar(20)) end' +
        ' as desc_status_cli'
      'from cte'
      
        'left outer join teocomp_cidade tc1 on tc1.id_cidade = cte.id_cid' +
        '_emissao'
      
        'left outer join teocomp_cidade tc2 on tc2.id_cidade = cte.id_cid' +
        '_ini_prest'
      
        'left outer join teocomp_cidade tc3 on tc3.id_cidade = cte.id_cid' +
        '_fim_prest'
      'left outer join cli_forn cf1 on cf1.codigo = cte.cod_tomador'
      'left outer join cli_forn cf2 on cf2.codigo = cte.cod_remetente'
      'left outer join cli_forn cf3 on cf3.codigo = cte.cod_expedidor'
      'left outer join cli_forn cf4 on cf4.codigo = cte.cod_recebedor'
      
        'left outer join cli_forn cf5 on cf5.codigo = cte.cod_destinatari' +
        'o'
      'where 1 = 1')
    Left = 489
    Top = 280
    object QueryCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object QueryEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
    end
    object QueryMODELO: TIntegerField
      FieldName = 'MODELO'
    end
    object QuerySUBSERIE: TIntegerField
      FieldName = 'SUBSERIE'
    end
    object QueryDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object QueryHORA_EMISSAO: TTimeField
      FieldName = 'HORA_EMISSAO'
    end
    object QueryCOD_NAT_OP: TIntegerField
      FieldName = 'COD_NAT_OP'
    end
    object QueryMODAL_CTE: TIntegerField
      FieldName = 'MODAL_CTE'
    end
    object QueryTIPO_SERVICO: TIntegerField
      FieldName = 'TIPO_SERVICO'
    end
    object QueryFINALIDADE: TIntegerField
      FieldName = 'FINALIDADE'
    end
    object QueryFORMA_EMISSAO: TIntegerField
      FieldName = 'FORMA_EMISSAO'
    end
    object QueryFORMA_PAGTO: TIntegerField
      FieldName = 'FORMA_PAGTO'
    end
    object QueryID_CID_EMISSAO: TIntegerField
      FieldName = 'ID_CID_EMISSAO'
    end
    object QueryID_CID_INI_PREST: TIntegerField
      FieldName = 'ID_CID_INI_PREST'
    end
    object QueryID_CID_FIM_PREST: TIntegerField
      FieldName = 'ID_CID_FIM_PREST'
    end
    object QuerySITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object QueryRECEB_CTE: TIntegerField
      FieldName = 'RECEB_CTE'
    end
    object QueryIDENT_TOMADOR: TIntegerField
      FieldName = 'IDENT_TOMADOR'
    end
    object QueryCOD_TOMADOR: TIntegerField
      FieldName = 'COD_TOMADOR'
    end
    object QueryIDENT_REMETENTE: TIntegerField
      FieldName = 'IDENT_REMETENTE'
    end
    object QueryCOD_REMETENTE: TIntegerField
      FieldName = 'COD_REMETENTE'
    end
    object QueryIDENT_EXPEDIDOR: TIntegerField
      FieldName = 'IDENT_EXPEDIDOR'
    end
    object QueryCOD_EXPEDIDOR: TIntegerField
      FieldName = 'COD_EXPEDIDOR'
    end
    object QueryIDENT_RECEBEDOR: TIntegerField
      FieldName = 'IDENT_RECEBEDOR'
    end
    object QueryCOD_RECEBEDOR: TIntegerField
      FieldName = 'COD_RECEBEDOR'
    end
    object QueryIDENT_DESTINATARIO: TIntegerField
      FieldName = 'IDENT_DESTINATARIO'
    end
    object QueryCOD_DESTINATARIO: TIntegerField
      FieldName = 'COD_DESTINATARIO'
    end
    object QueryRETIRADA: TIntegerField
      FieldName = 'RETIRADA'
    end
    object QueryCID_EMISSAO: TStringField
      FieldName = 'CID_EMISSAO'
      Size = 100
    end
    object QueryCID_INI_PREST: TStringField
      FieldName = 'CID_INI_PREST'
      Size = 100
    end
    object QueryCID_FIM_PREST: TStringField
      FieldName = 'CID_FIM_PREST'
      Size = 100
    end
    object QueryDESC_TOMADOR: TStringField
      FieldName = 'DESC_TOMADOR'
      Size = 100
    end
    object QueryDESC_REMETENTE: TStringField
      FieldName = 'DESC_REMETENTE'
      Size = 100
    end
    object QueryDESC_EXPEDIDOR: TStringField
      FieldName = 'DESC_EXPEDIDOR'
      Size = 100
    end
    object QueryDESC_RECEBEDOR: TStringField
      FieldName = 'DESC_RECEBEDOR'
      Size = 100
    end
    object QueryDESC_DESTINATARIO: TStringField
      FieldName = 'DESC_DESTINATARIO'
      Size = 100
    end
    object QueryVALOR_CARGA: TFloatField
      FieldName = 'VALOR_CARGA'
    end
    object QueryPROD_PREDOMINANTE: TStringField
      FieldName = 'PROD_PREDOMINANTE'
      Size = 60
    end
    object QueryDESC_MODAL: TStringField
      FieldName = 'DESC_MODAL'
      ReadOnly = True
      Size = 30
    end
    object QueryDESC_PAGTO: TStringField
      FieldName = 'DESC_PAGTO'
      ReadOnly = True
      Size = 10
    end
    object QueryDESC_TIPO_SERVICO: TStringField
      FieldName = 'DESC_TIPO_SERVICO'
      ReadOnly = True
      Size = 50
    end
    object QueryRNTRC: TStringField
      FieldName = 'RNTRC'
      Size = 8
    end
    object QueryDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
    end
    object QueryIND_LOT: TIntegerField
      FieldName = 'IND_LOT'
    end
    object QueryCIOT: TStringField
      FieldName = 'CIOT'
      Size = 12
    end
    object QueryTAF: TStringField
      FieldName = 'TAF'
      Size = 12
    end
    object QueryN_REG_EST: TStringField
      FieldName = 'N_REG_EST'
      Size = 25
    end
    object QueryOBS: TStringField
      FieldName = 'OBS'
      Size = 500
    end
    object QuerySTATUS_CTE: TIntegerField
      FieldName = 'STATUS_CTE'
    end
    object QueryCONTINGENCIA: TIntegerField
      FieldName = 'CONTINGENCIA'
    end
    object QueryCTE_CHAVE: TStringField
      FieldName = 'CTE_CHAVE'
      Size = 50
    end
    object QueryCTE_ALEATORIO: TStringField
      FieldName = 'CTE_ALEATORIO'
    end
    object QueryCTE_RECIBO: TStringField
      FieldName = 'CTE_RECIBO'
      Size = 30
    end
    object QueryCTE_PROTOCOLO: TStringField
      FieldName = 'CTE_PROTOCOLO'
      Size = 30
    end
    object QueryDESC_STATUS: TStringField
      FieldName = 'DESC_STATUS'
      ReadOnly = True
      Size = 50
    end
    object QueryFIM_CONTINGENCIA: TIntegerField
      FieldName = 'FIM_CONTINGENCIA'
    end
    object QueryDESC_STATUS_CLI: TStringField
      FieldName = 'DESC_STATUS_CLI'
      ReadOnly = True
    end
  end
end
