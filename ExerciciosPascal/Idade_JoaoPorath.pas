Program Idade ;
uses crt;

var
	ano_nascimento: integer;

const
	ano_atual = 2020;   (* n�o precisa declarar o tipo e usa-se o sinal = e n�o := *)
		
Begin
  writeln ('Insira o ano de nacimento: ');
  readln (ano_nascimento);
  writeln ('Voc� tem ',(ano_atual)-(ano_nascimento),' anos de idade!');
  readln;
End.