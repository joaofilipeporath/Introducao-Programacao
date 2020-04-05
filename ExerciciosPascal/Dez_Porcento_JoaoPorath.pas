Program mais10_perc;
uses crt;

var
	num: real;
	
const
	percentual = 1.1;

Begin
	write ('Insira qualquer valor: ');
	readln (num);
	writeln ('O valor + 10 porcento corresponde a: ', num*percentual :2:2);
	readln;
End.