Program Impar ;
Var
numero: integer;

Begin
  numero:= 1;
  while (numero<>0) do
  begin
    writeln('Digite um número para saber se eh par ou impar. Digite zero [0] para sair:');
    readln(numero);
    if (numero = 0) then
    writeln ('FIM!')
    else if(numero mod 2 <> 0) then
    writeln (numero,' = IMPAR')
    else
    writeln (numero,' = PAR');
  end;
  readln();
End.