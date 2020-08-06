//Em uma turma, foram selecionados,aleatoriamente, 6 alunos para obter
//informações de satisfação, tendo como opções
//[Péssimo, Ruim, Regular, Bom,Ótimo].
//Elabore um algoritmo que retorne:O percentual de cada voto.
//O percentual de alunos do sexo feminino.A média da idade dos alunos do sexo
//masculino.O nome do aluno mais velho.A diferença de idade entre
//o mais velho e o mais novo.

Program prSatisfacao;

Var
// Seção de Declarações das variáveis 
nome, sexo: char
op_voto, idade, voto1, voto2, voto3, voto4, voto5, fem, masc, somaIdade: integer;

Begin
	op_voto := 1;
	voto1 := 0;
	voto2 := 0;
	voto3 := 0;
	voto4 := 0;
	voto5 := 0;
		
	while (op_voto <> 0) do
		begin
			writeln('INFORME SEU NOME');
			readln(nome); 
			writeln('INFORME SUA IDADE');
			readln(idade);			
			writeln('INFORME SUA ORIANTAÇÃO SEXUAL'); 
			writeln('|-[1]= MASCULINO,[2]= FEMININO|');
			readln(sexo);
			if (sexo = '1') then
				begin
					masc := masc + 1;
					somaIdade := somaIdade + idade; 
				end
			else
				fem := fem + 1;
			writeln('QUAL SUA NOTA EM SATISFAÇÃO'); 
			writeln('|[1]PÉSSIMO,[2]RUIM,[3]REGULAR|');
			writeln('|-----[4]BOM,  [5]ÓTIMO)------|');
			readln(op_voto);
			case (op_voto) of
				1 : voto1 := voto1 + 1;
				2 : voto2 := voto2 + 1;
				3 : voto3 := voto3 + 1;
				4 : voto4 := voto4 + 1;
				5 : voto5 := voto5 + 1;
			end;			
		end;
	total := voto1 + voto2 + voto3 + voto4 + voto5;
	writeln('PESSIMO: ', voto1/total * 100 :2:2);
	writeln('RUIM: ', voto2/total *100 :2:2);
	writeln('REGULAR: ', voto3/total * 100 :2:2);
	writeln('BOM: ', voto4/total * 100 :2:2);
	writeln('OTIMO: ', voto5/total * 100 :2:2);
	writeln('----------------');
	writeln('Votos masculinos: ', masc/total * 100 :2:2);
	writeln('Votos femininos: ', fem/total * 100 :2:2);
	writeln('----------------');
	writeln('Media Idade Masculino: ', somaIdade/total);
  
End.