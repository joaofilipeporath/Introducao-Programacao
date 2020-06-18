Program Pascalzim ; 
var arq: text ; 

Begin   
		// Cria um novo arquivo, adicionando texto nele   
		assign( arq, 'Joao.CSV ' );   
		rewrite( arq );   
		writeln( arq, 'Esse texto refere-se ao programa 057 ' );
		
		// Fecha o arquivo, salvando as alteracoes efetuadas   
		close(arq);
		
		// Abre o arquivo para adicionar mais texto no final   
		append( arq );
		writeln( arq, 'e pelo grupo! ' );
		
		// Fecha o arquivo, salvando as alteracoes efetuadas   
		close( arq ); 
End.
