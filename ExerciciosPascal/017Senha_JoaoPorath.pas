Program Pzim ;
//variaveis
var
password: string;

//valor da senha
const
correct_pass = 'asdfg';

Begin
  while (password <> 'fim') and (password <> 'FIM') and (password <> correct_pass) do
  begin
    //entrada
    write('Insira a senha ou [FIM] para sair: ');
    readln(password);
    //processamento e saida
    if (password = 'FIM') or (password = 'fim') then
    writeln('FINALIZADO')
		else if (password = correct_pass) then
    writeln('Acesso Permitido')
    else
    writeln('Acesso Negado');
  end;
  readln();
End.