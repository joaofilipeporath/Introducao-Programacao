Program Valor_artigo;
uses crt;

var
	valor: real;
	
const
	perc_desc = 0.08;
	perc_acrec = 0.15;
	n_parc = 3;
	
Begin
  write ('Digite o valor original do artigo: R$ ');
  readln(valor);
  valor := valor - (valor * perc_desc);
  writeln('VALOR:');
	writeln('Ŕ VISTA = R$ ',valor :2:2);
  valor := valor * (1 + perc_acrec)/n_parc;
	writeln('Ŕ PRAZO = ',n_parc,' x R$ ',valor :2:2);
	readln;  
End.
