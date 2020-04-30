program par_impar;
uses crt;
type
    Tconj = array [1..10] of integer;
var
    vetor, vetor_par, vetor_impar : Tconj;     
    i, j, k : integer;
Begin
    j := 0; k := 0;
    writeln('Insira Numeros:');
		for i := 1 to 10 do
    begin
        repeat   
            write('Index[', i,']: ');
            readln(vetor[i]);
        until (vetor[i] > 0);
        if (vetor[i] mod 2 = 0) then
        begin
            inc(j);
			vetor_par[j] := vetor[i];            
        end
        else
        begin
            inc(k);
			vetor_impar[k] := vetor[i];                        
        end;       
    end;    
    writeln('----------------');
    if j > 0 then
    	writeln('Numeros pares:');
    for i := 1 to j do    
    writeln('[', i,'] = ', vetor_par[i]);    
    writeln('----------------');
    if k > 0 then
		writeln('Numeros impares:');
    for i := 1 to k do    
    writeln('[', i,'] = ', vetor_impar[i]);      
end.