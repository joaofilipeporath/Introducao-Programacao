Program Pzim ;
//variaveis
var
salario: real;

const
//parametros
Faixa_1 = 1000;
A = 193.56; 
Faixa_2 = 2000;
B = 174.34;
C = 127.89;

Begin
  //entrada
	write('Salario: R$ ');
  readln(salario);
  //processamento e saida
	if (salario <= faixa_1) then
  	writeln('Percentual de aumento = ', (A/salario)*100 :2:2,'%')
  else
  	if (salario <= faixa_2) then
  		writeln('Percentual de aumento = ', (B/salario)*100 :2:2,'%')
  else
  	writeln('Percentual de aumento = ', (C/salario)*100 :2:2,'%');
End.