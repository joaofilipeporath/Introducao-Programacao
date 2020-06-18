Program Pascalzim ;

// Define o tipo de registro que será armazenado no arquivo 
type registro = record
                   nome: string[20];
									 idade: integer ;
								End ;
// Define variáveis para manipulação do arquivo 
var 
	arq: file of registro;
	reg: registro ;
	i : integer;

Begin   
		// Abre o arquivo para escrita
   assign( arq, 'dados.bin' );
	 rewrite( arq );
	 
   // Grava dados no arquivo   
	 reg.nome:= 'Joao Batista' ;   
	 reg.idade:= 30 ;   
	 write(arq, reg);

   // Grava dados no arquivo   
	 reg.nome:= 'Pedro Pereira' ;   
	 reg.idade:= 40 ;   
	 write(arq, reg);
	 
   // Grava dados no arquivo   
	 reg.nome:= 'Miguel da Silva' ;   
	 reg.idade:= 50 ;   
	 write(arq, reg);
	 
   // Mostra a quantidade registros armazenados   
	 writeln( 'Foram armazenados ' , filesize(arq) , ' registros ' );	 
	 
	 // Mostra os registros que foram gravados   
	 for i:= 0 to filesize(arq)-1 do   
	 Begin      
		 seek( arq, i );      
		 read( arq, reg );      
		 writeln( 'Leu do arquivo => nome:', reg.nome, ' idade:', reg.idade );   
	 End; 
	 readln; 
	 End.
