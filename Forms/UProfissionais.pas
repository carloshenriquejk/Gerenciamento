unit UProfissionais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.Mask, SWHMaskedit,
  Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls,
  Vcl.ComCtrls;

type
  TFormProfissional = class(TForm)
    PnlMain: TPanel;
    lbNome: TLabel;
    lbTel: TLabel;
    pnlButtons: TPanel;
    btConfirm: TPanel;
    SpConfirm: TSpeedButton;
    Panel6: TPanel;
    SpeedButton3: TSpeedButton;
    lbEspeciamlidade: TLabel;
    pnltop: TPanel;
    lbtTitle: TLabel;
    DSprofisionais: TDataSource;
    DBGrid1: TDBGrid;
    edNome: TDBEdit;
    edEspecialidade: TDBEdit;
    editTel: TDBEdit;
    Panel5: TPanel;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    Panel2: TPanel;
    SpeedButton2: TSpeedButton;
    Panel3: TPanel;
    SpeedButton4: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProfissional: TFormProfissional;

implementation

{$R *.dfm}

uses UDados;

procedure TFormProfissional.SpeedButton1Click(Sender: TObject);
begin
UDados.FormDados.Profisionais.Append;

//UDados.FormDados.Profisionaisid_proficional.Value   ; AsString +1;

if edNome.Canfocus then
   edNome.SetFocus
else
    edEspecialidade.SetFocus;
end;

procedure TFormProfissional.SpeedButton2Click(Sender: TObject);
begin
UDados.FormDados.Profisionais.Cancel;
end;

end.
