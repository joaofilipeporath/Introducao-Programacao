program estoque;
uses crt;
type
    Tastring = array[1..100] of string;
    Tareal = array[1..100] of real;
var
    prod : Tastring; 
    qtde, preco, total : Tareal;
    i, j, i_maior, i_menor : integer;
    maior_qtde, menor_preco, total_geral : real;
    
Begin
    i := 1;
    i_maior := 1;
    i_menor := 1;
    maior_qtde := 0;
    menor_preco := 99999999;
    write('Descricao: ');
    readln(prod[i]);
    while upcase(prod[i]) <> 'FIM' do
    begin        
		write('Quantidade: ');
        readln(qtde[i]);
        write('Preco: ');
        readln(preco[i]);
        total[i] := qtde[i] * preco[i];
        if (qtde[i] > maior_qtde) then
        begin
            maior_qtde := qtde[i];
            i_maior := i;
        end;
        if (preco[i] < menor_preco) then
        begin
            menor_preco := preco[i];
            i_menor := i;            
        end;
        inc(i);
			write('Descricao: ');
    		readln(prod[i]);    		
    end;
    
    for j := 1 to (i - 1) do
    begin
        writeln( prod[j], ' --> ', qtde[j]:2:2, ' x R$ ', preco[j]:2:2, ' = ', total[j]:2:2);
    end;

    for j := 1 to (i - 1) do
    begin
        total_geral := total_geral + total[j];
    end;

    writeln('Valor total do estoque: R$ ', total_geral:2:2);
    writeln('Maior Quantidade: ', prod[i_maior]);
    writeln('Mais Barato: ', prod[i_menor]);
    readln();
End.