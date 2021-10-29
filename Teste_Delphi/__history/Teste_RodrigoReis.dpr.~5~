program Teste_RodrigoReis;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {fPrincipal},
  uDm in 'uDm.pas' {DM: TDataModule},
  ModeloCad in 'ModeloCad.pas' {frmModeloCad};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfPrincipal, fPrincipal);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmModeloCad, frmModeloCad);
  Application.Run;
end.
