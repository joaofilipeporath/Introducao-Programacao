Program ValorK ;

var
k : real;
i, j, m : integer;

Begin
k := 0;	//valor da expressao matemática
j := 0;	//contador de 3 em 3
m := 1; //modificador de sinal

for i := 1 to 10 do
	begin
		if j < 3 then
			begin 				
				j := j + 1;
			end				
		else
			begin
				m := -1 * m;
				j := 1;
			end;		
		k := k + (m) * i; // simplificando a fórmula (i / i * 1 ) = i	
	  writeln(m * i * i,'/',i,' = ',m * i,' ________ K acumulado = ',k:2:2);
	end;
	writeln();
	writeln('Valor de K:', k:2:2);
	readln;   
End.