unit Classe.conexao;

interface

uses
  FireDAC.Comp.Client, FireDAC.Stan.Intf;


   type
    Tconexao = class
   private

    FServidor: string;
    FMsgErro: string;
    FSenha: string;
    FBase: string;
    FLogin: string;
    FPorta: string;
    Fconexao: TFDConnection;

     public
     constructor crete (NomeConexao : TFDConnection);
     destructor Destroy; override;

     function fnc_conectar_banco_dados : Boolean;

     property Conexao  :TFDConnection Read Fconexao write Fconexao;
     property Servidor : string Read FServidor Write FServidor;
     property Base     : string Read FBase Write FBase;
     property Login    : string Read FLogin Write FLogin;
     property Senha    : string Read FSenha Write FSenha;
     property Porta    : string Read FPorta Write FPorta;
     property MsgErro  : string Read FMsgErro Write FMsgErro;
   end;
implementation

uses
  System.SysUtils;


constructor Tconexao.crete(NomeConexao: TFDConnection);
begin
Fconexao := NomeConexao;
end;

destructor Tconexao.destroy;

begin
   Fconexao.Connected := false;
  inherited;
end;

function Tconexao.fnc_conectar_banco_dados: Boolean;
begin
  Result := True;

    Fconexao.Params.Clear;

    Fconexao.Params.Add('Server=' + FServidor);
    Fconexao.Params.Add('user_name=' + FLogin);
        Fconexao.Params.Add('password=' + FSenha);
           Fconexao.Params.Add('port=' + FPorta);
               Fconexao.Params.Add('Database=' + FBase);
                   Fconexao.Params.Add('DriverID=' + 'MYQL');

   try
    Fconexao.Connected := True;
   except
     on e: Exception do
     begin
      FMsgErro := e.Message;
      Result   := False;
     end;
   end;
  end;
end.
