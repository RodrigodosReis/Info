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
  ACBrIBGE, System.TypInfo, XMLDoc, XMLIntf, ACBrMail;

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
    EditExib: TEdit;
    Label5: TLabel;
    EditEnvio: TEdit;
    cbEmailHTML: TCheckBox;
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
    procedure FormShow(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure TabCadastroShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btLerConfigClick(Sender: TObject);
    procedure ACBrMail1MailException(const AMail: TACBrMail; const E: Exception;
      var ThrowIt: Boolean);
    procedure MaskEditCEPExit(Sender: TObject);
    procedure BtnEmailClick(Sender: TObject);
    // Fim Override

  private
    { Private declarations }

    fCEPAtual: Integer;

    procedure AjustaParametrosDeEnvio;
    procedure LerConfiguracao;
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
    Ini.WriteString('Email', 'From', EditEnvio.text);
    Ini.WriteString('Email', 'FromName', EditExib.text);
    Ini.WriteString('Email', 'Host', EditSMTP.text);
    Ini.WriteString('Email', 'Port', edtSmtpPort.text);
    Ini.WriteString('Email', 'User', edtSmtpUser.text);
    Ini.WriteString('Email', 'Pass', edtSmtpPass.text);
    Ini.WriteBool('Email', 'TLS', cbEmailTLS.Checked);
    Ini.WriteBool('Email', 'SSL', cbEmailSSL.Checked);
    Ini.WriteInteger('Email', 'DefaultCharset', cbbDefaultCharset.ItemIndex);
    Ini.WriteInteger('Email', 'IdeCharset', cbbIdeCharSet.ItemIndex);
  finally
    Ini.Free;
  end;
end;

procedure TfClientes.LerConfiguracao;
var
  IniFile: string;
  Ini: TIniFile;
begin
  IniFile := ChangeFileExt(Application.ExeName, '.ini');
  Ini := TIniFile.Create(IniFile);
  try
    EditEnvio.text := Ini.readString('Email', 'From', 'fulano@empresa.com.br');
    EditExib.text := Ini.readString('Email', 'FromName', 'Fulano de Tal');
    EditSMTP.text := Ini.readString('Email', 'Host', 'smtp.empresa.com.br');
    edtSmtpPort.text := Ini.readString('Email', 'Port', '587');
    edtSmtpUser.text := Ini.readString('Email', 'User', 'fulano@empresa.com.br');
    edtSmtpPass.text := Ini.readString('Email', 'Pass', 'Sua_Senha_123');
    cbEmailTLS.Checked := Ini.ReadBool('Email', 'TLS', False);
    cbEmailSSL.Checked := Ini.ReadBool('Email', 'SSL', False);
    cbbDefaultCharset.ItemIndex := Ini.ReadInteger('Email', 'DefaultCharset', 27);
    cbbIdeCharSet.ItemIndex := Ini.ReadInteger('Email', 'IdeCharset', 15);
  finally
    Ini.Free;
  end;
end;

procedure TfClientes.ACBrMail1MailException(const AMail: TACBrMail;
  const E: Exception; var ThrowIt: Boolean);
begin
  inherited;
  ShowMessage(E.Message);
  ThrowIt := False;
end;

procedure TfClientes.AjustaParametrosDeEnvio;
begin
  ACBrMail1.From := EditEnvio.text;
  ACBrMail1.FromName := EditExib.text;
  ACBrMail1.Host := EditSMTP.text;
  ACBrMail1.Username := edtSmtpUser.text;
  ACBrMail1.Password := edtSmtpPass.text;
  ACBrMail1.Port := edtSmtpPort.text;
  ACBrMail1.SetTLS := cbEmailTLS.Checked;
  ACBrMail1.SetSSL := cbEmailSSL.Checked;
  ACBrMail1.DefaultCharset := TMailCharset(cbbDefaultCharset.ItemIndex);
  ACBrMail1.IDECharset := TMailCharset(cbbIdeCharSet.ItemIndex);
  ACBrMail1.AddAddress(EditEmail.text, EditNome.text);
  //ACBrMail1.AddCC('outro_email@gmail.com'); // opcional
  //ACBrMail1.AddReplyTo('um_email'); // opcional
  //ACBrMail1.AddBCC('um_email'); // opcional
  //ACBrMail1.Priority := MP_high;
  //ACBrMail1.ReadingConfirmation := True; // solicita confirma??o de leitura
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

procedure TfClientes.BtnSalvarClick(Sender: TObject);
begin
  if vDadosRAM = 1 then
  begin
    QueryMem.FieldByName('NOME').AsString := EditNome.Text;
    QueryMem.FieldByName('RG').AsString := EditRG.Text;
    QueryMem.FieldByName('CPF').AsString := MaskEditCPF.Text;
    QueryMem.FieldByName('TELEFONE').AsString := MaskEditTelCel.Text;
    QueryMem.FieldByName('EMAIL').AsString := EditEmail.Text;
    QueryMem.FieldByName('CEP').AsString := MaskEditCEP.Text;
    QueryMem.FieldByName('LOGRADOURO').AsString := EditEndereco.Text;
    QueryMem.FieldByName('NUMERO').AsString := EditNumero.Text;
    QueryMem.FieldByName('COMPLEMENTO').AsString := EditComplemento.Text;
    QueryMem.FieldByName('BAIRRO').AsString := EditBairro.Text;
    QueryMem.FieldByName('CIDADE').AsString := EditCidade.Text;
    QueryMem.FieldByName('UF').AsString := EditUF.Text;
    QueryMem.FieldByName('PAIS').AsString := EditPais.Text;
    QueryMem.Post;
    try
       PageControl.ActivePageIndex := 0;
    except

    end;
  end
  else
    inherited;

end;

procedure TfClientes.ACBrCEP1BuscaEfetuada(Sender: TObject);
var
  I : Integer ;
begin
  if ACBrCEP1.Enderecos.Count < 1 then
     ShowMessage( 'Nenhum Endere?o encontrado' )
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

procedure TfClientes.btLerConfigClick(Sender: TObject);
begin
  inherited;
  LerConfiguracao;
end;

procedure TfClientes.BtnAlterarClick(Sender: TObject);
begin
  inherited;
  if vDadosRAM = 1 then
     QueryMem.Edit;
end;

procedure TfClientes.BtnEmailClick(Sender: TObject);
var
  XMLDocument: TXMLDocument;
  NodeTabela, NodeRegistro, NodeEndereco: IXMLNode;
  Dir, ArqXML: string;
  MS: TMemoryStream;
  P, N, I: Integer;
begin
  inherited;
   if Trim(EditNome.Text) = '' then
   begin
       ShowMessage('Preencha o campo Nome para enviar email!');
       exit;
   end;
   if Trim(EditEmail.Text) = '' then
   begin
       ShowMessage('Preencha o campo Nome para enviar email!');
       exit;
   end;


  // cria o xml com os dados
  XMLDocument := TXMLDocument.Create(Self);
  try
    XMLDocument.Active := True;
    NodeTabela := XMLDocument.AddChild('Cliente');

    NodeRegistro := NodeTabela.AddChild('Dados');
    NodeRegistro.ChildValues['Codigo'] := EditCodigo.Text;
    NodeRegistro.ChildValues['Nome'] := EditNome.Text;
    NodeRegistro.ChildValues['RG'] := EditRG.Text;
    NodeRegistro.ChildValues['CPF'] := MaskEditCPF.Text;
    NodeRegistro.ChildValues['Telefone'] := MaskEditTelCel.Text;
    NodeRegistro.ChildValues['Email'] := EditEmail.Text;
    NodeEndereco := NodeRegistro.AddChild('Endereco');
    NodeEndereco.ChildValues['CEP'] := MaskEditCEP.Text;
    NodeEndereco.ChildValues['Logradouro'] := EditEndereco.Text;
    NodeEndereco.ChildValues['Numero'] := EditNumero.Text;
    NodeEndereco.ChildValues['Complemento'] := EditComplemento.Text;
    NodeEndereco.ChildValues['Cidade'] := EditCidade.Text;
    NodeEndereco.ChildValues['UF'] := EditUF.Text;
    NodeEndereco.ChildValues['Pais'] := EditPais.Text;

    XMLDocument.SaveToFile(EditNome.Text + '.xml');
  finally
    XMLDocument.Free;
  end;

  // Envia email - n?o valida os dados de conf pois j? vem pre prenchidos - caso bug,o erro vir? com os dados de conf

  Dir := ExtractFilePath(ParamStr(0));

  // monta o texto do email no memo
  mmEmailMsg.Clear;
  mmEmailMsg.Lines.Add(' ');
  mmEmailMsg.Lines.Add(' -- Dados do cadastro desse Cliente -- ');
  mmEmailMsg.Lines.Add(' ');
  mmEmailMsg.Lines.Add(' ');
  mmEmailMsg.Lines.Add(' Nome: ' + EditNome.Text);
  mmEmailMsg.Lines.Add(' RG: ' + EditRG.Text);
  mmEmailMsg.Lines.Add(' CPF: ' + MaskEditCPF.Text);
  mmEmailMsg.Lines.Add(' Telefone: ' + MaskEditTelCel.Text);
  mmEmailMsg.Lines.Add(' Email: ' + EditEmail.Text);
  mmEmailMsg.Lines.Add(' ');
  mmEmailMsg.Lines.Add(' CEP: ' + MaskEditCEP.Text);
  mmEmailMsg.Lines.Add(' Logradouro: ' + EditEndereco.Text + ' N?mero: ' + EditNumero.Text);
  mmEmailMsg.Lines.Add(' Complemento: ' + EditComplemento.Text);
  mmEmailMsg.Lines.Add(' Bairro: ' + EditBairro.Text);
  mmEmailMsg.Lines.Add(' Cidade: ' + EditCidade.Text + ' UF: ' + EditUF.Text + ' Pa?s: ' + EditPais.Text );

  P := pos(' - ', edtEmailAssunto.Text);
  if P > 0 then
  begin
    N := StrToIntDef(copy(edtEmailAssunto.Text, P + 3, 5), 0) + 1;
    edtEmailAssunto.Text := copy(edtEmailAssunto.Text, 1, P + 2) + IntToStr(N);
  end;

  ACBrMail1.Clear;
  ACBrMail1.IsHTML := cbEmailHTML.Checked;
  ACBrMail1.Subject := edtEmailAssunto.Text;

  AjustaParametrosDeEnvio;

  // mensagem principal do e-mail. pode ser html ou texto puro
  if cbEmailHTML.Checked then
    ACBrMail1.Body.Assign(mmEmailMsg.Lines)
   else
    ACBrMail1.AltBody.Assign(mmEmailMsg.Lines);

  // Anexar XML
  MS := TMemoryStream.Create;
  try
    ArqXML := EditNome.Text + '.xml';
    MS.LoadFromFile(Dir + ArqXML);
    ACBrMail1.AddAttachment(MS, ArqXML, adAttachment);
  finally
    MS.Free;
  end;

  try
    ACBrMail1.Send(False);
  finally
    DeleteFile(ArqXML);
    ShowMessage('Email enviado com sucesso!');
  end;

end;

procedure TfClientes.BtnExcluirClick(Sender: TObject);
begin
  if vDadosRAM = 1 then
  begin
    QueryMem.Delete;
    try
     PageControl.ActivePageIndex := 0;
    except

    end;
  end
  else
  begin
    inherited;
  end;

end;

procedure TfClientes.BtnNovoClick(Sender: TObject);
begin
  inherited;
  if vDadosRAM = 1 then
     QueryMem.Append;
  if EditNome.CanFocus then
      EditNome.SetFocus;
end;

procedure TfClientes.FormCreate(Sender: TObject);
var
  m: TMailCharset;
begin
  inherited;
  vDadosRAM := 0;
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

procedure TfClientes.FormShow(Sender: TObject);
begin
  inherited;
  if vDadosRAM = 1 then
  begin
     QueryMem.Close;
     QueryMem.Open;
     DataSource.DataSet := QueryMem;
  end;
  LerConfiguracao;
end;

procedure TfClientes.TabCadastroShow(Sender: TObject);
begin
  if vDadosRAM = 1 then
  begin
    BtnAlterar.Enabled := FPermission[3];
    BtnExcluir.Enabled := FPermission[4];
    CompleteCampos;
    Operation := opDataOut;
    EnableCadastro(False);
    BtnSalvar.Enabled := False;
    BtnCancelar.Enabled := False;
    StatusBar.SimpleText := '';
    BtnNovo.Enabled := FPermission[2];
  end
  else
    inherited;

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

procedure TfClientes.Button1Click(Sender: TObject);
begin
  inherited;
  GravarConfiguracao;
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

  // Sem clean code no exemplo, por?m o form de heran?a possui algum clean code
  // Aqui ? poss?vel resolver com um for e limpar os componentes, por?m, mantive o
  // c?digo desssa forma pra manter a simplicidade de entendimento para o teste
  // Mantive inclusive alguns coment?rios, mas obviamente, n?o s?o necess?rios
  // principalmente em um ambiente de controle de versionamento


end;

procedure TfClientes.MaskEditCEPExit(Sender: TObject);
begin
  inherited;
  BtnPesqCep.Click;
end;

procedure TfClientes.CompleteCampos;
begin
  inherited;

  if vDadosRAM = 1 then
  begin
    FKeyValue[1] := QueryMem.FieldByName('CODIGO').AsString;
  //  FKeyValue[2] := QueryMem.FieldByName('EMPRESA').AsString;    // Caso se use chave composta
    EditCodigo.Text := QueryMem.FieldByName('CODIGO').AsString;
    EditNome.Text := QueryMem.FieldByName('NOME').AsString;
    EditRG.Text := QueryMem.FieldByName('RG').AsString;
    MaskEditCPF.Text := QueryMem.FieldByName('CPF').AsString;
    MaskEditTelCel.Text := QueryMem.FieldByName('TELEFONE').AsString;
    EditEmail.Text := QueryMem.FieldByName('EMAIL').AsString;
    MaskEditCEP.Text := QueryMem.FieldByName('CEP').AsString;
    EditEndereco.Text := QueryMem.FieldByName('LOGRADOURO').AsString;
    EditNumero.Text := QueryMem.FieldByName('NUMERO').AsString;
    EditComplemento.Text := QueryMem.FieldByName('COMPLEMENTO').AsString;
    EditBairro.Text := QueryMem.FieldByName('BAIRRO').AsString;
    EditCidade.Text := QueryMem.FieldByName('CIDADE').AsString;
    EditUF.Text := QueryMem.FieldByName('UF').AsString;
    EditPais.Text := QueryMem.FieldByName('PAIS').AsString;
  end
  else
  begin
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



end;

function TfClientes.CreateDelete: String;
begin
  Result:= ' DELETE FROM CLIENTES WHERE CODIGO = ' + IntToStr(FKeyValue[1]);
end;

function TfClientes.CreateInsert: String;
var Preview, Imp_1_Linha: Integer;
begin

  Result := ' INSERT INTO CLIENTES (CODIGO, NOME, RG, CPF, TELEFONE, EMAIL, CEP,' +
            ' LOGRADOURO, NUMERO, COMPLEMENTO, BAIRRO, CIDADE, UF, PAIS) ' +
            ' VALUES ( ' +
            ' (SELECT COALESCE(MAX(CODIGO),0) + 1 FROM CLIENTES), ' +
            DM.DBFormat(EditNome.Text,dbTexto) + ',' +
            DM.DBFormat(EditRG.Text,dbTexto) + ',' +
            DM.DBFormat(MaskEditCPF.Text,dbTexto) + ',' +
            DM.DBFormat(MaskEditTelCel.Text,dbTexto) + ',' +
            DM.DBFormat(EditEmail.Text,dbTexto) + ',' +
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

  // No teste, uso com Unidac, uma ?nica persistencia! Isso ? quebra de padr?o!
  // O padr?o usual de uma persistencia pra listagem e outra pro registro,
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
