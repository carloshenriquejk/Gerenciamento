unit UConfigServer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls, swhDBEdit1,
  Vcl.WinXCtrls, UMenssager;

type
  TformConfigServer = class(TForm)
    Panel4: TPanel;
    ShapeFundo: TShape;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Panel5: TPanel;
    btConfirm: TPanel;
    SpConfirm: TSpeedButton;
    Panel6: TPanel;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    Label4: TLabel;
    Panel7: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    SWUDBEdit11: TSWUDBEdit1;
    SWUDBEdit12: TSWUDBEdit1;
    SWUDBEdit13: TSWUDBEdit1;
    SWUDBEdit14: TSWUDBEdit1;
    SWUDBEdit15: TSWUDBEdit1;
    Panel8: TPanel;
    procedure SpConfirmClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formConfigServer: TformConfigServer;

implementation

{$R *.dfm}

uses UFuncoes;

procedure TformConfigServer.SpConfirmClick(Sender: TObject);
begin
   fnc_criar_mensage('CONFIRMAÇÃO',
                     'Tem certeza que deseja Continuar ?',
                     'Deseja inserir esses dados?',
                     ExtractFilePath(Application.ExeName) + '\icones\aviso.png',
                     'CONFIRMA')
end;

procedure TformConfigServer.SpeedButton1Click(Sender: TObject);
begin
Close
end;

end.
