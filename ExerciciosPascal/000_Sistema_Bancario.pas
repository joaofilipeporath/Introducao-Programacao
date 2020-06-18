Program PrBancoDJJLT;

Type
	TCliente = record
		num_conta : integer;
		nome : string[25];
		cpf : string[11];
		data_nascimento : string[10];
		contato : string[14];
		senha : string[8];
		saldo : real;
	end;
	
	TFuncionario = record
		login : string[10];
		nome : string[25];
		cpf : string[11];
		senha : string[8];
	end;
	
	TListaFuncionario = array[1..10] of TFuncionario;	
	TListaCliente = array[1..10] of TCliente;
	
procedure inserirLinha;
begin
	writeln('--------------------------------');
end;

procedure finalizarMenu;
begin
	writeln('[ENTER] PARA FINALIZAR.');
	readln();
end;

function setNumConta(i: integer): integer;
var
x : integer;
begin
	x := 100100 + i;
	writeln('NUMERO DA CONTA: ', x);	
	setNumConta := x; //retorno da funcao
end;

function getNumConta: integer;
var
	x : integer;
begin
	write('CONTA: ');
	readln(x);
	getNumConta := x; //retorno da funcao
end;

function getNome: string;
var
	x : string;
begin
	write('NOME: ');
	readln(x);
	getNome := x; //retorno da funcao
end; 

function getCPF: string;
var
	x : string;
begin
	write('CPF: ');
	readln(x);
	getCPF := x; //retorno da funcao
end;

function getDataNascimento: string;
var
	x : string;
begin
	write('DATA DE NASCIMENTO: ');
	readln(x);
	getDataNascimento := x; //retorno da funcao
end;

function getContato: string;
var
	x : string;
begin
	write('CONTATO: ');
	readln(x);
	getContato := x; //retorno da funcao
end;

function getLogin: string;
var
	x : string;
begin
	write('LOGIN: ');
	readln(x);
	getLogin := x;  //retorno da funcao
end;

function getSenha: string;
var
	x : string;
begin
	write('SENHA: ');
	readln(x);
	getSenha := x; //retorno da funcao
end;

function getIndexCPF(cliente: TListaCliente; qtde_cliente: integer): integer;
var
i, indexCPF : integer;
cpf : string;
begin
	clrscr;
	writeln('BUSCAR CLIENTE POR CPF');	
	cpf := getCPF; // informando o CPF que estou procurando.
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

function getIndexConta(cliente: TListaCliente; qtde_cliente: integer): integer;
var
i, indexConta : integer;
conta : integer;
begin
	clrscr;
	writeln('BUSCAR CLIENTE POR CONTA');	
	inserirLinha;
	conta := getNumConta; // informando o numero de conta que estou procurando.	
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

function getIndexLogin(funcionario: TListaFuncionario; qtde_funcionario: integer): integer;
var
i, indexLogin : integer;
login : string;
begin
	clrscr;
	writeln('BUSCAR FUNCIONARIO POR LOGIN');	
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

function autenticacaoSenhaCliente(cliente : TlistaCliente; qtde_cliente : integer) : integer;
var
i : integer;
senha : string;
begin
		i := getIndexConta(cliente, qtde_cliente);
		senha := getSenha;
		if (i = 0) or (cliente[i].senha <> senha) then
			begin
		 		inserirLinha;
				writeln('SENHA OU CONTA INCORRETA.');
		 		finalizarMenu;
		 		autenticacaoSenhaCliente := 0;
			end				
		else
			begin
				inserirLinha;
				writeln('ACESSO PERMITIDO.');
				finalizarMenu;
				autenticacaoSenhaCliente := i;
			end;				
end;

function autenticacaoSenhaFuncionario(funcionario : TlistaFuncionario; qtde_funcionario : integer) : boolean;
var
i : integer;
senha : string;
begin
		i := getIndexLogin(funcionario, qtde_funcionario);
		senha := getSenha;
		if (i = 0) or (funcionario[i].senha <> senha) then
			begin
				inserirLinha;
				writeln('SENHA OU LOGIN INCORRETO.');
				finalizarMenu;
				autenticacaoSenhaFuncionario := false;
			end				
		else
			begin
				inserirLinha;
				writeln('ACESSO PERMITIDO.');
				finalizarMenu;
				autenticacaoSenhaFuncionario := true;
			end;				
end;

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
	writeln('CLIENTE CADASTRADO COM SUCESSO!');
	finalizarMenu;
end;

procedure getFuncionario(var funcionario : TListaFuncionario; var i: integer); //i = qtde_Funcionario 
begin
	clrscr;
	inc(i);
	writeln('CADASTRO FUNCIONARIO');
	inserirLinha;
	funcionario[i].login := getLogin;
	funcionario[i].nome := getNome;
	funcionario[i].cpf := getCPF;
	funcionario[i].senha := getSenha;
	inserirLinha;	
	writeln('FUNCIONARIO CADASTRADO COM SUCESSO!');
	finalizarMenu;
