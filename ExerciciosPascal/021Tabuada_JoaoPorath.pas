program tabuada;

var
n, i, x, y : integer;

begin
    
    write ('Insira a tabuada:');
    readln (n);
    
		while (n<>0) do
        begin
            
            write ('Insira intervalo inicial:');
            readln (x);
            write ('Insira intervalo final:');
            readln (y);        
            for i:= x to y do
                writeln(n,' x ', i, ' = ', n * i);
            write ('Insira a tabuada:');
            readln (n);
        end;
end.