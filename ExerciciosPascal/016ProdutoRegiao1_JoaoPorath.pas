(*Construa um algoritmo que tendo como dados de entrada o preço de um produto e um código de origem, emita como resultado o preço seguido de sua procedência. Conforme tabela abaixo:
Código de origem:
1 – Sul
2 – Norte
3 – leste
4 – oeste
5 ou 6 – nordeste
7, 8 ou 9 – sudeste
10 até 20 – cetro-oeste
25 até 50 – noroeste
Produtos que não tem o código de origem na tabela acima serão
considerados importados.*)

Program Produto_origem ;
uses crt;

var
preco: real;
cod_origem: integer;

Begin
  cod_origem:=1;
	while (cod_origem <> 0) do
  begin
    write ('Preço do produto: R$ ');
    readln (preco);
    write ('Código de origem [zero para sair]: ');
    readln (cod_origem);
    case (cod_origem) of
      0: writeln('FINALIZADO');
			1: writeln('R$ ',preco :2:2,' - origem: SUL');
      2: writeln('R$ ',preco :2:2,' - origem: NORTE');
      3: writeln('R$ ',preco :2:2,' - origem: LESTE');
      4: writeln('R$ ',preco :2:2,' - origem: OESTE');
      5..6: writeln('R$ ',preco :2:2,' - origem: NORDESTE');
      7..9: writeln('R$ ',preco :2:2,' - origem: SUDESTE');
      10..20: writeln('R$ ',preco :2:2,' - origem: CENTRO-OESTE');
      25..50: writeln('R$ ',preco :2:2,' - origem: NOROESTE')
      else
      writeln('R$ ',preco :2:2,' - origem: IMPORTADO');
    end;
  end;
  readln();
End.