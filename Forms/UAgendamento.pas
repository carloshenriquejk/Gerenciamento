unit UAgendamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.DBCtrls, swhDBEdit1, Vcl.Mask, SWHMaskedit, Vcl.Imaging.pngimage,
  UMenssager;

type
  TFormAgendamento = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    ComboBox1: TComboBox;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    SpeedButton2: TSpeedButton;
    SWHMaskEdit11: TSWHMaskEdit1;
    SWHMaskEdit12: TSWHMaskEdit1;
    Label2: TLabel;
    Edit1: TEdit;
    Edit4: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    SWHMaskEdit13: TSWHMaskEdit1;
    SWHMaskEdit14: TSWHMaskEdit1;
    Label6: TLabel;
    SpeedButton4: TSpeedButton;
    Panel5: TPanel;
    btConfirm: TPanel;
    SpConfirm: TSpeedButton;
    Panel6: TPanel;
    SpeedButton3: TSpeedButton;
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpConfirmClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAgendamento: TFormAgendamento;

implementation

{$R *.dfm}

uses UPrincipal, UProfissionais, UFuncoes;

procedure TFormAgendamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FormPrincipal.pnlBotoes.Enabled       := True;
 Action := cafree;
end;

procedure TFormAgendamento.SpConfirmClick(Sender: TObject);
begin
   fnc_criar_mensage('CONFIRMAÇÃO',
                     'Tem certeza que deseja Continuar ?',
                     'Deseja inserir esses dados?',
                     ExtractFilePath(Application.ExeName) + '\icones\alert.png',
                     'CONFIRMA')
end;

procedure TFormAgendamento.SpeedButton1Click(Sender: TObject);
begin

 try
     FormProfissional := TFormProfissional.Create(self);
     FormProfissional.ShowModal;
 finally
   FormProfissional.Free;
 end;

//Application.CreateForm(TFormProfissional, FormProfissional);
end;

procedure TFormAgendamento.SpeedButton3Click(Sender: TObject);
begin
close;
end;

end.
