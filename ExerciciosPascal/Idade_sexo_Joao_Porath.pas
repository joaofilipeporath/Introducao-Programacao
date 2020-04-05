Program prIdade_sexo;
uses crt;
var
sum, year, i_male, i_female, bigger_male, smaller_female: integer;
sex: char;

Begin
  i_male := 0;
  i_female := 0;
  sum := 0;
  bigger_male := 0;
  smaller_female := 999;
  
  writeln('Informe o sexo [M] = MASCULINO, [F] = FEMININO, [N] = FINALIZAR PROCESSO:');
  readln(sex);
  while (upcase(sex) <> 'N') do
	  begin 			
	    if (upcase(sex) = 'M') then
	    	begin
		      writeln('Informe a idade:');
	    		readln(year);
					sum := sum + year;
		      i_male := i_male + 1;
		      if (year > bigger_male) then
		      bigger_male := year;
		    end
		  else if (upcase(sex) = 'F') then
		    begin
		      writeln('Informe a idade:');
	    		readln(year);
					sum := sum + year;
		      i_female := i_female +1;
		      if (year < smaller_female) then
		      smaller_female := year;
		    end
		  else
		  	begin
		  		writeln('Opcao invalida!!!');
		  	end;		  
	    writeln('Informe o sexo [M] = MASCULINO, [F] = FEMININO, [N] = FINALIZAR PROCESSO:');
	    readln(sex);
	  end;
        
	if ((i_male + i_female)= 0) then
	  begin
	    writeln('NENHUMA PESSOA CADASTRADA.');
	  end
  else
	  begin
	    writeln('Media de idade das pessoas = ', (sum)/(i_male + i_female) :2:2,' anos.');
	    writeln('Percentual de pessoas do sexo MASCULINO = ',(i_male)/(i_male + i_female)*100 :2:2,' %');
	    writeln('Percentual de pessoas do sexo FEMININO = ',(i_female)/(i_male + i_female)*100 :2:2,' %');
	    if(i_male = 0) then
		    begin
		      writeln('A maior idade MASCULINA = ', 'NENHUMA PESSOA DO SEXO MASCULINO CADASTRADA.');
		      writeln('A menor idade FEMININA = ', smaller_female,' anos.');
		    end
		    else if(i_female = 0) then
		    begin
		      writeln('A maior idade MASCULINA = ', bigger_male,' anos.');
		      writeln('A menor idade FEMININA = ', 'NENHUMA PESSOA DO SEXO FEMININO CADASTRADA.');
		    end
		    else
		    begin
		      writeln('A maior idade MASCULINA = ', bigger_male,' anos.');
		      writeln('A menor idade FEMININA = ', smaller_female,' anos.');
		    end;
	  end;
  readln();
End.