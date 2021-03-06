unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  JvExControls, JvXPCore, JvXPButtons, Vcl.StdCtrls;

type
  TfPrincipal = class(TForm)
    Image1: TImage;
    BtnPrinc: TJvXPButton;
    JvXPButton1: TJvXPButton;
    JvXPButton2: TJvXPButton;
    JvXPButton3: TJvXPButton;
    CkRAM: TCheckBox;
    procedure JvXPButton1Click(Sender: TObject);
    procedure BtnPrincClick(Sender: TObject);
    procedure JvXPButton2Click(Sender: TObject);
    procedure JvXPButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPrincipal: TfPrincipal;

implementation

{$R *.dfm}

uses uDetalhes, uClientes, uDM, uDetalhes2, uDetalhes3;

procedure TfPrincipal.BtnPrincClick(Sender: TObject);
begin
  Application.CreateForm(TfClientes, fClientes);
  if CkRAM.Checked then
    vDadosRAM := 1
   else
    vDadosRAM := 0;
  try
    fClientes.ShowModal;
  finally
    FreeAndNil(fClientes);
  end;
end;

procedure TfPrincipal.JvXPButton1Click(Sender: TObject);
begin
  Application.CreateForm(TfDetalhes, fDetalhes);
  try
    fDetalhes.ShowModal;
  finally
    FreeAndNil(fDetalhes);
  end;
end;

procedure TfPrincipal.JvXPButton2Click(Sender: TObject);
begin
  Application.CreateForm(TfDetalhes2, fDetalhes2);
  try
    fDetalhes2.ShowModal;
  finally
    FreeAndNil(fDetalhes2);
  end;
end;

procedure TfPrincipal.JvXPButton3Click(Sender: TObject);
begin
  Application.CreateForm(TfDetalhes3, fDetalhes3);
  try
    fDetalhes3.ShowModal;
  finally
    FreeAndNil(fDetalhes3);
  end;
end;

end.
