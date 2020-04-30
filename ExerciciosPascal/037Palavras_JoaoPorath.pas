program palavras;
uses crt;
type
    Tconj = array [1..100] of string;
var
    palin, gerais : Tconj;
    plvra, aux : string;
    i, j, k : integer;

Begin    
    j := 0; k := 0;
    write('Digite uma palavra ou "FIM" para sair: ');
    readln (plvra);
    while (upcase(plvra) <> 'FIM') do
    begin        
        aux := '';
        for i := length(plvra) downto 1 do
            aux := aux + plvra[i];
                
        if (upcase(plvra) = upcase(aux)) then
        begin
            inc(j);
            palin[j] := plvra;
        end
        else
        begin
            inc(k);
            gerais[k] := plvra;
        end;
        write('Digite uma palavra ou "FIM" para sair: ');
        readln (plvra);    
    end;
    writeln('---------');
    if (j > 0) them
        writeln('Palindromo: ');
    for i := 1 to j do    
        writeln(palin[i]);    
    writeln('---------');
    if (k > 0) them
    writeln('Gerais: ');
    for i := 1 to k do    
        writeln(gerais[i]);    
End.