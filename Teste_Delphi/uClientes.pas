unit uClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ModeloCad, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.Menus, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, MemDS, DBAccess, Uni,
  Vcl.DBCtrls, SQLComboUni, RComboBox, RxCurrEdit, REdit, RMaskEdit, RxToolEdit,
  SQLCombo, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfClientes = class(TfrmModeloCad)
    Label8: TLabel;
    ComboBoxPesqPor: TComboBox;
    EditPesq: TMaskEdit;
    DataSource: TDataSource;
    Query: TUniQuery;
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
    EditSMTP: TEdit;
    edtSmtpPort: TEdit;
    edtSmtpUser: TEdit;
    edtSmtpPass: TEdit;
    edtEmailAssunto: TEdit;
    cbEmailSSL: TCheckBox;
    mmEmailMsg: TMemo;
    EditCodigo: TEdit;
    cbEmailTLS: TCheckBox;
    cbEmailHTML: TCheckBox;
    Label1: TLabel;
    Label10: TLabel;
    LabelDoc2: TLabel;
    Label37: TLabel;
    Label42: TLabel;
    EditRG: TEdit;
    MaskEditCPF: TMaskEdit;
    Edit1: TEdit;
    EditNome: TEdit;
    GroupBox1: TGroupBox;
    Label14: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label86: TLabel;
    MaskEditCEP: TRMaskEdit;
    EditEndereco: TREdit;
    EditNumero: TREdit;
    EditComplemento: TREdit;
    EditBairro: TREdit;
    BitBtn2: TBitBtn;
    EditCidade: TREdit;
    EditUF: TREdit;
    EditCodIBGE: TEdit;
    ToolBar11: TToolBar;
    ToolButton10: TToolButton;
    BitBtn1: TBitBtn;
    EditPais: TREdit;
    MaskEditTelCel: TRMaskEdit;
    EditEmail: TRMaskEdit;
    BtnEmail: TBitBtn;
    CkPesq: TCheckBox;
    Label2: TLabel;
    Label3: TLabel;
    QueryCODIGO: TIntegerField;
    QueryNOME: TStringField;
    QueryRG: TStringField;
    QueryCPF: TStringField;
    QueryTELEFONE: TStringField;
    QueryEMAIL: TStringField;
    QueryLOGRADOURO: TStringField;
    QueryNUMERO: TStringField;
    QueryCEP: TStringField;
    QueryCOMPLEMENTO: TStringField;
    QueryBAIRRO: TStringField;
    QueryCIDADE: TStringField;
    QueryUF: TStringField;
    QueryPAIS: TStringField;
    QueryMem: TFDMemTable;
    QueryMemCODIGO: TIntegerField;
    QueryMemNOME: TStringField;
    QueryMemRG: TStringField;
    QueryMemCPF: TStringField;
    QueryMemTELEFONE: TStringField;
    QueryMemEMAIL: TStringField;
    QueryMemLOGRADOURO: TStringField;
    QueryMemNUMERO: TStringField;
    QueryMemCEP: TStringField;
    QueryMemCOMPLEMENTO: TStringField;
    QueryMemBAIRRO: TStringField;
    QueryMemCIDADE: TStringField;
    QueryMemUF: TStringField;
    QueryMemPAIS: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);

    // OVERRIDE
    function VerifyReqFields: Boolean; override;
    function CreateSelect: String; override;
    function CreateInsert: String; override;
    function CreateUpdate: String; override;
    function CreateDelete: String; override;
    procedure SetCodField; override;
    procedure CompleteCampos; override;
    procedure SetDefValues; override;
    procedure ClearPesqFields; override;
    procedure Limpar; override;
    procedure ComboBoxPesqPorChange(Sender: TObject);
    procedure EditPesqKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridDadosTercDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BtnVoltarClick(Sender: TObject);
    // Fim Override


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fClientes: TfClientes;

implementation

uses uDm;

