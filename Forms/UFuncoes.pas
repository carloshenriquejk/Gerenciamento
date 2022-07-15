unit UFuncoes;

interface

uses   System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQLDef,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Phys.MySQL, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, UDados;

  // function fnc_proximo_codigo (Tabela, campo : String): Integer;
   function fnc_criar_mensage(TituloJanela, TituloMSG, MSG, Icone, Tipo : string): boolean;
implementation

uses UMenssager;

function fnc_criar_mensage(TituloJanela, TituloMSG, MSG, Icone, Tipo : string): boolean;
 begin
   Result := False;

   formMensagens := TformMensagens.Create(nil);
   formMensagens.sTituloJanela :=  TituloJanela;
   formMensagens.sTituloMSG    :=  TituloMSG;
   formMensagens.sMSG          :=  MSG;
   formMensagens.sCaminhoIcone :=  Icone;
   formMensagens.sTipo          := Tipo;

   formMensagens.ShowModal;

   Result := formMensagens.bRespostaMSG;
 end;
end.
{ function fnc_proximo_codigo (Tabela, campo : String): Integer;
var
QRYConsulta : TFDQuery;

 begin
   Result := 1;

       try
        formDados.FDConnection.Connected := false;
         formDados.FDConnection.Connected := true;

        QRYConsulta :=  tfdQuery.Create(nil);
        QRYConsulta.Connection := formDados.FDConnection;

         QRYConsulta.Close;
         QRYConsulta.SQL.Clear;
         QRYConsulta.SQL.add('SELECT MAX ('+CAMPO+')AS CODIGO FROM'+TABELA);
         QRYConsulta.open;

         if QRYConsulta.fildbyname('codigo').asstring <> '' then
            Result := QRYConsulta.fildbyname('codigo').asstring +1 ;

        finally
          QRYConsulta.destroy;
 end;
end;        }

function fnc_proximo_codig(tabela,campo : String) : String;
begin
   FDConnection.Active := False;
   SQLInclusao.SQL.Text:=  select max(codigo) as cod from clientes;
   SQLInclusao.Active := True; ;

   if SQLInclusao.Isempty then
      Result := ´1´
   else
      Result := InttoStr(SQLInclusao.fieldbyName(´cod´).asInteger + 1);
end;
