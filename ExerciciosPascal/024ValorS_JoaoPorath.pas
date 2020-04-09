Program ValorS ;

var
s: real;
i: integer;

Begin
	s:=0;
	for i:=1 to 10 do
		begin
			if (i mod 2 <> 0) then
				begin
					s:= s + i/(i*i);
					writeln('+ ',i,'/',i*i,' = ', i/(i*i):2:2);
				end
				else
				begin
					s:= s - i/(i*i);
					writeln('- ',i,'/',i*i,' = ', i/(i*i):2:2);
				end;				
		end;	  
writeln('---------------');
writeln('S = ', s:2:2);
writeln('---------------');
End.