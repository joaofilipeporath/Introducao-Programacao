Program prMaiorMenor ;
uses crt;

var
menor, maior, num: integer;

Begin
  //maior:= 0;
  //menor:= 999999999; //nove noves = maior inteiro no pascal
  
  writeln('Digite um valor inteiro e positivo ou zero para finalizar: ');
  readln(num);
  maior := num;
  menor := num;
  while (num>0) do
  begin    
    if (num > maior) then
    maior:=num
    else
    if (num < menor) then
    menor:= num;
    writeln('Digite um valor inteiro e positivo ou zero para finalizar: ');
    readln(num);
  end;
  writeln('O maior número eh igual a: ', maior);
  writeln('O menor número eh igual a: ', menor);
End.