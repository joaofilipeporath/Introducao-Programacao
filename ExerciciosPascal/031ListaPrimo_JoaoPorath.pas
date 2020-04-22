program numero_primo;
uses crt;

var 
initial, final, i, j, count: integer;
verificator: boolean;

Begin    
    write('Intervalo inicial: ');
    readln(initial);    
    while (initial <> 0) do		
    begin
        write('Intervalo final: ');
        readln(final);       
        count := 0;
				for i := initial to final do        
				begin
						verificator := true;    
            for j:= 2 to (i-1) do
                if (i mod j = 0) then                    
									verificator := false;					                       
        
            if ((verificator = true) and (i <> 1)) then   
                begin
									count := count + 1;
									writeln(i);
								end;           
        end;
        writeln('Quantidade de numeros primos no intervalo: ', count);
        write('Intervalo inicial: ');
        readln(initial);
    end;    
End.