end;

procedure setFuncionarioAdmin(var funcionario : TListaFuncionario; var i: integer);
begin	
	inc(i);
	funcionario[i].login := 'admin';
	funcionario[i].nome := 'admin';
	funcionario[i].cpf := 'admin';
	funcionario[i].senha := 'admin';
end;

procedure listarClientes(cliente: TListaCliente; qtde_cliente : integer);
var
i : integer;
begin
	for i := 1 to qtde_cliente do
		begin
			writeln('CONTA: ', cliente[i].num_conta, ' - NOME: ', cliente[i].nome);
		end;
	inserirLinha;
	finalizarMenu;
end; 

procedure consultarCliente(cliente: TListaCliente; qtde_cliente: integer);
var
index : integer;
begin
	clrscr;
	index := getIndexConta(cliente, qtde_cliente);   // identificando atraves da conta ** criar metodo para consultar Cliente atraves do CPF
	if (index <> 0) then
		begin
			writeln('DADOS CLIENTE');
			inserirLinha;
			writeln('CONTA: ', cliente[index].num_conta);
			writeln('NOME: ', cliente[index].nome);
			writeln('CPF: ', cliente[index].cpf);
			writeln('DATA NASCIMENTO: ', cliente[index].data_nascimento);
			writeln('CONTATO: ', cliente[index].contato);
			writeln('SALDO: R$ ', cliente[index].saldo);
		end
	else
		writeln('CPF NAO ENCONTRADO!');
	inserirLinha;
	finalizarMenu;
end;

procedure consultarSaldo(cliente : TListaCliente; i : integer);
begin
	writeln('SALDO: R$ ', cliente[i].saldo :2:2);
	finalizarMenu;
end;

procedure efetuarDeposito(var cliente : TListaCliente; i : integer);
var
	deposito : real;
begin
	clrscr;
	writeln('DEPOSITO');
	inserirLinha;
	write('VALOR: R$ ');
	readln(deposito);
	cliente[i].saldo := cliente[i].saldo + deposito;
	writeln(' DEPOSITO REALIZADO COM SUCESSO.');
	finalizarMenu;
end;

procedure efetuarSaque(var cliente : TListaCliente; i : integer);
var
	saque, saldo : real;
begin
	clrscr;
	writeln('SAQUE');
	inserirLinha;
	write('VALOR: R$ ');
	readln(saque);	
	saldo := cliente[i].saldo - saque;
	if (saldo < 0) then
		writeln('SALDO INSUFICIENTE.')
	else
		begin
			cliente[i].saldo := saldo;	
			writeln(' SAQUE REALIZADO COM SUCESSO.');
		end;
	finalizarMenu;
end;  

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
		writeln('2 - CADASTRAR FUNCIONARIO');
		writeln('3 - LISTAR CLIENTES');
		writeln('4 - CONSULTAR CLIENTE');
		writeln('5 - VOLTAR');
		inserirLinha;
		write('>>> ');
		readln(op);
		case (op) of
			1: getCliente(cliente, qtde_cliente);
			2: getFuncionario(funcionario, qtde_funcionario);
			3: listarClientes(cliente, qtde_cliente);
			4: consultarCliente(cliente, qtde_cliente);
			5: break;
		end;
	until (false);
end;

procedure menuCliente(var cliente : TlistaCliente; i : integer);
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
			4: (*efetuarTransferencia*);
			5: break;
		end;
	until (false);
end;



procedure menuInicial;
var
	op, qtde_cliente, qtde_funcionario: integer;
	cliente : TListaCliente;
	funcionario : TListaFuncionario;
	i : integer;
begin
	qtde_cliente := 0;
	qtde_funcionario := 0;
	setFuncionarioAdmin(funcionario, qtde_funcionario);	
	repeat
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
								menuCliente(cliente, i);						  	
						  end;					
					end;												
			3: break;
		end;		
	until (false);	
end;	

procedure inicializar;
begin
	clrscr;
	inserirLinha;
	writeln('BEM VINDO AO BANCO DJJLT S.A.');
	writeln('ONDE OS JUROS NAO EXISTEM');
	inserirLinha;
	writeln('[ENTER] PARA ENTRAR');
	readln();	
end;

procedure finalizar;
begin
	clrscr;
	writeln('AGRADECEMOS SUA PREFERENCIA!');
	inserirLinha;
	writeln('TRABALHO REALIZADO POR:');
	writeln('DENNIS, JOAO, JEFFERSON, LUAN, THIAGO');
	inserirLinha;
	finalizarMenu;	
end;

//programa principal
Begin
	inicializar;
	menuInicial;
	finalizar;
End.