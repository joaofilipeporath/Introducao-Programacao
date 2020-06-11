Program Pvalor ;


procedure inserirLinha;
begin
 	 clrscr;
	 writeln('-------------------');
end;

function getDesconto : real;// metodo que retorna obrigatoriamente valor.
var
desconto : real;
begin
	inserirLinha;
	writeln('INFORME O PERCENTUAL DE DESCONTO A VISTA');
	readln(desconto);
	getDesconto := desconto; //retorno da funcao.
end;

function getAcrescimo : real;// metodo que retorna obrigatoriamente valor.
var
acrescimo : real;
begin
	inserirLinha;
	writeln('INFORME O PERCENTUAL DE ACRESCIMO A PRAZO');
	readln(acrescimo);
	getAcrescimo := acrescimo; //retorno da funcao.
end;

function getValorOriginal : real;// metodo que retorna obrigatoriamente valor.
var
valor : real;
begin
	inserirLinha;
	writeln('INFORME UM VALOR');
	readln(valor);
	getValorOriginal := valor; //retorno da funcao.
end;

procedure valorFinalAvista (valor : real; desconto: real);
begin
	inserirLinha;
	writeln('VALOR A VISTA = R$ ', valor - (valor * desconto):2:2);
	readln();
end;

procedure valorFinalaPrazo (valor : real; acrescimo: real);
begin
	inserirLinha;
	writeln('VALOR A PRAZO = 3 X DE R$ ', (valor + (valor * acrescimo))/3 :2:2);
	readln();
end;

Procedure menu;  // metodo que não retorna valor.
var
opcao : integer;
valor : real;
desconto, acrescimo: real;
begin		
		desconto := getDesconto;
		acrescimo := getAcrescimo;
		valor := getValorOriginal;
	repeat		
		clrscr;
		inserirLinha;
		writeln('ESCOLHA A OPCAO');
		writeln('1 - ALTERAR VALOR');
		writeln('2 - A VISTA');
		writeln('3 - A PRAZO');
		writeln('4 - SAIR');
		readln(opcao);
		case (opcao) of
			1: valor := getValorOriginal;
			2: valorFinalAvista(valor, desconto);    
			3: valorFinalAPrazo(valor, acrescimo);
			4: break
		end;
	until (false);
end;

//programa principal ou main
Begin
	menu;  
End.