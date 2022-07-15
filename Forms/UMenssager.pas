unit UMenssager;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage;

type
  TformMensagens = class(TForm)
    pnlMensagens: TPanel;
    ShapeMensagens: TShape;
    Panel8: TPanel;
    lbTitle: TLabel;
    ImgIcon: TImage;
    lbSubtitle: TLabel;
    lbFooter: TLabel;
    pnlButton: TPanel;
    btnNao: TPanel;
    btNao: TSpeedButton;
    btnSim: TPanel;
    btSim: TSpeedButton;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btNaoClick(Sender: TObject);
    procedure btSimClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
  sTituloJanela, sTituloMSG, sMSG, sCaminhoIcone, sTipo : string;
   bRespostaMSG : Boolean;
    { Public declarations }
  end;

var
  formMensagens: TformMensagens;

implementation

{$R *.dfm}

procedure TformMensagens.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := cafree;
end;

procedure TformMensagens.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = VK_RETURN then
    btSimClick(Self)
    else
    if key = VK_RETURN then
    btNaoClick(Self);
end;

procedure TformMensagens.btSimClick(Sender: TObject);
begin
bRespostaMSG := true;
close;
end;

procedure TformMensagens.btNaoClick(Sender: TObject);
begin
  bRespostaMSG := False;
close;
end;


procedure TformMensagens.FormShow(Sender: TObject);
begin
   bRespostaMSG := False;

   lbTitle.Caption    := sTituloJanela;
   lbSubtitle.Caption := sTituloMSG;
   lbFooter.Caption   := sMSG;
   ImgIcon.Picture.LoadFromFile(sCaminhoIcone);

    if sTipo = 'OK' then
    begin
          btnNao.Visible := False;
    btnSim.Caption  := 'OK(ENTER)'
    end;

end;

end.
