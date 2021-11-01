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
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, ACBrBase, ACBrSocket, ACBrCEP, System.IniFiles,
  ACBrIBGE, System.TypInfo, ACBrMail;

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
    EditSMTP: TEdit;
    edtSmtpPort: TEdit;
    edtSmtpUser: TEdit;
    edtSmtpPass: TEdit;
    edtEmailAssunto: TEdit;
    cbEmailSSL: TCheckBox;
    mmEmailMsg: TMemo;
    cbEmailTLS: TCheckBox;
    Label1: TLabel;
    Label10: TLabel;
    LabelDoc2: TLabel;
    Label37: TLabel;
    Label42: TLabel;
    EditRG: TEdit;
    MaskEditCPF: TMaskEdit;
    EditCodigo: TEdit;
    EditNome: TEdit;
    GroupBox1: TGroupBox;
    Label14: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label86: TLabel;
    MaskEditCEP: TRMaskEdit;
    EditEndereco: TREdit;
    EditNumero: TREdit;
    EditComplemento: TREdit;
    EditBairro: TREdit;
    BtnPesqCep: TBitBtn;
    EditCidade: TREdit;
    EditUF: TREdit;
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
    ACBrCEP1: TACBrCEP;
    ACBrIBGE1: TACBrIBGE;
    ACBrMail1: TACBrMail;
    lblDefaultCharset: TLabel;
    lbl1: TLabel;
    Button1: TButton;
    cbbDefaultCharset: TComboBox;
    cbbIdeCharSet: TComboBox;
    btLerConfig: TButton;
    Label4: TLabel;
    Edit2: TEdit;
    Label5: TLabel;
    Edit1: TEdit;
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
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtnPesqCepClick(Sender: TObject);
    procedure ACBrCEP1BuscaEfetuada(Sender: TObject);
    // Fim Override

  private
    { Private declarations }

    fCEPAtual: Integer;

//    procedure AjustaParametrosDeEnvio;
//    procedure LerConfiguracao;
    procedure GravarConfiguracao;

  public
    { Public declarations }
  end;

var
  fClientes: TfClientes;

implementation

uses uDm;

{$R *.dfm}

procedure TfClientes.GravarConfiguracao;
var
  IniFile: string;
  Ini: TIniFile;
begin
  IniFile := ChangeFileExt(Application.ExeName, '.ini');
  Ini := TIniFile.Create(IniFile);
  try
{
    Ini.WriteString('Email', 'From', edtFrom.text);
    Ini.WriteString('Email', 'FromName', edtFromName.text);
    Ini.WriteString('Email', 'Host', edtHost.text);
    Ini.WriteString('Email', 'Port', edtPort.text);
    Ini.WriteString('Email', 'User', edtUser.text);
    Ini.WriteString('Email', 'Pass', edtPassword.text);
    Ini.WriteBool('Email', 'TLS', chkTLS.Checked);
    Ini.WriteBool('Email', 'SSL', chkSSL.Checked);
    Ini.WriteInteger('Email', 'DefaultCharset', cbbDefaultCharset.ItemIndex);
    Ini.WriteInteger('Email', 'IdeCharset', cbbIdeCharSet.ItemIndex);
}
  finally
    Ini.Free;
  end;

end;

procedure TfClientes.BtnPesqCepClick(Sender: TObject);
var
  CEP: string;
  Endereco: TStringList;
  CEPValido, CEPFoiMudado: Boolean;
  NovoCEP: Integer;
begin
  CEPValido := True;
  CEPFoiMudado := False;
  CEP := MaskEditCEP.Text;
  CEP := StringReplace(CEP, '.', '', [rfReplaceAll]);
  CEP := StringReplace(CEP, '-', '', [rfReplaceAll]);
  try
    NovoCEP := StrToInt(CEP);
    if fCEPAtual <> NovoCEP then
    begin
      fCEPAtual := NovoCEP;
      CEPFoiMudado := True;
    end;
  except
    on Exception do
      CEPValido := False;
  end;

  if (not CEPFoiMudado) and ((not CEPValido) or (EditBairro.Text <> '') or (EditEndereco.Text <> '')) then
    inherited
  else
  begin
    if CkPesq.Checked = False then
    begin
      Endereco := DM.BuscarCEPNoViaCEP(CEP);
      if Endereco.Count = 5 then // Checar se realmente foi recebido 5 valores.
      begin
        EditEndereco.Text := Endereco[0];
        EditBairro.Text := Endereco[1];
        EditUF.Text := Endereco[2];
        EditCidade.Text := Endereco[3];
        EditComplemento.Text := Endereco[4];
      end;
    end
    else
    begin
      try
         ACBrCEP1.BuscarPorCEP(CEP);
      except
         On E : Exception do
         begin
            ShowMessage(E.Message);
         end ;
      end ;
    end;
  end;
