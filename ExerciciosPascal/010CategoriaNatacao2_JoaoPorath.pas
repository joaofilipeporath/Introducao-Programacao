Program prExercicio03 ;

(*PASSOS IMPORTANTES ANTES DE PROGRAMAR: 
	P1 - Compreender o Problema. Do que se trata?; centro com uma idade e me retorna uma categoria
	P2 - Identificar Dados de Entrada; idade : inteiro
	P3 - Identificar Dados de Saída;  categoria : string
	P4 - Quais são os Resultados Esperados?;  categoria A, categoria B...
	P5 - Que operacoes/ procedimentos vou utilizar?; case ou if ou if/else (Comandos condicionais) 
	P6 - Criar Algoritimo; 
	P7 - Realizar teste de mesa / comparar com passo P4 (MEMÓRIA X TELA --> Depurar); 
	P8 - Chegou ao resultado esperado? *)

							procedure printCategoria(parametro1 : integer);   //inicio da procedure
							Begin 							
								case (parametro1) of    //comandos condicionais
									0..4 : writeln('Sem Categoria');
									5..7 : writeln('Infantil A');
									8..10 : writeln('Infatil B');
									11..13 : writeln('Juvenil A');
									14..17 : writeln('Juvenil B');
									else
										writeln('Senior');									                                       
								end;								
							end;                                               //fim da procedure


							Function getIdade : integer;                       // inicio da function
							var
							idade : integer;
							Begin
							    writeln('INFORME SUA IDADE: ');
									readln(idade);
									getIdade := idade; //retorno da funcao						                 
							end;	                                             // fim da function

var
 x: integer;

//programa principal
Begin
	repeat
		x := getidade;
		printCategoria(x);
	until (x = 0);			   
End.
//fim do programa principal