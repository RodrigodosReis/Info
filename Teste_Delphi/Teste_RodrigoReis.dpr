program Teste_RodrigoReis;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {Form1},
  uDm in 'uDm.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