end;

procedure TfClientes.ACBrCEP1BuscaEfetuada(Sender: TObject);
var
  I : Integer ;
begin
  if ACBrCEP1.Enderecos.Count < 1 then
     ShowMessage( 'Nenhum Endere�o encontrado' )
  else
   begin
     For I := 0 to ACBrCEP1.Enderecos.Count-1 do
     begin
       with ACBrCEP1.Enderecos[I] do
       begin
          EditEndereco.Text := Tipo_Logradouro+ ' ' +Logradouro ;
          EditComplemento.Text := Complemento ;
          EditBairro.Text := Bairro ;
          EditCidade.Text := Municipio;
          EditUF.Text := UF;
       end ;
     end ;
   end ;

end;

procedure TfClientes.BtnNovoClick(Sender: TObject);
begin
  inherited;
   if EditNome.CanFocus then
      EditNome.SetFocus;
end;

procedure TfClientes.FormCreate(Sender: TObject);
var
  m: TMailCharset;
begin
  inherited;
  cbbDefaultCharset.Items.Clear;
  for m := Low(TMailCharset) to High(TMailCharset) do
    cbbDefaultCharset.Items.Add(GetEnumName(TypeInfo(TMailCharset), integer(m)));
  cbbDefaultCharset.ItemIndex := 0;
  cbbIdeCharSet.Items.Assign(cbbDefaultCharset.Items);
  cbbIdeCharSet.ItemIndex := 0;
  FCodModulo := 1;
  FKey[1]:= 'CODIGO';
  FKey[2]:= 'EMPRESA';
  FAutoNumSQL:= 'SELECT MAX(CODIGO) AS MAX_NUM FROM CLIENTES ';
  FQuery := Query;
  TUniQuery(FQuery).SQL.Text := CreateSelect;
  FNovoFocusControl:= EditNome;
end;

