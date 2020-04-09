program FahrenheitCelsius;

uses crt;

var

f, c : integer;

begin
    for f:= 50 to 150 do
        writeln(f,'F equivale à', 5/9*(f-32):2:2, ' C');
    readln;
end.

