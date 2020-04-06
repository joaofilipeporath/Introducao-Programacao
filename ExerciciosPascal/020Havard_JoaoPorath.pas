//Harvard-MIT Math Tournament 2018/2019 
//Compute the smallest positive integer n for which 
//√(100 + √n) + √(100 - √n) is an integer.

program Havard;
uses crt;

var
a, b : real;
c, n : integer;

begin
  for n:=1 to 10000 do
  begin
    a:= sqrt(100+sqrt(n));
    b:= sqrt(100-sqrt(n));
    c:= round(a+b);
    if ((a+b)=c) then
    begin
      writeln(a);
      writeln(b);
      writeln(c);
      writeln('');
      writeln(n);
      break;
    end;
  end;
  readln();
end.

