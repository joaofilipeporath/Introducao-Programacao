Program Ano_Bissexto ;
Uses crt;

var
	ano, resto: integer;
	
Begin
	writeln('Informe o ano:');
	readln(ano);
	resto:= (ano)mod(4);
	if resto > 0 then
		writeln ('O ano n�o � bissexto!!!')
	else
		writeln ('O ano � bissexto!!!');  
End.