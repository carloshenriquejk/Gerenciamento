unit UDados;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQLDef,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Phys.MySQL, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TFormDados = class(TDataModule)
    FDConnection: TFDConnection;
    MySQLDriver: TFDPhysMySQLDriverLink;
    FDGUIxWaitCursor: TFDGUIxWaitCursor;
    ProfisionaisDS: TDataSource;
    Profisionais: TFDTable;
    Profisionaisid_proficional: TIntegerField;
    Profisionaisds_profisional: TStringField;
    Profisionaisds_especialidade: TStringField;
    Profisionaisnr_contato: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private

    { Private declarations }
  public
    // Conexao : Tconexao;
    { Public declarations }
  end;

var
  FormDados: TFormDados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}



{$R *.dfm}

procedure TFormDados.DataModuleCreate(Sender: TObject);
begin
  //Conexao := Tconexao.Create(FDConection);
end;

procedure TFormDados.DataModuleDestroy(Sender: TObject);
begin
 // conexao.Destroy;
end;

end.
