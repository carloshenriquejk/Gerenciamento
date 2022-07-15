program agendaSWH;

uses
  Vcl.Forms,
  UPrincipal in 'Fontes\UPrincipal.pas' {FormPrincipal},
  UDados in 'Fontes\UDados.pas' {FormDados: TDataModule},
  UnitLogin in 'Fontes\UnitLogin.pas' {ULogin},
  UConfigServer in 'Fontes\UConfigServer.pas' {formConfigServer},
  UMenssager in 'Fontes\UMenssager.pas' {formMensagens},
  UFuncoes in 'Fontes\UFuncoes.pas',
  Classe.conexao in 'Fontes\Classe.conexao.pas',
  System.SysUtils,
  UAgendamento in 'Fontes\UAgendamento.pas' {FormAgendamento},
  UProfissionais in 'Fontes\UProfissionais.pas' {FormProfissional},
  Classe.profissionais in 'Fontes\Classe.profissionais.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormDados, FormDados);

  ULogin := TULogin.Create(nil);
   ULogin.ShowModal;

   Application.CreateForm(TFormPrincipal, FormPrincipal);

   ULogin.Hide;
   ULogin.Free;

  Application.Run;




end.
