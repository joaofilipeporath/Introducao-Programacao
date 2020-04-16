Program ImparesIntervalo;

var
i, initial, final, count_Odd : integer ;

Begin
	write('Intervalo Inicial: ');
	readln(initial);
	
	while (initial <> 0) do
	begin		
		count_Odd := 0;
		write('Intervalo Final: ');
		readln(final);
		for i := initial to final do
			begin
				if (i mod 2 <> 0) then
					begin
						count_Odd := count_Odd + 1;	
					end;
			end;
		writeln('Quantidade de Numeros Impares = ',count_Odd);
		writeln('-----------------');
		write('Intervalo Inicial: ');
		readln(initial);
	end;
	writeln('-----------------');
	writeln('-      FIM      -');
	writeln('-----------------');  
End.