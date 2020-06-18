Program prPonteiro ;

var
	a : integer;
	p : ^integer;   //ponteiro

Begin
	a := 8;
	new(p);   //alocando espaco para armazenar um inteiro
	writeln('Valor de a: ', a);	
	writeln('Endereco de a: ', @a);
	writeln('Valor apontado por p: ', p);
	p^:= a;
	a := 2 * p^;
	writeln('Valor de a agora: ', a);
	writeln('Valor apontado por p: ', p^);
	dispose (p);
	readln;  
End.