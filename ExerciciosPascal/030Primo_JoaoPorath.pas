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
	    if ((verificator = false) or (number = 1)) then   
	        writeln(number, ' nao eh um numero primo.')    
	    else  
	        writeln(number, ' eh um numero primo.');
	  	write('Numero: ');
	  	readln(number);
    end;    
End.