Program Media;
var
nota, soma: real;
i: integer; 

Begin
	  i := 0;
	  nota:= 0;
		repeat
			repeat
				write('Nota ', i + 1,': ');
				readln(nota);					
	    until ((nota >= 0) and (nota <= 10));
	    soma := soma + nota;
	    i := i + 1;
	  until ( i = 3);
	  soma := soma / i;
	  writeln('Media: ', soma:2:2);
	  readln();
End.