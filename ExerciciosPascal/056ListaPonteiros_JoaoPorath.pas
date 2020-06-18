Program prPercorrendoLista;

type
	TNo = record
					dado : integer;
					prox : ^TNo;
				end;
				
var
	pinicio : ^TNo;
	p1 : ^TNo;
	resposta: char;
	
Begin
	pinicio := nil;	
	repeat
		new(p1);
		write('Entre com novo dado: ');
		readln(p1^.dado);
		p1^.prox := pinicio;
		pinicio := p1;
		write('Novo dado(S/N)?' );
		readln(resposta);
		resposta := upcase(resposta);	
	until(resposta = 'N');
	
	p1 := pinicio;
	while (p1 <> nil) do
		begin
			writeln('Achei: ', p1^.dado);
			p1 := p1^.prox;
		end;
	
	while (pinicio <> nil) do
		begin
			p1 := pinicio;
			pinicio := pinicio^.prox;
			dispose (p1);
		end;
	
	readln;	  
End.