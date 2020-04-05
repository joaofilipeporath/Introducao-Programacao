Program Area_quadrado;
uses crt;

var
	lado, area: real;
	
Begin
  writeln('Insira o lado do quadrado: ');
  readln(lado);
  area = sqr(lado);
  writeln('Área = ', area);
End.