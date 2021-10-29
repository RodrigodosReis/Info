program Teste_RodrigoReis;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {fPrincipal},
  uDm in 'uDm.pas' {DM: TDataModule},
  ModeloCad in 'ModeloCad.pas' {frmModeloCad},
  uDetalhes in 'uDetalhes.pas' {fDetalhes},
  uClientes in 'uClientes.pas' {fClientes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfPrincipal, fPrincipal);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmModeloCad, frmModeloCad);
  Application.CreateForm(TfDetalhes, fDetalhes);
  Application.CreateForm(TfClientes, fClientes);
  Application.Run;
end.
