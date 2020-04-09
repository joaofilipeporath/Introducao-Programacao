Program Elementos ;

var
s: real;
i, n: integer;

Begin
	s:=0;
	n:=500;
	
	for i:=1 to 10 do
		if (i mod 2 <> 0) then
			begin
				s:= s + 2/n;
				writeln('+ 2/',n,' = ',2/n,' Acumulado = ',s);
				n:= n - 50;				
			end
			else
			begin
			  s:= s - 5/n;
				writeln('- 5/',n,' = ',5/n,' Acumulado = ',s);
				n:= n - 50;
			end;
writeln ('S = ',s); 
readln;  			 
End.