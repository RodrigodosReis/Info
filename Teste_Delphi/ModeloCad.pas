unit ModeloCad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, Grids, DBGrids, Mask, ToolWin,
  ImgList, ShellApi, DB,
  ExtCtrls, uDM,
  RxCurrEdit, RxToolEdit,
  RxLookup, SQLComboUni, Menus, Uni, System.ImageList;

type
  TfrmModeloCad = class(TForm)
    PageControl: TPageControl;
    TabPesquisa: TTabSheet;
    DBGridDadosTerc: TDBGrid;
    TabCadastro: TTabSheet;
    BtnPesquisar: TBitBtn;
    PanelCadBottom: TPanel;
    ToolBar: TToolBar;
    BtnNovo: TToolButton;
    BtnSalvar: TToolButton;
    BtnAlterar: TToolButton;
    BtnExcluir: TToolButton;
    BtnCancelar: TToolButton;
    ToolButton1: TToolButton;
    StatusBar: TStatusBar;
    Pop: TPopupMenu;
    Novo2: TMenuItem;
    Salvar2: TMenuItem;
    Alterar2: TMenuItem;
    Excluir2: TMenuItem;
    Cancelar2: TMenuItem;
    Fechar2: TMenuItem;
    ImageList1: TImageList;
    BtnVoltar: TToolButton;
    function VerifyReqFields: Boolean; virtual;
    function CreateSelect: string; virtual;
    function CreateInsert: string; virtual; abstract;
    function CreateUpdate: string; virtual; abstract;
    function CreateDelete: string; virtual; abstract;
    procedure SetCodField; virtual;
    procedure CompleteCampos; virtual;

    // METODOS QUE PODEM SER SOBREPOSTOS NA CLASSE DERIVADA

    procedure SetDefValues; virtual;
    procedure ClearPesqFields; virtual;
    procedure Limpar; virtual;
    function CheckOthers: Boolean; virtual;
    procedure SaveOthers; virtual;
    procedure DeleteOthers; virtual;
    procedure AfterOperation; virtual;
    procedure AfterInsert; virtual;
    procedure BeforeOperation; virtual;
    function CheckFields: Boolean; virtual;

    // METODOS DA CLASSE BASE

    procedure Pesquisar;
    procedure Incluir;
    procedure Alterar;
    procedure Excluir;
    procedure EnableCadastro(Enable: Boolean); virtual;
    procedure GetData;
    procedure SetComboList; virtual;
    procedure SetAutoNumSQL(SQL: string);
    procedure SetPermissionArray;
    procedure AtualizaCasasDec; virtual;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure TabCadastroShow(Sender: TObject);
    procedure BtnPesquisarClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure PageControlChanging(Sender: TObject;
      var AllowChange: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridDadosTercDblClick(Sender: TObject);
    procedure Novo2Click(Sender: TObject);
    procedure Salvar2Click(Sender: TObject);
    procedure Alterar2Click(Sender: TObject);
    procedure Excluir2Click(Sender: TObject);
    procedure Cancelar2Click(Sender: TObject);
    procedure Fechar2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    FPermission: array[1..6] of Boolean;
    Operation: TOperacaoProj;
    FCodModulo: Integer;
    FKey: array[1..6] of string;
    FKeyValue: array[1..6] of Variant;
    FAutoNumSQL: string;
    FNovoFocusControl: TWinControl;
    FQuery: TObject;
    FCheckOthersMessage: string;
    ReqFields: array[0..1] of TStringList; // Nomes dos componentes que devem ser preenchidos
    PrintBtn, EmailBtn: TToolButton;
  end;

var
  frmModeloCad: TfrmModeloCad;

implementation


{$R *.dfm}

procedure TfrmModeloCad.ClearPesqFields;
begin
  //sdfsdfsd
end;

procedure TfrmModeloCad.FormShow(Sender: TObject);
var
  _SQL: string;
begin
  SetPermissionArray;
  SetComboList;
  AtualizaCasasDec;
  ClearPesqFields;
  Limpar;
  SetDefValues;

  if FPermission[1] then
  begin
    _SQL := CreateSelect;
    if _SQL <> '' then
    begin
      if FQuery is TUniQuery then
      begin
        with FQuery as TUniQuery do
        begin
          Close;
          Sql.Clear;
          Sql.Add(_SQL);
          Open;
        end;
      end;
    end
    else
    begin
      with TUniQuery(FQuery) do
      begin
        Close;
        Open;
      end;
    end;
  end;
end;

procedure TfrmModeloCad.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  TUniQuery(FQuery).Close;
end;

procedure TfrmModeloCad.SetDefValues;
var
  A: TComponent;
begin
  try
    PageControl.TabIndex := 0;
  except
  end;
end;

procedure TfrmModeloCad.CompleteCampos;
begin
  StatusBar.SimpleText := '';
end;

procedure TfrmModeloCad.Limpar;
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if Components[i] is TEdit then
      (Components[i] as TEdit).Text := ''
    else if Components[i] is TMaskEdit then
      (Components[i] as TMaskEdit).Text := ''
    else if Components[i] is TMemo then
      (Components[i] as TMemo).Text := ''
    else if Components[i] is TCurrencyEdit then
      (Components[i] as TCurrencyEdit).Text := ''
    else if Components[i] is TRxCalcEdit then
      (Components[i] as TRxCalcEdit).Text := ''
    else if Components[i] is TDateEdit then
      (Components[i] as TDateEdit).Text := ''
    else if Components[i] is TRxDBLookupCombo then
      (Components[i] as TRxDBLookupCombo).KeyValue := 0
    else if Components[i] is TComboEdit then
      (Components[i] as TComboEdit).Text := ''
    else if Components[i] is TSQLComboUni then
      (Components[i] as TSQLComboUni).KeyValue := -1;
  end;
end;

procedure TfrmModeloCad.BtnNovoClick(Sender: TObject);
var
  i: Integer;
begin
  Operation := opNovo;
  StatusBar.SimpleText := 'Novo Registro';
  EnableCadastro(True);
  Limpar;

  BtnSalvar.Enabled := True;
  BtnCancelar.Enabled := True;
  BtnNovo.Enabled := False;
  BtnAlterar.Enabled := False;
  BtnExcluir.Enabled := False;

  if PrintBtn <> nil then
    PrintBtn.Enabled := False;

end;

procedure TfrmModeloCad.Incluir;
begin
  if not CheckFields then
    Exit;

  if VerifyReqFields then
  begin
    if CheckOthers then
    begin

      BeforeOperation;

      DM.ExecutaSQL(CreateInsert);
      DM.BuscaSimples(FAutoNumSQL);
      FKeyValue[1] := DM.QryAux.Fields[0].AsInteger;

      SetCodField;
      SaveOthers;
      if TUniQuery(FQuery).Active then
        TUniQuery(FQuery).Refresh;
      AfterInsert;
      AfterOperation;

      Operation := opDataOut;

      StatusBar.SimpleText := 'Transação efetuada com sucesso!';

      BtnSalvar.Enabled := False;
      BtnCancelar.Enabled := False;
      EnableCadastro(False);

      BtnNovo.Enabled := FPermission[2];
      BtnAlterar.Enabled := FPermission[3];
      BtnExcluir.Enabled := FPermission[4];

      if PrintBtn <> nil then
        PrintBtn.Enabled := True;

      if EmailBtn <> nil then
        EmailBtn.Enabled := True;

    end
    else if FCheckOthersMessage <> '' then
    Application.MessageBox(PWideChar(FCheckOthersMessage), 'Atenção', 48);
  end
  else
    Application.MessageBox('Preencha os campos!', 'Atenção', 48);

end;

procedure TfrmModeloCad.Alterar;
var
  SQL: string;
begin
  if not CheckFields then
    Exit;

  if VerifyReqFields then
  begin
    if CheckOthers then
    begin

      BeforeOperation;

      SQL := CreateUpdate;
      if SQL <> '' then
      begin
        DM.ExecutaSQL(SQL);
      end;

      SaveOthers;
      if TUniQuery(FQuery).Active then
        TUniQuery(FQuery).Refresh;

      AfterOperation;
      Operation := opDataOut;

      BtnSalvar.Enabled := False;
      BtnCancelar.Enabled := False;
      StatusBar.SimpleText := 'Transação efetuada com sucesso!';
      EnableCadastro(False);

      BtnNovo.Enabled := FPermission[2];
      BtnAlterar.Enabled := FPermission[3];
      BtnExcluir.Enabled := FPermission[4];

      if PrintBtn <> nil then
        PrintBtn.Enabled := True;

    end
    else if FCheckOthersMessage <> '' then
    Application.MessageBox(PWideChar(FCheckOthersMessage), 'Atenção', 48);
  end
  else
    Application.MessageBox('Preencha os campos!', 'Atenção', 48);

end;

procedure TfrmModeloCad.BtnSalvarClick(Sender: TObject);
var
  i: Integer;
begin
  if Operation = opNovo then
    Incluir
  else
    Alterar;

end;

procedure TfrmModeloCad.BtnExcluirClick(Sender: TObject);
var
  i: Integer;
begin
  Excluir;
end;

procedure TfrmModeloCad.EnableCadastro(Enable: Boolean);
var
  i: Integer;
begin
  for i := 0 to Self.ComponentCount - 1 do
    if (Self.Components[i] is TControl) then
      if (Self.Components[i] as TControl).Tag = 5 then
        (Self.Components[i] as TControl).Enabled := Enable;

end;

procedure TfrmModeloCad.TabCadastroShow(Sender: TObject);
var
  i: Integer;
begin
  GetData;
  EnableCadastro(False);

  BtnSalvar.Enabled := False;
  BtnCancelar.Enabled := False;

  StatusBar.SimpleText := '';

  BtnNovo.Enabled := FPermission[2];
end;

procedure TfrmModeloCad.GetData;
var Qtd: Integer;
begin
  if FQuery is TUniQuery then
    begin
    Qtd := TUniQuery(FQuery).RecordCount;
    end
  else
    begin
    Qtd := 0;
    end;

  if Qtd > 0 then
  begin
    // Permissões (Alterar)
    BtnAlterar.Enabled := FPermission[3];

    // Permissões (Excluir)
    BtnExcluir.Enabled := FPermission[4];

    CompleteCampos;
    Operation := opDataOut;

    if PrintBtn <> nil then
      PrintBtn.Enabled := True;
    if EmailBtn <> nil then
      EmailBtn.Enabled := True;

  end
  else
  begin
    Limpar;
    BtnAlterar.Enabled := False;
    BtnExcluir.Enabled := False;

    if PrintBtn <> nil then
      PrintBtn.Enabled := False;
    if EmailBtn <> nil then
      EmailBtn.Enabled := False;

    Operation := opNone;
  end;
end;

procedure TfrmModeloCad.SetComboList;
begin
  // ------------
end;

procedure TfrmModeloCad.Excluir;
var
  SQL: string;
begin
  SQL := CreateDelete;

  try
    BeforeOperation;

    if SQL <> '' then
      DM.ExecutaSQL(SQL);
    DeleteOthers;
  except
    on E: Exception do
    begin
      if Copy(E.Message, 1, 11) = 'exception 1' then
        Application.MessageBox('Não é possível excluir o registro. Pois existem lançamentos em outros locais!', 'Atenção', 48)
      else
        ShowMessage('Não é possível excluir o registro. Motivo: ' + E.Message);

      Exit;
    end;
  end;

  if TUniQuery(FQuery).Active then
    TUniQuery(FQuery).Refresh;

  AfterOperation;

  Limpar;
  EnableCadastro(False);
  Operation := opNone;
  BtnAlterar.Enabled := False;
  BtnExcluir.Enabled := False;

  if PrintBtn <> nil then
    PrintBtn.Enabled := False;

  StatusBar.SimpleText := 'Transação efetuada com sucesso!';

end;

procedure TfrmModeloCad.SetAutoNumSQL(SQL: string);
begin
  FAutoNumSQL := SQL;
end;

procedure TfrmModeloCad.BtnPesquisarClick(Sender: TObject);
begin
  Pesquisar;
end;

procedure TfrmModeloCad.Pesquisar;
begin
  if FPermission[1] then
  begin

    with TUniQuery(FQuery) do
    begin
      Close;
      Sql.Clear;
      Sql.Add(CreateSelect);
      Open;
    end;

  end;
end;

procedure TfrmModeloCad.ToolButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmModeloCad.BtnAlterarClick(Sender: TObject);
var
  i: Integer;
begin
  EnableCadastro(True);
  BtnAlterar.Enabled := False;
  BtnExcluir.Enabled := False;
  BtnSalvar.Enabled := True;
  Operation := opEditar;

  if PrintBtn <> nil then
    PrintBtn.Enabled := False;

  BtnCancelar.Enabled := True;
  StatusBar.SimpleText := 'Alterar Registro';

end;

procedure TfrmModeloCad.SetPermissionArray;
begin
  FPermission[1] := DM.HavePermission(FCodModulo, 1);
  FPermission[2] := DM.HavePermission(FCodModulo, 2);
  FPermission[3] := DM.HavePermission(FCodModulo, 3);
  FPermission[4] := DM.HavePermission(FCodModulo, 4);
  FPermission[5] := DM.HavePermission(FCodModulo, 5);
  FPermission[6] := DM.HavePermission(FCodModulo, 6);
end;

procedure TfrmModeloCad.BtnCancelarClick(Sender: TObject);
begin
  EnableCadastro(False);
  BtnSalvar.Enabled := False;
  BtnCancelar.Enabled := False;
  BtnNovo.Enabled := True;

  BtnAlterar.Enabled := (Operation <> opNone) and (Operation <> opNovo) and (FPermission[3]);
  BtnExcluir.Enabled := (Operation <> opNone) and (Operation <> opNovo) and (FPermission[4]);

  if PrintBtn <> nil then
    PrintBtn.Enabled := (Operation <> opNone) and (Operation <> opNovo);

  if Operation = opNovo then
    Limpar;

  Operation := opDataOut;
  StatusBar.SimpleText := 'Operação Cancelada';
end;

function TfrmModeloCad.CheckOthers: Boolean;
begin
  Result := True;
end;

procedure TfrmModeloCad.SaveOthers;
begin
  // Definido na Classe derivada quando necessário
end;

procedure TfrmModeloCad.DeleteOthers;
begin
  // Definido na Classe derivada quando necessário
end;

procedure TfrmModeloCad.AfterOperation;
begin
  // Executa após qualquer uma das 3 Operações (Inclusao,Alteracao,Exclusao)
end;

function TfrmModeloCad.VerifyReqFields: Boolean;
begin
  Result := True;
end;

function TfrmModeloCad.CheckFields: Boolean;
var
  i, Index: Integer;
begin
  Index := -1;
  for i := 0 to ComponentCount - 1 do
  begin
    Index := ReqFields[0].IndexOf(Components[i].Name);
    if Index <> -1 then
    begin
      if Components[i] is TEdit then
      begin
        if Trim((Components[i] as TEdit).Text) = '' then
          Break;
      end
      else if Components[i] is TComboBox then
      begin
        if Trim((Components[i] as TComboBox).Text) = '' then
          Break;
      end
      else if Components[i] is TMaskEdit then
      begin
        if Trim((Components[i] as TMaskEdit).Text) = '' then
          Break;
      end
      else if Components[i] is TMemo then
      begin
        if Trim((Components[i] as TMemo).Text) = '' then
          Break;
      end
      else if Components[i] is TCurrencyEdit then
      begin
        if Trim((Components[i] as TCurrencyEdit).Text) = '' then
          Break;
      end
      else if Components[i] is TRxCalcEdit then
      begin
        if Trim((Components[i] as TRxCalcEdit).Text) = '' then
          Break;
      end
      else if Components[i] is TDateEdit then
      begin
        if (Components[i] as TDateEdit).Text = '  /  /    ' then
          Break;
      end
      else if Components[i] is TRxDBLookupCombo then
      begin
        if Trim((Components[i] as TRxDBLookupCombo).Text) = '' then
          Break;
      end
      else if Components[i] is TComboEdit then
      begin
        if Trim((Components[i] as TComboEdit).Text) = '' then
          Break;
      end
      else if Components[i] is TSQLComboUni then
      begin
        if Trim((Components[i] as TSQLComboUni).Text) = '' then
          Break;
      end;
    end;
  end;

  if Index <> -1 then
    Application.MessageBox(PWideChar('Preencha o campo: ' + ReqFields[1][Index] + '.'), 'Atenção', 48);
  Result := Index = -1;

end;

procedure TfrmModeloCad.FormCreate(Sender: TObject);
begin
  ReqFields[0] := TStringList.Create;
  ReqFields[1] := TStringList.Create;
end;

procedure TfrmModeloCad.BeforeOperation;
begin
  // Executa antes de qualquer uma das 3 Operações (Inclusao,Alteracao,Exclusao)
end;

procedure TfrmModeloCad.SetCodField;
begin
  // Método implementado na classe derivada se necessitar
end;

procedure TfrmModeloCad.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (BtnSalvar.Enabled) and (PageControl.TabIndex <> 0) then
  begin
    Application.MessageBox('Salve ou cancele as alterações!', 'Atenção', 48);
    CanClose := False;
  end;
end;

procedure TfrmModeloCad.PageControlChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  if PageControl.TabIndex = 1 then
  begin
    if BtnSalvar.Enabled then
    begin
      Application.MessageBox('Salve ou cancele as alterações!', 'Atenção', 48);
      AllowChange := False;
    end;
  end;

end;

function TfrmModeloCad.CreateSelect: string;
begin
  Result := '';
end;

procedure TfrmModeloCad.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;

end;

procedure TfrmModeloCad.AfterInsert;
begin
  // Executa após inserção
end;

procedure TfrmModeloCad.AtualizaCasasDec;
begin
  //Atualiza as casas decimais
end;

procedure TfrmModeloCad.DBGridDadosTercDblClick(Sender: TObject);
var
  i: Integer;
begin
  try
    PageControl.TabIndex := 1;
  except
  end;
end;

procedure TfrmModeloCad.Novo2Click(Sender: TObject);
begin
  BtnNovoClick(BtnNovo);

end;

procedure TfrmModeloCad.Salvar2Click(Sender: TObject);
begin
  BtnSalvarClick(BtnSalvar);

end;

procedure TfrmModeloCad.Alterar2Click(Sender: TObject);
begin
  BtnAlterarClick(BtnAlterar);

end;

procedure TfrmModeloCad.Excluir2Click(Sender: TObject);
begin
  BtnExcluirClick(BtnExcluir);

end;

procedure TfrmModeloCad.Cancelar2Click(Sender: TObject);
begin
  BtnCancelarClick(BtnCancelar);

end;

procedure TfrmModeloCad.Fechar2Click(Sender: TObject);
begin
  ToolButton1Click(ToolButton1);

end;

procedure TfrmModeloCad.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
// Verificar se necessário
end;

end.

