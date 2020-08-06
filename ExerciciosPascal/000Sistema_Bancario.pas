Program PrBancoDJJLT; 

// criando novos tipos de variaveis
Type
	// tipo registro: com 07 campos
	TCliente = record
		num_conta : integer;
		nome : string[25];
		cpf : string[11];
		data_nascimento : string[10];
		contato : string[14];
		senha : string[8];
		saldo : real;
	end;
	
	// tipo registro: com 05 campos
	TFuncionario = record
		login : string[10];
		nome : string[25];
		cpf : string[11];
		cargo : string[25];
		senha : string[8];
	end;
	
	// tipo array of TFuncionario: limitado em 100 funcionarios
	TListaFuncionario = array[1..100] of TFuncionario;	
	// tipo array of TCliente: limitado em 100 clientes
	TListaCliente = array[1..100] of TCliente;

	
//metodo (procedimento) que insere uma linha. OBS: é utilzada em diversas partes do codigo.
procedure inserirLinha;
begin
	writeln('--------------------------------');
end;

//metodo (procedimento) que finaliza uma tela. OBS: é utilzada em diversas partes do codigo.
procedure finalizarMenu;
begin
	writeln('[ENTER] PARA FINALIZAR.');
	readln();
end;

//metodo (funcao) que CRIA e retorna um Numero de Conta
function setNumConta(i: integer): integer;
var
x : integer;
begin
	x := 100100 + i;
	writeln('NUMERO DA CONTA: ', x);	
	setNumConta := x; //retorno da funcao
end;

//metodo (funcao) que OBTEM e retorna um Numero de Conta
function getNumConta: integer;
var
	x : integer;
begin
	write('CONTA: ');
	readln(x);
	getNumConta := x; //retorno da funcao
end;

//metodo (funcao) que retorna um Nome
function getNome: string;
var
	x : string;
begin
	write('NOME: ');
	readln(x);
	getNome := x; //retorno da funcao
end; 

//metodo (funcao) que retorna um CPF
function getCPF: string;
var
	x : string;
begin
	write('CPF: ');
	readln(x);
	getCPF := x; //retorno da funcao
end;

//metodo (funcao) que retorna uma data de nascimento
function getDataNascimento: string;
var
	x : string;
begin
	write('DATA DE NASCIMENTO: ');
	readln(x);
	getDataNascimento := x; //retorno da funcao
end;

//metodo (funcao) que retorna um contato
function getContato: string;
var
	x : string;
begin
	write('CONTATO: ');
	readln(x);
	getContato := x; //retorno da funcao
end;

//metodo (funcao) que retorna um cargo
function getCargo: string;
var
	x : string;
begin
	write('CARGO: ');
	readln(x);
	getCargo := x;  //retorno da funcao
end;

//metodo (funcao) que retorna um login
function getLogin: string;
var
	x : string;
begin
	write('LOGIN: ');
	readln(x);
	getLogin := x;  //retorno da funcao
end;

//metodo (funcao) que retorna uma senha
function getSenha: string;
var
	x : string;
begin
	write('SENHA: ');
	readln(x);
	getSenha := x; //retorno da funcao
end;

//metodo (funcao) que retorna um valor em reais
function getValor: real;
var
	x : real;
begin
	write('VALOR: R$ ');
	readln(x);
	getValor := x; //retorno da funcao
end;

//metodo (funcao) para obter o indice (posicao) do cliente por meio do CPF.
//retorno posicao do cliente na lista de clientes.
function getIndexCPF(cliente: TListaCliente; qtde_cliente: integer): integer;
var
i, indexCPF : integer;
cpf : string;
begin
	clrscr;
	writeln('CLIENTE');
	inserirLinha;	
	cpf := getCPF;
	clrscr;
	indexCPF := 0;
	for i := 1 to qtde_cliente do
		begin
			if (cliente[i].cpf = cpf) then
				begin
					indexCPF := i;
					break;	
				end; 
		end;
	getIndexCPF := indexCPF; //retorno da funcao
