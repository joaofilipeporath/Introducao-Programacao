Program ValorK2 ;

var
k : real;
i, rodizio : integer;

Begin
k := 0;	//valor da expressao matemática
rodizio := 0;	//contador de 3 em 3

for i := 1 to 10 do
	begin
		if rodizio < 3 then
			begin 				
				k := k + i; // simplificando a fórmula (i / i * 1 ) = i
				writeln(i * i,'/',i,' = ', i,' ________ K acumulado = ',k:2:2);
			end				
		else
			begin
				k := k - i; // simplificando a fórmula (i / i * 1 ) = i
				writeln(-i * i,'/',i,' = ', -i,' ________ K acumulado = ',k:2:2);
			end;
		
		rodizio := rodizio + 1;
		
		if rodizio = 6 then
			begin
				rodizio := 0;
			end;	  
	end;
	writeln();
	writeln('Valor de K:', k:2:2);
	readln;   
End.