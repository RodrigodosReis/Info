unit uDm;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, Uni, UniProvider, System.DateUtils,
  InterBaseUniProvider, MemDS, REST.Client, IPPeerClient, System.JSON;

type
  TOperacaoProj = (opConsulta, opNovo, opDataOut, opNone, opEditar);
  TDBFormat = (dbTexto, dbData, dbMonet, dbInt, dbFloat, dbTime, dbDataTime);
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
    function DBFormat(Value: string; DataType: TDBFormat): string;
    function HavePermission(CodModulo, CodFuncao: Integer): Boolean;
    function BuscarCEPNoViaCEP(vCEP: string): TStringList;
  end;

var
  DM: TDM;

var
  vDadosRAM: Integer;

function DateConvert(Date: string): string;
function ReplaceDotMonet(Str: string): string; //Mandar para o Banco
function ReplaceDot(Str: string): string; //Mandar para o Banco
function StrFloatUSA(S: String): String;

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

function TDM.HavePermission(CodModulo, CodFuncao: Integer): Boolean;
begin
  // verifica o código do modulo em alguma estrutura de dados e retorna
   Result := True;
end;

function TDM.DBFormat(Value: string; DataType: TDBFormat): string;
var
Fmt     : TFormatSettings;
d: TDateTime;
begin
  //Converte para o modo de inserção ou alteração que o Banco de Dados aceita
  if DataType = dbData then
  begin
    try
      if Value <> '  /  /    ' then
        begin
        StrToDate(Value);
        end
      else
        begin
        Result := 'NULL';
        Exit;
        end;

    except
      Result := 'NULL';
      Exit;
    end;
  end;
  if DataType = dbTime then
  begin
    try
      StrToTime(Value);
    except
      Result := 'NULL';
      Exit;
    end;
  end;

  if DataType = dbDataTime then
  begin
    try
      fmt.ShortDateFormat:='mm dd yyyy';
      fmt.DateSeparator  :=#32;
      fmt.LongTimeFormat :='hh:nn:ss';
      fmt.TimeSeparator  :=':';
      FormatDateTime('mm/dd/yyyy hh:mm', StrToDateTime(Value));
    except
      Result := 'NULL';
      Exit;
    end;
  end;

  if Trim(Value) <> '' then
  begin
    case DataType of
      dbTexto: Result := QuotedStr(Trim(Value));
      dbData: Result := QuotedStr(DateConvert(Value));
      dbTime: Result := QuotedStr(TimeToStr(StrToTime(Value)));
      dbDataTime: Result := QuotedStr(FormatDateTime('mm/dd/yyyy hh:mm', StrToDateTime(Value)));
//      dbMonet: Result := ReplaceDot(Val);
      dbMonet: Result := ReplaceDotMonet(Value);
      dbInt: Result := Value;
//      dbFloat: Result := ReplaceDot(Value);
      dbFloat: Result := ReplaceDotMonet(Value);
    end;
  end
  else
    Result := 'NULL';
end;

function DateConvert(Date: string): string;
var
  t, parte: integer;
  dat1, dat2: string;
begin
  {try
    StrToDate(Date);
    Result:= Date[4] + Date[5] + '/' + Date[1] + Date[2] + '/' + Date[7] + Date[8] + Date[9] + Date[10];
  except

  end;  }
  dat1 := '';
  dat2 := '';
  parte := 0;
  t := 0;

  try
    StrToDateTime(Date);
    dat1 := Date;

    t := length(dat1);
    if t < 10 then
    begin
      parte := dayof(StrToDate(dat1));
      if parte <= 9 then
        dat2 := dat2 + '0' + IntToStr(parte) + '/'
      else
        dat2 := dat2 + IntToStr(parte) + '/';
      parte := monthof(StrToDate(dat1));
      if parte <= 9 then
        dat2 := dat2 + '0' + IntToStr(parte) + '/'
      else
        dat2 := dat2 + IntToStr(parte) + '/';
      parte := yearof(StrToDate(dat1));
      dat2 := dat2 + IntToStr(parte);
      Result := dat2[4] + dat2[5] + '/' + dat2[1] + dat2[2] + '/' + dat2[7] + dat2[8] + dat2[9] + dat2[10];

    end
    else
      Result := Date[4] + Date[5] + '/' + Date[1] + Date[2] + '/' + Date[7] + Date[8] + Date[9] + Date[10];
  except

  end;

end;

function ReplaceDot(Str: string): string;
begin
  Str := StringReplace(Str, '.', '', [rfReplaceAll]);
  Str := StringReplace(Str, ',', '.', [rfReplaceAll]);
  Result := Str;
end;

function ReplaceDotMonet(Str: string): string;
begin
  if Copy(Str,Length(Str) - 2, 1) = '.' then
  begin
    Str := StrFloatUSA(Str);
  end;
  Str := StringReplace(Str, '.', '', [rfReplaceAll]);
  Str := StringReplace(Str, ',', '.', [rfReplaceAll]);
  Result := Str;
end;

function StrFloatUSA(S: String): String;
//
// Converte formatos float Americano para o Brasileiro
//
var
  I: Integer;
  Carac: String;
begin
  for I := 1 to Length(S) do
  begin
    Carac := Copy(S, I, 1);
    if (Carac = '.') then
      Result := Result + ','
    else
      if (Carac = ',') then
        Result := Result + '.'
      else
        Result := Result + Carac;
  end;
end;

function TDM.BuscarCEPNoViaCEP(vCEP: string): TStringList;
var
  data: TJSONObject;
  RESTClient: TRESTClient;
  RESTRequest: TRESTRequest;
  RESTResponse: TRESTResponse;
  Endereco: TStringList;
begin
  RESTClient := TRESTClient.Create(nil);
  RESTRequest := TRESTRequest.Create(nil);
  RESTResponse := TRESTResponse.Create(nil);
  RESTRequest.Client := RESTClient;
  RESTRequest.Response := RESTResponse;
  RESTClient.BaseURL := 'https://viacep.com.br/ws/' + vCEP + '/json';
  RESTRequest.Execute;
  data := RESTResponse.JSONValue as TJSONObject;
  try
    Endereco := TStringList.Create;
    if Assigned(data) then
    begin
        try
          Endereco.Add(data.Values['logradouro'].Value);
        except
          on Exception do
            Endereco.Add('');
        end;
        try
          Endereco.Add(data.Values['bairro'].Value);
        except
         on Exception do
           Endereco.Add('');
        end;
        try
          Endereco.Add(data.Values['uf'].Value);
        except
         on Exception do
           Endereco.Add('');
        end;
        try
          Endereco.Add(data.Values['localidade'].Value);
        except
         on Exception do
           Endereco.Add('');
        end;
        try
          Endereco.Add(data.Values['complemento'].Value);
        except
         on Exception do
           Endereco.Add('');
        end;
      end;
  finally
    FreeAndNil(data);
  end;
  Result := Endereco;
end;


end.
