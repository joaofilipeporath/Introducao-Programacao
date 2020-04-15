Program ValorY ;

uses crt;

var

y : real;
x, i, j : integer;

begin
    y:=0; //valor soma                
    x:=0; //contador de 2 em 2 para inversao de sinal                                             
		j:=1; //numerador		
    for i:=1 to 50 do   //contador serve como denominador tb
      begin
				case x of				
				0..1:	begin
								y:= y + j/i;
				        writeln('+',j,'/',i,' = ', j/i:2:2, ' --> acumulado = ', y:2:2);								
				        x:=x+1;
		        	end;		    
		    2:		begin
				    	  y:= y - j/i;
				        writeln('-',j,'/',i,' = ', -j/i:2:2, ' --> acumulado = ', y:2:2);								
								x:=x+1;				        
							end
				else
							begin
				    	  y:= y - j/i;
				        writeln('-',j,'/',i,' = ', -j/i:2:2, ' --> acumulado = ', y:2:2);								
				        x:= 0;
							end						
			 	end;
				j:=j+2;        
	     end;
writeln('Valor de Y = ', y:2:2);  //resultado final
readln;
end.