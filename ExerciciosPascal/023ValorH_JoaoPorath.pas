program valorH;

uses crt;

var

h : real;
i, j : integer;

begin
    h:=0;
		j:=1;
    for i:=1 to 50 do
        begin
        h:= h + j/i;
        j:=j+2;
        end;
writeln('Valor de H = ', h:2:2);
readln;
end.