Program Pzim ;

(*PASSOS IMPORTANTES ANTES DE PROGRAMAR: 
	P1 - Compreender o Problema. Do que se trata?; entra com preço e cod de origem e emite o preço com sua procedencia
	P2 - Identificar Dados de Entrada; Preço : real; cod : inteiros.
	P3 - Identificar Dados de Saída;   Preço : real; origem : string.
	P4 - Quais são os Resultados Esperados?; Sul, Norte, leste,... com os preços correspondentes  
	P5 - Que operacoes/ procedimentos vou utilizar?; (comandos condicionais)
	P6 - Criar Algoritimo; 
	P7 - Realizar teste de mesa / comparar com passo P4 (MEMÓRIA X TELA --> Depurar); 
	P8 - Chegou ao resultado esperado? *)

//procedura para categorizar de acordo com a idade
procedure printRegiao(x : integer);
begin
	case (x) of
		1: writeln('SUL'); 
		2: writeln('NORTE');
		3: writeln('LESTE');
		4: writeln('OESTE');
		5,6: writeln('NORDESTE');
		7..9: writeln('SUDESTE');
		10..20: writeln('CENTRO-OESTE');
		25..50: writeln('NOROESTE');
		else
			writeln('IMPORTADO');	
	end;
end;

//-----------------------------------------------
// funcao para obter preco
Function getPreco : real;
var
x : real;    //variaveis locais
begin
	write('INFORME UM PRECO: R$ ');
	readln(x);
	getPreco := x; //retorno da funcao
end;
//-----------------------------------------------

//-----------------------------------------------
// funcao para obter codigo
Function getCod : integer;
var
x : integer;  //variaveis locais
begin
	write('INFORME O CÓDIGO: ');
	readln(x);
	getCod := x; //retorno da funcao
end;
//-----------------------------------------------

//-----------------------------------------------
//funcao inicial 
procedure inicio;
var  // variaveis locais
	preco : real;
	cod : integer;
begin
	preco := getpreco;
	cod := getCod;
	writeln('----');
	write('R$ ', preco :2:2, ' - ');
	printRegiao(cod);	
end;

//-----------------------------------------------
// programa principal
Begin	
	inicio;
	readln;	  
End.
//-----------------------------------------------