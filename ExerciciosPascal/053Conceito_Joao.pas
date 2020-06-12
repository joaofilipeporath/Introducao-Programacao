Program PrConceito ;

function alunoAprovadoOuNao(conceito : string) : boolean;
var
	aprovado : boolean;
begin
	if (conceito = 'OT') or (conceito = 'B') or (conceito = 'S') then
		aprovado := true; // aluno aprovado
	if (conceito = 'I') then
		aprovado := false;  //aluno nao aprovado
		
	alunoAprovadoOuNao := aprovado;
end;

function getConceito : string;
var
conceito : string;
begin
	repeat
		write('INFORME O CONCEITO: ');
		readln(conceito);		
		getConceito := conceito;
	until (conceito = 'OT') or (conceito = 'B') or (conceito = 'S') or (conceito = 'I') or (conceito = 'X');
end;
 
//programa principal
var
conceito : string;

Begin
	repeat
		conceito := getConceito;
		if (alunoAprovadoOuNao(conceito)) then
			writeln ('ALUNO APROVADO')
		else
			writeln ('ALUNO REPROVADO');
	until (conceito = 'X');	  
End.