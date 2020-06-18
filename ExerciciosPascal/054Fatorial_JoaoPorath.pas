Program prCallStack ;

function fact (n : integer) : integer;
begin
	if (n = 1) then
		fact := 1
	else
		fact := n * fact(n-1);			
end;


Begin
	writeln(fact(3));  
End.