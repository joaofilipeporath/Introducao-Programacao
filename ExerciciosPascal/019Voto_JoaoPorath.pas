(*Em uma elei��o presidencial, existem 4 candidatos. 
Os votos s�o informados atrav�s de c�digo. 
Os dados para a escrutinagem obedecem � seguinte codifica��o: 
� 1,2,3,4 ? voto para os respectivos candidatos  
� 5 ? voto nulo 
� 6 ? voto em branco. 
� 0 ? finalizar  
Elabore um algoritmo que calcule e escreva:  
a) total de votos para cada candidato;  
b) total de votos nulos;  
c) total de votos em branco;  
d) Percentual de votos de cada candidato em rela��o ao total de votos validos.*) 

Program Voto ;
var
vote, id_01, id_02, id_03, id_04, id_nulo, id_branco : integer;

Begin
	writeln('-----------------------------------------------------------');
	writeln('OPCOES DE VOTO:');
	writeln('1 - Patolino');
	writeln('2 - Pernalonga');
	writeln('3 - Papaleguas');
	writeln('4 - Coiote');
	writeln('5 - NULO');
	writeln('6 - BRANCO');
	writeln('0 - FINALIZAR ESCRUTINAGEM');
	writeln('-----------------------------------------------------------');
	write('Insira o voto: ');
	readln(vote);
	while (vote <> 0) do
		begin
			case vote of
				1: id_01 := id_01 + 1; 
				2: id_02 := id_02 + 1;
				3: id_03 := id_03 + 1;
				4: id_04 := id_04 + 1;                          
				6: id_branco := id_branco + 1;
				else
					id_nulo := id_nulo + 1;
			end;
			write('Insira o voto: ');
			readln(vote);
		end;
	if ((id_01 + id_02 + id_03 + id_04) > 0) them
		begin
			writeln('-----------------------------------------------------------');
			writeln('RESULTADOS:');
			writeln('1 - Patolino   = ', id_01, ' voto(s) -> [', id_01/(id_01+id_02+id_03+id_04)*100 :2:2,'%] dos votos validos.');
			writeln('2 - Pernalonga = ', id_02, ' voto(s) -> [', id_02/(id_01+id_02+id_03+id_04)*100 :2:2,'%] dos votos validos.');
			writeln('3 - Papaleguas = ', id_03, ' voto(s) -> [', id_03/(id_01+id_02+id_03+id_04)*100 :2:2,'%] dos votos validos.');
			writeln('4 - Coiote     = ', id_04, ' voto(s) -> [', id_04/(id_01+id_02+id_03+id_04)*100 :2:2,'%] dos votos validos.');
			writeln('5 - NULO       = ', id_nulo, ' voto(s).');
			writeln('6 - BRANCO     = ', id_branco, ' voto(s).');
			writeln('-----------------------------------------------------------');
			readln();
		end	
	else
		writeln ('Nao houve eleicao!');		  
End.