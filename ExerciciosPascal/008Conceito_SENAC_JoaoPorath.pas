Program Conceito_SENAC;
uses crt;

type
	conceito = (OT,B,S,I);

var
	nota : 	string;

Begin
  writeln ('Insira um dos seguintes conceitos:');
  writeln ('[OT] - �timo');
  writeln ('[B] - Bom');
  writeln ('[S] - Satisfat�rio');
  writeln ('[I] - Insatisfat�rio');
  readln (nota);
  
  if (nota = 'OT') or (nota = 'B') or (nota = 'S') then
  	begin
  		writeln('Aluno aprovado!');
  	end
  else
  	begin
  		writeln('Aluno reprovado!');
  	end;
	readln;  
End.