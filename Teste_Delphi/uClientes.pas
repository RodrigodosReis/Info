unit uClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ModeloCad, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.Menus, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, MemDS, DBAccess, Uni,
  Vcl.DBCtrls, SQLCombo;

type
  TfClientes = class(TfrmModeloCad)
    Label8: TLabel;
    ComboBoxPesqPor: TComboBox;
    EditPesq: TMaskEdit;
    DataSource: TDataSource;
    Query: TUniQuery;
    QueryCODIGO: TIntegerField;
    QueryEMPRESA: TIntegerField;
    QueryMODELO: TIntegerField;
    QuerySUBSERIE: TIntegerField;
    QueryDATA_EMISSAO: TDateField;
    QueryHORA_EMISSAO: TTimeField;
    QueryCOD_NAT_OP: TIntegerField;
    QueryMODAL_CTE: TIntegerField;
    QueryTIPO_SERVICO: TIntegerField;
    QueryFINALIDADE: TIntegerField;
    QueryFORMA_EMISSAO: TIntegerField;
    QueryFORMA_PAGTO: TIntegerField;
    QueryID_CID_EMISSAO: TIntegerField;
    QueryID_CID_INI_PREST: TIntegerField;
    QueryID_CID_FIM_PREST: TIntegerField;
    QuerySITUACAO: TIntegerField;
    QueryRECEB_CTE: TIntegerField;
    QueryIDENT_TOMADOR: TIntegerField;
    QueryCOD_TOMADOR: TIntegerField;
    QueryIDENT_REMETENTE: TIntegerField;
    QueryCOD_REMETENTE: TIntegerField;
    QueryIDENT_EXPEDIDOR: TIntegerField;
    QueryCOD_EXPEDIDOR: TIntegerField;
    QueryIDENT_RECEBEDOR: TIntegerField;
    QueryCOD_RECEBEDOR: TIntegerField;
    QueryIDENT_DESTINATARIO: TIntegerField;
    QueryCOD_DESTINATARIO: TIntegerField;
    QueryRETIRADA: TIntegerField;
    QueryCID_EMISSAO: TStringField;
    QueryCID_INI_PREST: TStringField;
    QueryCID_FIM_PREST: TStringField;
    QueryDESC_TOMADOR: TStringField;
    QueryDESC_REMETENTE: TStringField;
    QueryDESC_EXPEDIDOR: TStringField;
    QueryDESC_RECEBEDOR: TStringField;
    QueryDESC_DESTINATARIO: TStringField;
    QueryVALOR_CARGA: TFloatField;
    QueryPROD_PREDOMINANTE: TStringField;
    QueryDESC_MODAL: TStringField;
    QueryDESC_PAGTO: TStringField;
    QueryDESC_TIPO_SERVICO: TStringField;
    QueryRNTRC: TStringField;
    QueryDATA_ENTREGA: TDateField;
    QueryIND_LOT: TIntegerField;
    QueryCIOT: TStringField;
    QueryTAF: TStringField;
    QueryN_REG_EST: TStringField;
    QueryOBS: TStringField;
    QuerySTATUS_CTE: TIntegerField;
    QueryCONTINGENCIA: TIntegerField;
    QueryCTE_CHAVE: TStringField;
    QueryCTE_ALEATORIO: TStringField;
    QueryCTE_RECIBO: TStringField;
    QueryCTE_PROTOCOLO: TStringField;
    QueryDESC_STATUS: TStringField;
    QueryFIM_CONTINGENCIA: TIntegerField;
    QueryDESC_STATUS_CLI: TStringField;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GrEmail: TGroupBox;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label9: TLabel;
    EditNome: TEdit;
    edtSmtpPort: TEdit;
    edtSmtpUser: TEdit;
    edtSmtpPass: TEdit;
    edtEmailAssunto: TEdit;
    cbEmailSSL: TCheckBox;
    mmEmailMsg: TMemo;
    EditCodigo: TEdit;
    cbEmailTLS: TCheckBox;
    cbEmailHTML: TCheckBox;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fClientes: TfClientes;

implementation

{$R *.dfm}

procedure TfClientes.FormCreate(Sender: TObject);
begin
  inherited;
  FCodModulo := 1;
  FKey[1]:= 'CODIGO';
  FKey[2]:= 'EMPRESA';
  FAutoNumSQL:= 'SELECT MAX(CODIGO) AS MAX_NUM FROM CLIENTES ';
  FQuery := Query;
  TUniQuery(FQuery).SQL.Text := CreateSelect;
  FNovoFocusControl:= EditNome;
end;

end.
