unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, UConfigServer, UAgendamento;

type
  TFormPrincipal = class(TForm)
    pnlFundo: TPanel;
    lbtTitle: TLabel;
    lbUser: TLabel;
    pnltop: TPanel;
    PnlLogoCliente: TPanel;
    logoTop: TImage;
    logoPrincipal: TImage;
    pnlButton: TPanel;
    lbFooter: TLabel;
    Panel10: TPanel;
    pnclose: TPanel;
    Spclose: TSpeedButton;
    pnlBotoes: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Panel4: TPanel;
    Image4: TImage;
    Panel6: TPanel;
    SpeedButton3: TSpeedButton;
    Panel7: TPanel;
    SpeedButton4: TSpeedButton;
    Panel9: TPanel;
    SpeedButton5: TSpeedButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure SpcloseClick(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

uses UFuncoes;

procedure TFormPrincipal.Button1Click(Sender: TObject);
begin

   fnc_criar_mensage('CONFIRMAÇÃO',
                     'Tem certeza que deseja Continuar ?',
                     'Deseja inserir esses dados?',
                     ExtractFilePath(Application.ExeName) + '\icones\alert.png',
                     'CONFIRMA')
end;

procedure TFormPrincipal.FormActivate(Sender: TObject);
begin
       pnlFundo.top := Round( (FormPrincipal.Height - pnlFundo.Height)/2);
  pnlFundo.Left := Round( (FormPrincipal.Width - pnlFundo.Width)/2);
end;

procedure TFormPrincipal.FormCreate(Sender: TObject);
begin

  logoPrincipal.Align := AlClient;
  //defini o tamanho da imagem ao componente
  logoPrincipal.Stretch := True;

end;

procedure TFormPrincipal.Image2Click(Sender: TObject);
begin
Application.Terminate
end;

procedure TFormPrincipal.Image4Click(Sender: TObject);
begin


  FormAgendamento         := TFormAgendamento.Create(self);
  FormAgendamento.Parent  := PnlLogoCliente;

  FormAgendamento.Show;

    pnlBotoes.Enabled       := False;
end;
procedure TFormPrincipal.SpcloseClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFormPrincipal.SpeedButton5Click(Sender: TObject);
begin
try
  formConfigServer := TformConfigServer.Create(self);
  formConfigServer.ShowModal;
finally
  FreeAndNil(formConfigServer);
end


end;

end.