{$R *.dfm}

procedure TfClientes.BtnNovoClick(Sender: TObject);
begin
  inherited;
   if EditNome.CanFocus then
      EditNome.SetFocus;
end;

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

procedure TfClientes.ToolButton1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfClientes.SetCodField;
begin
  EditCodigo.Text:= FKeyValue[1];
end;

function TfClientes.VerifyReqFields: Boolean;
begin
  Result := True;
end;

procedure TfClientes.BtnVoltarClick(Sender: TObject);
begin
  inherited;
  try
     PageControl.ActivePageIndex := 0;
  except

  end;
end;

procedure TfClientes.ClearPesqFields;
begin
  inherited;
  EditPesq.Text := '';
end;

procedure TfClientes.ComboBoxPesqPorChange(Sender: TObject);
begin
  inherited;
  EditPesq.Text := '';

  if ComboBoxPesqPor.ItemIndex = 1 then
    EditPesq.OnKeyPress:= EditPesqKeyPress
  else
    EditPesq.OnKeyPress:= nil;
end;

procedure TfClientes.EditPesqKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if ((Key < '0') or (Key > '9')) and (Key <> #8) then
     Key:= #0;
end;

procedure TfClientes.SetDefValues;
begin
  inherited;

  ComboBoxPesqPorChange(ComboBoxPesqPor);

end;

procedure TfClientes.Limpar;
begin
  inherited;

//  EditCodigo.Clear;
  EditNome.Clear;
  EditRG.Clear;
  MaskEditCPF.Clear;
  MaskEditTelCel.Clear;
  EditEmail.Clear;


end;

procedure TfClientes.CompleteCampos;
begin
  inherited;

  FKeyValue[1] := Query.FieldByName('CODIGO').AsString;
//  FKeyValue[2] := Query.FieldByName('EMPRESA').AsString;
  EditCodigo.Text := Query.FieldByName('CODIGO').AsString;
  EditNome.Text := Query.FieldByName('NOME').AsString;

end;

function TfClientes.CreateDelete: String;
begin
  Result:= ' DELETE FROM CLIENTES WHERE CODIGO = ' + IntToStr(FKeyValue[1]);
end;

function TfClientes.CreateInsert: String;
var Preview, Imp_1_Linha: Integer;
begin

  Result :=  ' INSERT INTO CLIENTES (CODIGO, NOME) ' +
            ' VALUES ( ' +
            ' (SELECT COALESCE(MAX(CODIGO),0) + 1 FROM CLIENTES), ' +
            DM.DBFormat(EditNome.Text,dbTexto) + ')';

end;

function TfClientes.CreateSelect: String;
var S: String;
begin
  S := ' ';
  S := ' select c.* from clientes c ' +
  ' where 1 = 1 ';

  if EditPesq.Text <> '' then
  begin
    case ComboBoxPesqPor.ItemIndex of
      1: S := S + ' and c.codigo = ' + EditPesq.Text + ' ';
    end;
  end;
  Result:= S + ' order by c.codigo ';
end;

function TfClientes.CreateUpdate: String;
var Preview, Imp_1_Linha: Integer;
begin

  Result:= ' UPDATE CLIENTES SET ' +
           ' NOME = ' + DM.DBFormat(EditNome.Text,dbTexto) + ',' +
           ' ITEM_1_LINHA = ' + DM.DBFormat(IntToStr(Imp_1_Linha),dbInt) +
           ' WHERE CODIGO = ' + IntToStr(FKeyValue[1]);

end;


procedure TfClientes.DBGridDadosTercDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if (gdSelected in State) then
    DBGridDadosTerc.Canvas.Brush.Color := clskyblue;
  DBGridDadosTerc.Canvas.Font.Style := [];
  DBGridDadosTerc.Canvas.Font.Color := clwindowtext;
  DBGridDadosTerc.Canvas.FillRect(Rect);
  DBGridDadosTerc.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

end.
