Program Idade ;
uses crt;

var
	ano_nascimento: integer;

const
	ano_atual = 2020;   (* não precisa declarar o tipo e usa-se o sinal = e não := *)
		
Begin
  writeln ('Insira o ano de nacimento: ');
  readln (ano_nascimento);
  writeln ('Você tem ',(ano_atual)-(ano_nascimento),' anos de idade!');
  readln;
End.