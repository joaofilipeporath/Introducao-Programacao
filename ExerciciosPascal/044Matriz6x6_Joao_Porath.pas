//Considere uma matriz quadrada de inteiros de ordem 6. Crie um programa  que carregue a matriz e resolva as
//seguintes questões:
//a) a soma dos elementos da diagonal principal da matriz;
//b) o menor valor par da matriz;
//c) Mostrar os números primos da matriz;
//d) uma nova matriz da mesma ordem, porém transposta.

Program prMatriz6x6;

Type
TMatriz6x6 = array[1..6, 1..6] of integer;

Var
matriz, matriz_transposta : Tmatriz6x6;
i, j, k, soma, menor_par : integer;
par, verificador : boolean;

Begin
//ENTRADA MATRIZ
    for i := 1 to 6 do
        for j := 1 to 6 do
            begin
                write('Elemento [', i, '][', j, ']: ');
                readln(matriz[i, j]);
            end;    

//mostrar a matriz
    writeln('-------------------------');
    for i := 1 to 6 do
        begin
            for j := 1 to 6 do
            begin
                write(matriz[i,j]:2:2, ' ');
            end;
            writeln('');
        end;

//a) a soma dos elementos da diagonal principal da matriz;
    writeln('-------------------------');
    soma := 0;
    for i := 1 to 6 do
        for j := 1 to 6 do
            if (i = j) then
                soma := soma + matriz[i, j];
    writeln('A soma dos elementos da Diagonal Principal = ', soma);

//b) o menor valor par da matriz;
    writeln('-------------------------');
    par :=  false;
    for i := 1 to 6 do
        for j := 1 to 6 do
            if (matriz[i, j] mod 2 = 0) then
                begin
                    par := true;
                    menor_par := matriz[i,j];
                    break;
                end;

    if (par = true) then
        begin
            menor_par := matriz[i,j];
            for i := 1 to 6 do
                for j := 1 to 6 do
                    if (matriz[i, j] mod 2 = 0) and (matriz[i,j] < menor_par) then
                        menor_par := matriz[i,j];
            writeln('Menor valor par da matriz = ', menor_par);
        end
    else
    writeln('Nao ha valor par na matriz!!!');

//c) Mostrar os números primos da matriz;
    writeln('-------------------------');
    writeln('Numeros Primos da Matriz:');
    for i := 1 to 6 do
        for j := 1 to 6 do
            begin
                verificador := true;
                if (matriz[i,j] = 1) then
                    verificador := false
                else
                begin
                    for k := 2 to (matriz[i, j] - 1) do
                        if (matriz[i,j] mod k = 0) then
                            begin
                                verificador:= false;
                                break;
                            end;
            end;
            if (verificador = true) then
                writeln(matriz[i,j]);
            end;

//d) uma nova matriz da mesma ordem, porém transposta.
    for i := 1 to 6 do
        for j := 1 to 6 do
            begin
                matriz_transposta[i,j] := matriz [j, i];
            end;

//mostrar a matriz
    writeln('-------------------------');
    for i := 1 to 6 do
        begin
            for j := 1 to 6 do            
                    write(matriz_transposta[i,j]:2:2, ' ');            
            writeln('');
        end;
End.