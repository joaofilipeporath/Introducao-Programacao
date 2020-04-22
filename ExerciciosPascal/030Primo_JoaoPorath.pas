program numero_primo;
uses crt;

var 
number, i: integer;
verificator: boolean;

Begin    
		write('Numero: ');
	  readln(number);
		while (number <> 0) do		
		begin			
	    verificator := true;
	    for i := 2 to (number-1) do    
	        if (number mod i = 0) then         
	            verificator := false;   
	    if (verificator = false) then   
	        writeln('O numero ', number, ' nao eh primo.')    
	    else  
	        writeln('O numero ', number, ' eh primo.');
	  	write('Numero: ');
	  	readln(number);
	  end;    
End.