end;

//metodo (funcao) para obter o indice (posicao) do funcionario por meio do CPF.
//retorno posicao do funcionario na lista de funcionarios.
function getIndexCPFfunc(funcionario: TListaFuncionario; qtde_funcionario: integer): integer;
var
i, indexCPF : integer;
cpf : string;
begin
	clrscr;
	writeln('FUNCIONARIO');
	inserirLinha;	
	cpf := getCPF;
	clrscr;
	indexCPF := 0;
	for i := 1 to qtde_funcionario do
		begin
			if (funcionario[i].cpf = cpf) then
				begin
					indexCPF := i;
					break;	
				end; 
		end;
	getIndexCPFfunc := indexCPF; //retorno da funcao	
end;

//metodo (funcao) para obter o indice (posicao) do cliente por meio da conta.
//retorno posicao do cliente na lista de clientes.
function getIndexConta(cliente: TListaCliente; qtde_cliente: integer): integer;
var
i, indexConta : integer;
conta : integer;
begin
	clrscr;
	writeln('CLIENTE');	
	inserirLinha;
	conta := getNumConta;
	indexConta := 0;
	for i := 1 to qtde_cliente do
		begin
			if (cliente[i].num_conta = conta) then
				begin
					indexConta := i;
					break;	
				end; 
		end;
	getIndexConta := indexConta; //retorno da funcao	
end;

//metodo (funcao) para obter o indice (posicao) do funcionario por meio do login.
//retorno posicao do funcionario na lista de funcionarios.
function getIndexLogin(funcionario: TListaFuncionario; qtde_funcionario: integer): integer;
var
i, indexLogin : integer;
login : string;
begin
	clrscr;
	writeln('FUNCIONARIO');	
	inserirLinha;
	login := getLogin; // informando o numero de conta que estou procurando.	
	indexlogin := 0;
	for i := 1 to qtde_funcionario do
		begin
			if (funcionario[i].login = login) then
				begin
					indexLogin := i;
					break;	
				end; 
		end;
	getIndexLogin := indexLogin; //retorno da funcao	
end;

//metodo (funcao) para autenticar a senha do cliente
//retorna 0 para senha incorreta ou o indice do cliente logado.
function autenticacaoSenhaCliente(cliente : TlistaCliente; qtde_cliente : integer) : integer;
var
i : integer;
senha : string;
begin
		textbackground(blue);
		clrscr;
		i := getIndexConta(cliente, qtde_cliente);
		senha := getSenha;
		if (i = 0) or (cliente[i].senha <> senha) then
			begin
		 		inserirLinha;
				writeln('SENHA OU CONTA INCORRETA');
		 		finalizarMenu;
		 		autenticacaoSenhaCliente := 0;
			end				
		else
			begin
				inserirLinha;
				writeln('ACESSO PERMITIDO');
				finalizarMenu;
				autenticacaoSenhaCliente := i;
			end;				
end;

//metodo (funcao) para auntenticar a senha do funcionario
//retorna verdadeiro ou falso (boolean)
function autenticacaoSenhaFuncionario(funcionario : TlistaFuncionario; qtde_funcionario : integer) : boolean;
var
i : integer;
senha : string;
begin
		textbackground(green);
		clrscr;
		i := getIndexLogin(funcionario, qtde_funcionario);
		senha := getSenha;
		if (i = 0) or (funcionario[i].senha <> senha) then
			begin
				inserirLinha;
				writeln('SENHA OU LOGIN INCORRETO');
				finalizarMenu;
				autenticacaoSenhaFuncionario := false;
			end				
		else
			begin
				inserirLinha;
				writeln('ACESSO PERMITIDO');
				finalizarMenu;
				autenticacaoSenhaFuncionario := true;
			end;				
end;

