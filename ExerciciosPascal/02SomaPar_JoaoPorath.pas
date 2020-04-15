Program SomaPares ;

var

i, soma : integer;

Begin

	soma := 0;
	for i := 1 to 1000 do
		begin
			if (i mod 2 = 0) then
				begin
					soma := soma + i;
					writeln(i);
				end;	
		end; 	
	 writeln('Soma dos numeros pares de 1 a ',i,' = ', soma);
	 readln;
End.