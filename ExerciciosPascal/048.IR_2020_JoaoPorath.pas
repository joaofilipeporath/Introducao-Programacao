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
		write('NOME [OU FIM PARA ENCERRAR CADASTRO]: ');
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

/// funcao PARA ARMAZENAR INFORMACOES DO CONTRIBUINTE, que tem dado de entrada um inteiro e retorna uma variavel do tipo TListaContribuinte
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
					break; // sai do la�o de repeti��o
				pessoas[x].cpf := getCPF;					
				pessoas[x].uf := getUF;
				pessoas[x].renda_anual := getRenda_anual;
			end;
		dec(x); // x:= x - 1;
		armazenarInfo := pessoas;
end;


// procedure PARA CALCULAR IMPOSTOS, que tem como dado de entrada duas variaveis, sendo: a) do tipo TListaContribuinte; b) do tipo inteira. Procedure nao retorna valor.
procedure calcularImpostos(var pessoas : TListaContribuinte; num_registro : integer);
var
i : integer;

(*const
a = 1903.98;	txa = 0.075;	// (7.50% = 0.075)
b = 2826.65;	txb = 0.150;	// (15.00% = 0.15)		
c = 3751.05;	txc = 0.225;	// (22.50% = 0.225)
d = 4664.68;	txd = 0.275;	// (27.50% = 0.275)*)

const
						tx1 = 0;
a = 4000;		
						txa = 0.058;
b = 9000;			
						txb = 0.150;
c = 25000;		
						txc = 0.275;
d = 35000;	
						txd = 0.300;

begin
	for i := 1 to num_registro do
		begin
			if (pessoas[i].renda_anual <= a) then
				begin
					pessoas[i].imposto := tx1;
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

//funcao PARA IDENTIFICAR CPF, tendo como dado de entrada duas variaveis: a) do tipo TListaContribuinte; b) do tipo integer. Retorna um valor integer.
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

// procedure PARA IMPRIMIR CADASTRO DE QUALQUER REGISTRO, tendo como dado de entrada duas variaveis: a) do tipo TListaContribuinte; b) do tipo integer.
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
			writeln('Contribuinte nao encontrado');
end;

// procedure PARA IMPRIMIR DADOS, que tem como dado de entrada duas variaveis, sendo: a) do tipo TListaContribuinte; b) do tipo inteira. Procedure nao retorna valor. 

procedure imprimirInfo(pessoas : TListaContribuinte; num_registro : integer);
var
	i, cpf, i_cpf: integer;
	
begin
		repeat
			writeln('---------------------------------------');
			writeln('INFORME O CPF DO CONTRIBUINTE:');
			writeln('[DIGITE ZERO PARA VOLTAR]');
			write('>> ');
			readln(cpf);
			if (cpf = 0) then
				break;
			i_cpf	:= identificar_CPF(pessoas, num_registro, cpf); // retorna um numero inteiro;								
			imprimirCadastro(pessoas, i_cpf);					
		until (false);
end;

function verificarImposto(pessoas : TListaContribuinte; num_registro : integer; estado : string[2]; condicao : char) : integer;
var	
	valor : real;
	i, i_valor : integer;

begin	
	if (condicao = '>') then
		valor := 0
	else
		valor := 9999999999; 
	
	i_valor := 0;
	
	for i := 1 to num_registro do
		begin
			if (condicao = '>') and (upcase(pessoas[i].uf) = estado) and (pessoas[i].renda_anual > valor) then
				begin					
					i_valor := i;
				end;
			if (condicao = '<') and (upcase(pessoas[i].uf) = estado) and (pessoas[i].renda_anual < valor) then
				begin					
					i_valor := i;
				end;
			if (condicao = '<') and (estado = '*') and (pessoas[i].renda_anual < valor) then
				begin					
					i_valor := i;
				end;
			if (condicao = '>') and (estado = '*') and (pessoas[i].renda_anual > valor) then
				begin					
					i_valor := i;
				end;		
		end;	
	verificarImposto := i_valor;	
end;

function getParticipacao(outrapessoas : TlistaContribuinte; num_registro : integer; estado : string[2]) : real;
var
i : integer;
soma : real;

begin
	soma := 0;
	for i := 1 to num_registro do
		begin
			if (upcase(outrapessoas[i].uf) = estado) then
				begin
					soma := soma + outrapessoas[i].imposto;
				end;
			if (estado = '*') then
					soma := soma + outrapessoas[i].imposto;			
		end;
	getParticipacao := soma;	
end;

procedure menu;
Var		
		op, n: integer;
		people : TListaContribuinte;

begin
		n := 0;
		repeat
			writeln('---------------------------------------');
			writeln('1 - CADASTRAR CONTRIBUINTES');
			writeln('2 - CONSULTAR CPF ');
			writeln('3 - CONTRIBUINTE COM MAIOR IMPOSTO A PAGAR');
			writeln('4 - CONTRIBUINTE DO RS COM MENOR RENDA ANUAL');
			writeln('5 - IMPRIMIR PARTICIPACAO POR ESTADO');
			writeln('0 - SAIR');
			write('>> ');
			readln(op);			
			
			case (op) of			
			1:	begin
						people := armazenarInfo(n);	// Entrada de dados
						calcularImpostos(people, n); // Processamento dos Impostos
					end;			
			2: 	imprimirInfo(people, n);// Saida de Dados ou Imprimir dados
			3:	begin
						writeln('---------------------------------------');
						writeln('Contribuinte com maior imposto a pagar:');
						imprimirCadastro(people, verificarImposto(people, n, '*', '>'));					
					end;
			4:  begin
						writeln('---------------------------------------');	
						writeln('Contribuinte com menor imposto a pagar no RS:');
						imprimirCadastro(people, verificarImposto(people, n, 'RS', '<'));					
					end;
			5:	begin
						writeln('---------------------------------------');
						writeln ('Participacao SC: ', getParticipacao(people, n, 'SC') / (getParticipacao(people, n, '*')) * 100 :2:2, '%');
						writeln ('Participacao PR: ', getParticipacao(people, n, 'PR') / (getParticipacao(people, n, '*')) * 100 :2:2, '%');
						writeln ('Participacao RS: ', getParticipacao(people, n, 'RS') / (getParticipacao(people, n, '*')) * 100 :2:2, '%');	    							
					end;
			end;
			
		until (op = 0);    
end;

// main ou programa principal  
Begin
		menu;
		readln;
End.