unit uDm;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, Uni, UniProvider,
  InterBaseUniProvider, MemDS;

type
  TOperacaoProj = (opConsulta, opNovo, opDataOut, opNone, opEditar);
  TDM = class(TDataModule)
    UniProv: TInterBaseUniProvider;
    DB: TUniConnection;
    Trans: TUniTransaction;
    QryAux: TUniQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure BuscaSimples(Texto: string); overload;
    procedure BuscaSimples(Texto: string; var Qry: TUniQuery); overload;
    procedure ExecutaSQL(Texto: string);
    function GetCount(Texto: string): Integer;
    function GetValue(SQL: string; ResultField: string): string;
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.BuscaSimples(Texto: string);
begin
  {Procedure para uso geral, para pequenos selects que precisam ser retornados na qryAux.}
  with QryAux do
  begin
    Close;
    Sql.Clear;
    Sql.Add(Texto);
    Open;
  end;
end;

procedure TDM.BuscaSimples(Texto: string; var Qry: TUniQuery);
begin
  {Procedure para uso geral, para pequenos selects que precisam ser retornados na qry informada.}
  with Qry do
  begin
    Close;
    Sql.Clear;
    Sql.Add(Texto);
    Open;
  end;
end;

procedure TDM.ExecutaSQL(Texto: string);
var
  Q: TUniQuery;
begin
  try
    Q := TUniQuery.Create(nil);
    Q.Connection := DB;

    Q.Close;
    Q.Sql.Clear;
    Q.Sql.Add(Texto);
    Q.Execute;
  finally
    Q.Free;
  end;
end;

function TDM.GetCount(Texto: string): Integer;
var
  Q: TUniQuery;
begin
  try
    Q := TUniQuery.Create(nil);
    Q.Connection := DB;

    BuscaSimples(Texto, Q);

    Result := Q.RecordCount;
  finally
    Q.Free;
  end;
end;

function TDM.GetValue(SQL: string; ResultField: string): string;
var
  Q: TUniQuery;
begin
  try
    Q := TUniQuery.Create(nil);
    Q.Connection := DB;

    BuscaSimples(SQL, Q);

    if Q.RecordCount > 0 then
      Result := Q.FieldByName(ResultField).AsString
    else
      Result := '';

  finally
    Q.Free;
  end;

end;


end.
