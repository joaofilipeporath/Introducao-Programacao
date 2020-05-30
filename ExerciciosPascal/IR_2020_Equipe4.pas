Program Imposto_Renda;

Type
		TContribunte = record
				nome: string[25];
				cpf: integer;
				uf: string[2];
				renda_anual: real;
				imposto: real;
		end;
		
		TListaContribuinte = array[1..100] of TContribunte;

// obter nome
function getNome : string;
var
	nome : string;
begin
		write('NOME: ');
		readln(nome);
		getNome := nome;	
end;

// obter CPF
function getCPF : integer;
var
	cpf : integer;
begin
		write('CPF: ');
		readln(cpf);
		getCPF := cpf;	
end;

// obter UF
function getUF : string;
var
	uf : string;
begin
		write('UF: ');
		readln(uf);
		getUF := uf;	
end;

// obter Renda Anual
function getRenda_anual : real;
var
	renda_anual : real;
begin
		write('RENDA ANUAL: ');
		readln(renda_anual);
		getRenda_anual := renda_anual;	
end;

/// funcao PARA ARMAZENAR INFORMACOES DO CONTRIBUINTE, que tem dado de entrada um inteiro e retorna uma variável do tipo TListaContribuinte
function armazenarInfo(var x : integer) : TListaContribuinte;
var
pessoas : TListaContribuinte;
begin		
		while (true) do
			begin
					writeln('---------------------------------------');
					inc(x); // x := x + 1;					
					pessoas[x].nome := getNome;
					if (upcase(pessoas[x].nome) = 'FIM') then
						break; // sai do laço de repetição
					pessoas[x].cpf := getCPF;					
					pessoas[x].uf := getUF;
					pessoas[x].renda_anual := getRenda_anual;
			end;
		dec(x); // x:= x - 1;
		armazenarInfo := pessoas;
end;


// procedure PARA CALCULAR IMPOSTOS, que tem como dado de entrada duas variáveis, sendo: a) do tipo TListaContribuinte; b) do tipo inteira. Procedure não retorna valor.
procedure calcularImpostos(var pessoas : TListaContribuinte; num_registro : integer);
var
i : integer;

const
a = 1903.98;	txa = 0.075;	// (7.50% = 0.075)
b = 2826.65;	txb = 0.150;	// (15.00% = 0.15)		
c = 3751.05;	txc = 0.225;	// (22.50% = 0.225)
d = 4664.68;	txd = 0.275;	// (27.50% = 0.275)

begin
	for i := 1 to num_registro do
				begin
						if (pessoas[i].renda_anual <= a) then
							begin
								pessoas[i].imposto := 0;
							end
						else if (pessoas[i].renda_anual <= b) then
							begin
								pessoas[i].imposto := pessoas[i].renda_anual * txa; 			
							end
						else if (pessoas[i].renda_anual <= c) then
							begin
								pessoas[i].imposto := pessoas[i].renda_anual * txb; 
							end
						else if (pessoas[i].renda_anual <= d) then
							begin
								pessoas[i].imposto := pessoas[i].renda_anual * txc; 
							end
						else
							begin
								pessoas[i].imposto := pessoas[i].renda_anual * txd; 
							end;
				end;
end;

//funcao PARA IDENTIFICAR CPF, tendo como dado de entrada duas variáveis: a) do tipo TListaContribuinte; b) do tipo integer. Retorna um valor integer.
function identificar_CPF(pessoas : TListaContribuinte; num_registro : integer; cpf : integer) : integer;
var
i_cpf, i : integer;

begin
		i_cpf := 0;		
		for i:= 1 to num_registro do
				begin
						if (pessoas[i].cpf = cpf) then
								begin
										i_cpf := i;
										break;					
								end;
				end;
		identificar_CPF := i_cpf;			
end;

// procedure PARA IMPRIMIR CADASTRO DE QUALQUER REGISTRO, tendo como dado de entrada duas variáveis: a) do tipo TListaContribuinte; b) do tipo integer.
procedure imprimirCadastro(pessoas : TlistaContribuinte; i : integer);
begin
		if (i <> 0) then
				begin
						writeln('---------------------------------------');
						writeln('NOME: ', pessoas[i].nome);
						writeln('CPF: ', pessoas[i].cpf);
						writeln('UF: ', pessoas[i].uf);
						writeln('RENDA ANUAL: R$ ', pessoas[i].renda_anual:2:2);
						writeln('IMPOSTO: R$ ', pessoas[i].imposto:2:2);										
				end
		else
				writeln('Não há registro de pessoa com esse CPF!');
end;

// procedure PARA IMPRIMIR DADOS, que tem como dado de entrada duas variáveis, sendo: a) do tipo TListaContribuinte; b) do tipo inteira. Procedure não retorna valor. 

procedure imprimirInfo(pessoas : TListaContribuinte; num_registro : integer);
var
	i, cpf, i_cpf: integer;
	
begin
		repeat
			writeln('---------------------------------------');
			writeln('Informe o CPF do Contribuinte para saber as informações sobre ele:');
			writeln('[ou zero para sair]');
			write('>> ');
			readln(cpf);
			i_cpf	:= identificar_CPF(pessoas, num_registro, cpf); // retorna um numero inteiro;								
			imprimirCadastro(pessoas, i_cpf);		
		until (cpf = 0);
end;

procedure menu;
Var		
		n: integer;
		people : TListaContribuinte;
begin
		n := 0;			
		people := armazenarInfo(n);	// Entrada de dados			
		calcularImpostos(people, n); // Processamento dos Impostos		
		imprimirInfo(people, n);// Saída de Dados ou Imprimir dados						
end;

// main ou programa principal  
Begin
		menu;
		readln;		  
End.