//metodo para cadastrar um Cliente.
procedure getCliente(var cliente : TListaCliente; var i: integer); //i = qtde_Cliente 
begin
	clrscr;
	inc(i);
	writeln('CADASTRO CONTA CLIENTE');
	inserirLinha;
	cliente[i].num_conta := setNumConta(i);
	cliente[i].nome := getNome;
	cliente[i].cpf := getCPF;
	cliente[i].data_nascimento := getDataNascimento;
	cliente[i].contato := getContato;
	cliente[i].senha := getSenha;
	inserirLinha;
	writeln('CLIENTE CADASTRADO COM SUCESSO');
	finalizarMenu;
end;

//metodo para cadastrar um funcionario.
procedure getFuncionario(var funcionario : TListaFuncionario; var i: integer); //i = qtde_Funcionario 
begin
	clrscr;
	inc(i);
	writeln('CADASTRO FUNCIONARIO');
	inserirLinha;	
	funcionario[i].nome := getNome;
	funcionario[i].cpf := getCPF;
	funcionario[i].cargo := getCargo;
	funcionario[i].login := getLogin;
	funcionario[i].senha := getSenha;
	inserirLinha;	
	writeln('FUNCIONARIO CADASTRADO COM SUCESSO');
	finalizarMenu;
end;

//metodo para definir um funcionario 'fantasma' e assim conseguirmos acessar o MenuFuncionario.
procedure setFuncionarioAdmin(var funcionario : TListaFuncionario; var i: integer);
begin	
	inc(i);
	funcionario[i].login := 'admin';
	funcionario[i].nome := '---';
	funcionario[i].cpf := '000';
	funcionario[i].senha := 'admin';
	funcionario[i].cargo := 'Administrador';
end;

//metodo para listar TODOS os funcionarios
procedure listarFuncionarios(funcionario: TListaFuncionario; qtde_funcionario : integer);
var
i : integer;
begin
	clrscr;
	writeln('LISTA DE FUNCIONARIOS');
	inserirLinha;
	for i := 1 to qtde_funcionario do
		begin
			writeln('CARGO: ', funcionario[i].cargo, ' - NOME: ', funcionario[i].nome);
		end;
	inserirLinha;
	finalizarMenu;
end; 

//metodo para listar TODOS os clientes cadastrados.
procedure listarClientes(cliente: TListaCliente; qtde_cliente : integer);
var
i : integer;
begin
	clrscr;
	writeln('LISTA DE CLIENTES');
	inserirLinha;
	for i := 1 to qtde_cliente do
		begin
			writeln('CONTA: ', cliente[i].num_conta, ' - NOME: ', cliente[i].nome);
		end;
	inserirLinha;
	finalizarMenu;
end; 

//metodo para apresentar os dados de um funcionario, após uma busca do indice deste funcionario
procedure consultarFuncionario(funcionario: TListaFuncionario; qtde_funcionario: integer);
var
index : integer;
begin
	clrscr;		
	index := getIndexCPFfunc(funcionario, qtde_funcionario);	
	if (index <> 0) then
		begin
			writeln('DADOS FUNCIONARIO');
			inserirLinha;			
			writeln('NOME: ', funcionario[index].nome);
			writeln('CPF: ', funcionario[index].cpf);
			writeln('CARGO: ', funcionario[index].cargo);
			writeln('LOGIN: ', funcionario[index].login);
		end
	else
		writeln('FUNCIONARIO NAO ENCONTRADO');
	inserirLinha;
	finalizarMenu;
end;

//metodo para apresentar os dados de um cliente
procedure printInfoCliente(cliente: TListaCliente; index: integer);
begin
	if (index <> 0) then
			begin
				clrscr;
				writeln('DADOS CLIENTE');
				inserirLinha;
				writeln('CONTA: ', cliente[index].num_conta);
				writeln('NOME: ', cliente[index].nome);
				writeln('CPF: ', cliente[index].cpf);
				writeln('DATA NASCIMENTO: ', cliente[index].data_nascimento);
				writeln('CONTATO: ', cliente[index].contato);
				writeln('SALDO: R$ ', cliente[index].saldo :2:2);
			end
		else
			writeln('CLIENTE NAO ENCONTRADO');
