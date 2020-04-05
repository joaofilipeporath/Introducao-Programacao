//2.1. Dado um número, informe se ele é par. //

Program Par_impar ;
uses crt;

var
 num, resto : integer;
 
Begin
  writeln ('INSIRA UM NÚMERO: ');
	readln (num);
	resto := (num)mod(2);
	if resto = 0 then
  	writeln ('O número ',num,' é par!')
  else
  	writeln ('O número ',num,' é ímpar!');
 	readln;  
End.