program prConjunto10;
uses crt;
type TConjuntoInt = array[1..10] of integer;

var
vetor: TConjuntoInt;
i, maior, menor: integer;

Begin
    for i := 1 to 10 do
    begin
        write('Informe o ', i,'º numero: ');
        readln(vetor[i]);
    end;

    maior:= vetor[1];
    menor:= vetor[1];
    for i := 2 to 10 do
    begin
        if vetor[i] > maior then
            maior := vetor [i];
        if vetor[i] < menor then
            menor := vetor [i];        
    end;
    writeln('Maior valor: ', maior);
    writeln('Menor valor: ', menor);
    readln();
end.