end;

//metodo para apresentar os dados de um cliente, após uma busca do indice deste cliente
procedure consultarCliente(cliente: TListaCliente; qtde_cliente: integer);
var
index, op : integer;
begin
	clrscr;
	repeat
		clrscr;
		writeln('OPCAO:');
		inserirLinha;
		writeln('1 - CONSULTAR CLIENTE POR CONTA');
		writeln('2 - CONSULTAR CLIENTE POR CPF');
		writeln('3 - VOLTAR');
		inserirLinha;
		write('>>> ');			
		readln(op);
		case (op) of
			1: index := getIndexConta(cliente, qtde_cliente);   
			2: index := getIndexCPF(cliente, qtde_cliente)   
			else
				break;
		end;
		printInfoCliente(cliente, index);
		inserirLinha;
		finalizarMenu;
	until (false);	
end;

//metodo para apresentar o saldo de um determinado cliente.
procedure consultarSaldo(cliente : TListaCliente; i : integer);
begin
	writeln('SALDO: R$ ', cliente[i].saldo :2:2);
	finalizarMenu;
end;

//metodo para efetuar Deposito. OBS: altera saldo de uma conta.
procedure efetuarDeposito(var cliente : TListaCliente; i : integer);
var
	deposito : real;
begin
	clrscr;
	writeln('DEPOSITO');
	inserirLinha;
	deposito := getValor;
	cliente[i].saldo := cliente[i].saldo + deposito;
	writeln('TRANSAÇÃO REALIZADA COM SUCESSO');
	finalizarMenu;
end;

//metodo para efetuar Saque. OBS: altera saldo de uma conta.
procedure efetuarSaque(var cliente : TListaCliente; i : integer);
var
	saque, saldo : real;
begin
	clrscr;
	writeln('SAQUE');
	inserirLinha;
	saque := getValor;	
	saldo := cliente[i].saldo - saque;
	if (saldo < 0) then
		writeln('SALDO INSUFICIENTE')                                        
	else
		begin
			cliente[i].saldo := saldo;	
			writeln('TRANSAÇÃO REALIZADA COM SUCESSO');
		end;
	finalizarMenu;
end;

//metodo para efetuar transferencia. OBS: altera saldo de duas contas.
procedure efetuarTransferencia(var cliente : TListaCliente; i : integer; qtde_cliente: integer);
var
j : integer;
transf, saldo : real;
Begin
	j := getIndexConta(cliente, qtde_cliente);
	transf := getValor;
	saldo := cliente[i].saldo - transf;
	if (saldo < 0) then
		writeln('SALDO INSUFICIENTE')                                        
	else if (j <> 0) then
		begin
			cliente[i].saldo := saldo;
			cliente[j].saldo := cliente[j].saldo + transf;	
			writeln('TRANSAÇÃO REALIZADA COM SUCESSO');
		end
	else
		writeln('CONTA PARA TRANSFERENCIA INEXISTENTE');
	finalizarMenu;	
End;  

// metodo para trazer o menu funcionario
procedure menuFuncionario(var cliente : TListaCliente; var funcionario : TlistaFuncionario;																	
													var qtde_cliente: integer; var qtde_funcionario: integer);
var
	op : integer;
