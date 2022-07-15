unit UnitLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons;

type
  TULogin = class(TForm)
    pnlFundo: TPanel;
    PnlLateral: TPanel;
    lbTitlef: TLabel;
    lblogo: TLabel;
    lbFooter: TLabel;
    lbVersion: TLabel;
    imgLogo: TImage;
    lbTitle: TLabel;
    pnlUser: TPanel;
    lbUser: TLabel;
    EditUser: TEdit;
    PnUser: TPanel;
    password: TPanel;
    Lbpassword: TLabel;
    Editpassword: TEdit;
    pnpassword: TPanel;
    btConfirm: TPanel;
    SpConfirm: TSpeedButton;
    pnclose: TPanel;
    Spclose: TSpeedButton;
    procedure SpcloseClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SpConfirmClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ULogin: TULogin;

implementation

{$R *.dfm}

procedure TULogin.FormActivate(Sender: TObject);
begin
  pnlFundo.Left := Round( (ULogin.Width - pnlFundo.Width)/2);
   pnlFundo.top := Round( (ULogin.Height - pnlFundo.Height)/2);
end;

procedure TULogin.FormCreate(Sender: TObject);
begin
  //imgLogo.Align := AlClient;
  //defini o tamanho da imagem ao componente
  //imgLogo.Stretch := True;
end;

procedure TULogin.SpcloseClick(Sender: TObject);
begin
Application.Terminate;
end;

procedure TULogin.SpConfirmClick(Sender: TObject);
begin
{
begin
if ( EditUser.Text = '1234')and (Editpassword.Text = '1234')  then
close
 else
 ShowMessage('usuario incoreto');

end;
    }
    close;
end;

end.
