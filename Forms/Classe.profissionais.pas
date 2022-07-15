unit Classe.profissionais;

interface

uses
  FireDAC.Comp.Client;

type
 TProfissionais = class

 private
   Fconexao           : TFDConnection;
   Fid_proficional   : integer;
   Fds_profisional   : string;
   Fds_especialidade : string;
   Fnr_contato       : string;

 public

   property conexao           : TFDConnection read Fconexao write Fconexao ;
   property id_proficional   : integer read Fid_proficional write Fid_proficional ;
   property  ds_profisional   : string read Fds_profisional write Fds_profisional ;
   property  ds_especialidade : string read Fds_especialidade write Fds_especialidade ;
   property  nr_contato       : string read Fnr_contato write Fnr_contato ;

    constructor create (conexao : TFDConnection)  ;
    destructor destroy ; override;

    function fnc_inserir_alterar (TopoOperacao: String; out Erro: String ): boolean;
    procedure prc_deleta ( id_chave: integer ) ;
    function fnc_consulta (texto: String ): tfdQuery ;

 end;

 var
   QRYConsulta :  tfdQuery;

implementation

{ TProfissionais }

uses UFuncoes, System.SysUtils, Vcl.Forms, UDados;

constructor TProfissionais.create(conexao: TFDConnection);
begin
  Fconexao := conexao;

  QRYConsulta :=  tfdQuery.Create(nil);
  QRYConsulta.Connection :=  Fconexao;
end;

destructor TProfissionais.destroy;
begin
    QRYConsulta.Destroy;
  inherited;
end;

function TProfissionais.fnc_consulta(texto: String): tfdQuery;

begin
 try
 Fconexao.Connected := false;
      Fconexao.Connected := true;

      QRYConsulta.Close;
      QRYConsulta.SQL.Clear;
      QRYConsulta.SQL.add('SELECT id_proficional, ds_proficional, id_especialidade, nr_contato ');
      QRYConsulta.SQL.add(' from profissionais where ds_proficional like:p_texto');
      QRYConsulta.ParamByName('p_texto').AsString := '%'+texto+'%';
      QRYConsulta.Open;
  finally
     Result := QRYConsulta;
  end;

 end;

function TProfissionais.fnc_inserir_alterar(TopoOperacao: String;
  out Erro: String): boolean;
  var
  QRYInserir : TFDQuery;
  begin
    try

      try
        Fconexao.Connected := false;
        Fconexao.Connected := true;

        QRYInserir :=  tfdQuery.Create(nil);
        QRYInserir.Connection :=  Fconexao;

        Fconexao.Connected := false;
        Fconexao.Connected := true;

        QRYConsulta.Close;
        QRYConsulta.SQL.Clear;

        if TopoOperacao = 'INSERIRI' then
            BEGIN
              QRYConsulta.SQL.add('insert intro profissionais ( id_proficional,  ');
              QRYConsulta.SQL.add(' ds_proficional, id_especialidade, nr_contato) ');
              QRYConsulta.SQL.add(' values (:p_id_profissional, :p_ds_proficional, )ds_proficional,');
              QRYConsulta.SQL.add(' :p_id_especialidade, :p_nr_contato) ');
            // QRYConsulta.ParamByName('p_id_profissional').AsInteger :=   fnc_proximo_codigo();
             END else

            begin
              QRYInserir.SQL.add('update profissionais set');
              QRYInserir.SQL.add('ds_proficional   := :p_ds_proficional');
              QRYInserir.SQL.add('id_especialidade := :p_id_especialidade');
              QRYInserir.SQL.add(' nr_contato      := :p_ nr_contato');
              QRYInserir.SQL.add('id_profissional  := :p_id_profissional');

              QRYInserir.ParamByName('p_id_profissional').AsInteger := Fid_proficional;
            end;

         //  QRYConsulta.ParamByName('p_texto').AsString := '%'+texto+'%';
            QRYInserir.ParamByName('p_ds_proficional').AsString   := Fds_profisional;
            QRYInserir.ParamByName('p_id_especialidade').AsString := Fds_profisional;
            QRYInserir.ParamByName('p_nr_contato').AsString       :=  Fnr_contato;
            QRYConsulta.ExecSQL;


        Result :=  true;

          except
          on E: Exception  do
           begin
            Erro := E.message;
            result :=  false;
           end;

      end;
    finally

    end;
  end;


procedure TProfissionais.prc_deleta(id_chave: integer);
begin
if

   fnc_criar_mensage('CONFIRMAÇÃO',
                     'Tem certeza que deseja Continuar ?',
                     'Deseja inserir esses dados?',
                     ExtractFilePath(Application.ExeName) + '\icones\alert.png',
                     'CONFIRMA') then
    begin
      Fconexao.Connected := false;
      Fconexao.Connected := true;

      Fconexao.ExecSQL('Delete from profissionais where id_proficional := id_chave', [id_chave]);

    end;

end;

end.