begin	
	repeat		
		clrscr;		
		writeln('ACESSO FUNCIONARIO');
		inserirLinha;
		writeln('1 - CADASTRAR CLIENTE');		
		writeln('2 - CONSULTAR CLIENTE');
		writeln('3 - LISTAR CLIENTES');		
		inserirLinha;
		writeln('4 - CADASTRAR FUNCIONARIO');
		writeln('5 - CONSULTAR FUNCIONARIO');
		writeln('6 - LISTAR FUNCIONARIOS');				
		inserirLinha;
		writeln('7 - VOLTAR');
		inserirLinha;
		write('>>> ');
		readln(op);
		case (op) of
			1: getCliente(cliente, qtde_cliente);
			2: consultarCliente(cliente, qtde_cliente);
			3: listarClientes(cliente, qtde_cliente);
			4: getFuncionario(funcionario, qtde_funcionario);
			5: consultarFuncionario(funcionario, qtde_funcionario);
			6: listarFuncionarios(funcionario, qtde_funcionario);		
			7: break;
		end;
	until (false);
end;

// metodo para trazer o Menu Cliente
procedure menuCliente(var cliente : TlistaCliente; i : integer; qtde_cliente : integer);
var
	op : integer;
begin
	repeat		
		clrscr;		
		writeln('ACESSO CLIENTE');
		inserirlinha;
		writeln('1 - CONSULTAR SALDO');
		writeln('2 - DEPOSITO');
		writeln('3 - SAQUE');
		writeln('4 - TRANSFERENCIA');
		writeln('5 - VOLTAR');
		inserirLinha;
		write('>>> ');
		readln(op);
		case (op) of
			1: consultarSaldo(cliente, i);
			2: efetuarDeposito(cliente, i);
			3: efetuarSaque(cliente, i);
			4: efetuarTransferencia(cliente, i, qtde_cliente);
			5: break;
		end;
	until (false);
end;

// metodo para trazer o Menu Inicial do Programa
procedure menuInicial;		
var //variaveis locais
	op, qtde_cliente, qtde_funcionario: integer;
	cliente : TListaCliente;
	funcionario : TListaFuncionario;
	i : integer;
begin
	i := 0;
	qtde_cliente := 0;
	qtde_funcionario := 0;
	setFuncionarioAdmin(funcionario, qtde_funcionario);	
	repeat
		textbackground(red);
		clrscr;		
		writeln('ESCOLHA UMA OPCAO:');
		inserirLinha;
		writeln('1 - ACESSO FUNCIONARIO');
		writeln('2 - ACESSO CLIENTE');
		writeln('3 - FINALIZAR');
		inserirLinha;
		write('>>> ');
		readln(op);
		case (op) of
			1:  while (autenticacaoSenhaFuncionario(funcionario, qtde_funcionario)) do						
						begin
							menuFuncionario(cliente, funcionario, qtde_cliente, qtde_funcionario);
							break;
						end;	
			2:  begin
			    	i := autenticacaoSenhaCliente(cliente, qtde_cliente);
						if (i <> 0) then	
					  	begin
								menuCliente(cliente, i, qtde_cliente);						  	
						  end;					
					end;												
			3: break;
		end;		
	until (false);	
end;	

// metodo para inicializar o programa
procedure inicializar;
begin
	clrscr;	
	gotoxy(45,2);
	inserirLinha;	
	gotoxy(47,3);
	writeln('BEM VINDO AO BANCO DJJLT S.A.');	
	gotoxy(49,4);
	writeln('ONDE OS JUROS NAO EXISTEM');	
	gotoxy(45,5);
	inserirLinha;
	gotoxy(52,6);
	writeln('[ENTER] PARA ENTRAR');		
	readln();	
end;

// metodo para finalizar o programa
procedure finalizar;
begin
	clrscr;
	gotoxy(47,2);
	writeln('AGRADECEMOS SUA PREFERENCIA!');
	gotoxy(45,3);
	inserirLinha;
	gotoxy(50,4);
	writeln('TRABALHO REALIZADO POR:');
	gotoxy(43,5);
	writeln('DENNIS, JOAO, JEFFERSON, LUAN, THIAGO');
	gotoxy(45,6);
	inserirLinha;
	gotoxy(48,7);
	finalizarMenu;	
end;

//programa principal
Begin		
	textbackground(red);
	textcolor(white);
	inicializar;
	menuInicial;
	finalizar;
End.