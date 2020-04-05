(*  PASSOS IMPORTANTES ANTES DE PROGRAMAR
		p1 - Compreender o Problema = C�lculo de m�dia
		p2 - Dados de Entrada = Duas notas
		p3 - Dados de Sa�da = M�dia
		p4 - Resultados Esperados = 0 a 10;
		p5 - Soma e Divis�o
		p6 - Algoritimo = Media_aluno
												vari�veis
													nota1: real
													nota2: real
													media: real
		p7 - teste de mesa / comparar com passo 04     |||MEM�RIA X TELA||| depurar
		p8 - chegou no resultado esperado?		
*)

Program Media_aluno;

uses crt;

var
	nota1, nota2: real;
	
Begin
  writeln ('Insira a primeira nota');
  readln(nota1);
	while (nota1 < 0) or (nota1 > 10) do
		begin
			writeln ('VALOR INV�LIDO!');
			writeln ('Valor deve ser entre 0 e 10!');
			writeln ('Insira a primeira nota');
		  readln(nota1);
		end;  
	writeln ('Insira a segunda nota');
  readln(nota2);                                 
  while (nota2 < 0) or (nota2 > 10) do
		begin
			writeln ('VALOR INV�LIDO!');
			writeln ('Valor deve ser entre 0 e 10!');
			writeln ('Insira a segunda nota');
		  readln(nota2);
		end;
	writeln ('A m�dia das notas �: ',(nota1 + nota2)/2 :2:2);   (* :2:2 limita o resultado em duas casas *)
  readln;  
End.