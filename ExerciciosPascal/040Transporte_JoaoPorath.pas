program prTransporte;
uses crt;

type
    TVeiculo = record
        placa: string[7];
        ano: integer;
        motor,
        chassi: string[17];
        cor: string[15];
        montadora: string[30];
    end;

    TListaVeiculos = array[1..100] of TVeiculo;

var
    listaVeiculos: TListaVeiculos;
    cont, i, j, qtde: integer;
    repetir: char; 

Begin
    cont:= 0;   
    repeat
        inc(cont);
        writeln('--------------');
        writeln('VEICULO NUMERO: ', cont);
        write('Placa: ');
        readln(listaVeiculos[cont].placa); 
        write('Ano: ');
        readln(listaVeiculos[cont].ano);
        write('Motor: ');
        readln(listaVeiculos[cont].motor);
        write('Chassi: ');
        readln(listaVeiculos[cont].chassi);
        write('Cor: ');
        readln(listaVeiculos[cont].cor);
        write('Montadora: ');
        readln(listaVeiculos[cont].montadora);
        writeln('--------------');
        write('Cadastrar novo veiculo? (S/N) ');
        readln(repetir);
    until (upcase(repetir) = 'N');
    writeln('--------------');
    writeln('A quantidade de veiculos existente na cidade: ', cont);
    qtde := 0;
    for i := 1 to cont do        
        if (2020 - listaVeiculos[i].ano > 10) then
                inc(qtde);
    writeln('A quantidade de veiculos com mais de dez anos de circulacao: ', qtde);

    qtde := 0;
    for i := 1 to cont do        
        if (2020 - listaVeiculos[i].ano > 20) then
                inc(qtde);
    writeln('A quantidade de veiculos com mais de vinte anos de circulacao: ', qtde);

    qtde := 0;
    for i := 1 to cont do        
        if (2020 - listaVeiculos[i].ano < 5) then
                inc(qtde);
    writeln('O percentual de veiculos com menos de cinco anos de circulacao: ', qtde/cont);

    qtde := 0;
    for i := 1 to cont do        
        if  (listaVeiculos[i].motor = '1.0') and
            (listaVeiculos[i].ano > 2000) and
            (upcase(listaVeiculos[i].cor) = 'BRANCA') then
                inc(qtde);
    writeln('O percentual de veiculos com motor 1.0 cujo ano seja superior 2000 e a cor seja branca: ', qtde/cont);
    writeln('--------------');
    writeln('VEICULOS CUJA PLACA INICIA COM VOGAL E TERMINA COM NUMERO IMPAR:');
    for i := 1 to cont do        
        if  ((upcase(listaVeiculos[i].placa[1]) = 'A') or
        		(upcase(listaVeiculos[i].placa[1]) = 'E') or
        		(upcase(listaVeiculos[i].placa[1]) = 'I') or
        		(upcase(listaVeiculos[i].placa[1]) = 'O') or
        		(upcase(listaVeiculos[i].placa[1]) = 'U')) and
            ((ord(listaVeiculos[i].placa[7]) - 48) mod 2 <> 0) then
                begin
                    writeln(' ');
										writeln('    VEICULO NUMERO: ', i);
                    writeln('    - PLACA: ',listaVeiculos[i].placa);
                    writeln('    - ANO: ',listaVeiculos[i].ano);
                    writeln('    - MOTOR: ', listaVeiculos[i].motor);
                    writeln('    - CHASSI: ',listaVeiculos[i].chassi);
                    writeln('    - COR: ',listaVeiculos[i].cor);
                    writeln('    - MONTADORA: ',listaVeiculos[i].montadora);                        
                end;
    readln();
End.