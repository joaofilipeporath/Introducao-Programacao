//Crie um programa que contenha uma matriz chamada MatrizDeReais4x2, com 4 x 2 números reais.
//Métodos para:
//a) Receber os valores;
//b) Retornar a multiplicação dos valores de uma dada coluna;
//c) Retornar a soma dos valores de uma dada linha;
//d) Retornar a soma de todos os elementos da matriz.

Program prMatriz4x2;

type
    TMatriz4x2 = array[1..4, 1..2] of real;

var
    matriz : TMatriz4x2;
    i, j, coluna_multi, linha_soma : integer;
    multip, soma : real;    

Begin
    //ENTRADA DE DADOS - a) receber os valores ok
    for i := 1 to 4 do
        for j := 1 to 2 do
            begin
                write('Elemento [', i,'][', j,']: ');
                readln(matriz[i, j]);
            end;
    
    //mostrar a matriz
    writeln('-------------');
		for i := 1 to 4 do
    	begin
				for j := 1 to 2 do
	    		begin
	    			write(matriz[i,j]:2:2, ' ');
					end;
			  writeln('');
			end;  
    
		//b) Retornar a multiplicacao dos valores de uma dada coluna;
		writeln('-------------');
		writeln('Qual coluna vc quer multiplicar?');
    readln(coluna_multi);    
    multip := 1;
    for i := 1 to 4 do
        begin
            multip := multip * matriz[i, coluna_multi];    
        end;    
    writeln('A multiplicacao dos elementos da coluna [', coluna_multi, '] = ', multip:2:2);

    //c) Retornar a soma dos valores de uma dada linha; 
    writeln('-------------');
		writeln('Qual linha vc quer somar?');                                                                
    readln(linha_soma);                         
    soma := 0;
    for j := 1 to 2 do
        begin
            soma := soma + matriz[linha_soma, j];
        end;
    writeln('A soma dos elementos da linha [', linha_soma, '] = ', soma:2:2);

    //d) Retornar a soma de todos os elementos da matriz.
    writeln('-------------');
		soma := 0;
    for i := 1 to 4 do
     for j := 1 to 2 do
        begin
            soma := soma + matriz[i, j];
        end;    
    writeln('A soma dos elementos da matriz = ', soma:2:2);
    
    readln();
End.