procedure TfClientes.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (Key = #13) then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
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
  CkPesq.Checked := False;
  MaskEditCEP.Clear;
  EditEndereco.Clear;
  EditNumero.Clear;
  EditComplemento.Clear;
  EditBairro.Clear;
  EditCidade.Clear;
  EditUF.Clear;
  EditPais.Text := 'BRASIL';

  // Sem clean code no exemplo, por�m o form de heran�a possui algum clean code
  // Aqui � poss�vel resolver com um for e limpar os componentes, por�m, mantive o
  // c�digo desssa forma pra manter a simplicidade de entendimento para o teste
  // Mantive inclusive alguns coment�rios, mas obviamente, n�o s�o necess�rios
  // principalmente em um ambiente de controle de versionamento


end;

procedure TfClientes.CompleteCampos;
begin
  inherited;

  FKeyValue[1] := Query.FieldByName('CODIGO').AsString;
//  FKeyValue[2] := Query.FieldByName('EMPRESA').AsString;    // Caso se use chave composta
  EditCodigo.Text := Query.FieldByName('CODIGO').AsString;
  EditNome.Text := Query.FieldByName('NOME').AsString;
  EditRG.Text := Query.FieldByName('RG').AsString;
  MaskEditCPF.Text := Query.FieldByName('CPF').AsString;
  MaskEditTelCel.Text := Query.FieldByName('TELEFONE').AsString;
  EditEmail.Text := Query.FieldByName('EMAIL').AsString;
  MaskEditCEP.Text := Query.FieldByName('CEP').AsString;
  EditEndereco.Text := Query.FieldByName('LOGRADOURO').AsString;
  EditNumero.Text := Query.FieldByName('NUMERO').AsString;
  EditComplemento.Text := Query.FieldByName('COMPLEMENTO').AsString;
  EditBairro.Text := Query.FieldByName('BAIRRO').AsString;
  EditCidade.Text := Query.FieldByName('CIDADE').AsString;
  EditUF.Text := Query.FieldByName('UF').AsString;
  EditPais.Text := Query.FieldByName('PAIS').AsString;

end;

function TfClientes.CreateDelete: String;
begin
  Result:= ' DELETE FROM CLIENTES WHERE CODIGO = ' + IntToStr(FKeyValue[1]);
end;

function TfClientes.CreateInsert: String;
var Preview, Imp_1_Linha: Integer;
begin

  Result := ' INSERT INTO CLIENTES (CODIGO, NOME, RG, CPF, TELEFONE, EMAIL, CEP ' +
            ' LOGRADOURO, NUMERO, COMPLEMENTO, BAIRRO, CIDADE, UF, PAIS) ' +
            ' VALUES ( ' +
            ' (SELECT COALESCE(MAX(CODIGO),0) + 1 FROM CLIENTES), ' +
            DM.DBFormat(EditNome.Text,dbTexto) + ',' +
            DM.DBFormat(EditRG.Text,dbTexto) + ',' +
            DM.DBFormat(MaskEditCPF.Text,dbTexto) + ',' +
            DM.DBFormat(MaskEditTelCel.Text,dbTexto) + ',' +
            DM.DBFormat(MaskEditCEP.Text,dbTexto) + ',' +
            DM.DBFormat(EditEndereco.Text,dbTexto) + ',' +
            DM.DBFormat(EditNumero.Text,dbTexto) + ',' +
            DM.DBFormat(EditComplemento.Text,dbTexto) + ',' +
            DM.DBFormat(EditBairro.Text,dbTexto) + ',' +
            DM.DBFormat(EditCidade.Text,dbTexto) + ',' +
            DM.DBFormat(EditUF.Text,dbTexto) + ',' +
            DM.DBFormat(EditPais.Text,dbTexto) + ')';

end;

function TfClientes.CreateSelect: String;
var S: String;
begin

  // No teste, uso com Unidac, uma �nica persistencia! Isso � quebra de padr�o!
  // O padr�o usual de uma persistencia pra listagem e outra pro registro,
  // poderia ser utilizado, mas mantive a simplicidade e clareza para o teste, com um unico DataSet

  S := ' ';
  S := ' select c.* from clientes c ' +
  ' where 1 = 1 ';

  if EditPesq.Text <> '' then
  begin
    case ComboBoxPesqPor.ItemIndex of
      1: S := S + ' and c.codigo = ' + EditPesq.Text + ' ';
      0: S := S + ' and c.nome like ' + QuotedStr(EditPesq.Text) + ' ';
    end;
  end;
  Result:= S + ' order by c.codigo ';
end;

function TfClientes.CreateUpdate: String;
var Preview, Imp_1_Linha: Integer;
begin

  Result:= ' UPDATE CLIENTES SET ' +
           ' NOME = ' + DM.DBFormat(EditNome.Text,dbTexto) + ',' +
           ' RG = ' + DM.DBFormat(EditRG.Text,dbTexto) + ',' +
           ' CPF = ' + DM.DBFormat(MaskEditCPF.Text,dbTexto) + ',' +
           ' TELEFONE = ' + DM.DBFormat(MaskEditTelCel.Text,dbTexto) + ',' +
           ' CEP = ' + DM.DBFormat(MaskEditCEP.Text,dbTexto) + ',' +
           ' LOGRADOURO = ' + DM.DBFormat(EditEndereco.Text,dbTexto) + ',' +
           ' NUMERO = ' + DM.DBFormat(EditNumero.Text,dbTexto) + ',' +
           ' COMPLEMENTO = ' + DM.DBFormat(EditComplemento.Text,dbTexto) + ',' +
           ' BAIRRO = ' + DM.DBFormat(EditBairro.Text,dbTexto) + ',' +
           ' CIDADE = ' + DM.DBFormat(EditCidade.Text,dbTexto) + ',' +
           ' UF = ' + DM.DBFormat(EditUF.Text,dbTexto) + ',' +
           ' PAIS = ' + DM.DBFormat(EditPais.Text,dbTexto) +
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
