//2.1. Dado um n�mero, informe se ele � par. //

Program Par_impar ;
uses crt;

var
 num, resto : integer;
 
Begin
  writeln ('INSIRA UM N�MERO: ');
	readln (num);
	resto := (num)mod(2);
	if resto = 0 then
  	writeln ('O n�mero ',num,' � par!')
  else
  	writeln ('O n�mero ',num,' � �mpar!');
 	readln;  
End.