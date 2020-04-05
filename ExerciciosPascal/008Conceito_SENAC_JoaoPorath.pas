Program Conceito_SENAC;
uses crt;

type
	conceito = (OT,B,S,I);

var
	nota : 	string;

Begin
  writeln ('Insira um dos seguintes conceitos:');
  writeln ('[OT] - Ótimo');
  writeln ('[B] - Bom');
  writeln ('[S] - Satisfatório');
  writeln ('[I] - Insatisfatório');
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