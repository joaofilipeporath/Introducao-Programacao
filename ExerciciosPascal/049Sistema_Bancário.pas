Program Sistema_Bancario;

Type
    TCliente = record
        num_conta : string[6];
        nome : string[25];
        cpf : string[11];
        data_nascimento : string[8];
        contato : string[14];
        senha : string[4];
        saldo : real;
    end;

    TListaCliente = array[1..100] of TCliente;

procedure insertLinha;
begin
    writeln('--------------------------');
end;

function getNumConta: string;
var
    x : string;
begin
    writeln('NUMERO DA CONTA: ');
    readln(x);
    getNumConta := x;    
end;

function getNome: string;
var
    x: string;
begin
    writeln('NOME: ');
    readln(x);
    getNome := x;    
end;

function getCPF: string;
var
    x: string;
begin
    writeln('CPF: ');
    readln(x);
    getCPF := x;    
end;

function getDataNascimento: string;
var
    x: string;
begin
    writeln('DATA DE NASCIMENTO: ');
    readln(x);
    getDataNascimento := x;    
end;

function getContato: string;
var
    x: string;
begin
    writeln('CONTATO: ');
    readln(x);
    getContato := x;    
end;

function getSenha: string;
var
    x: string;
begin
    writeln('SENHA: ');
    readln(x);
    getSenha := x;    
end;

procedure getCliente(var cliente : TListaCliente; var i: integer);
begin
    inc(i);
    cliente[i].num_conta := getNumConta;
    cliente[i].nome := getNome;
    cliente[i].cpf := getCPF;
    cliente[i].data_nascimento := getDataNascimento;
    cliente[i].contato := getContato;
    cliente[i].senha := getSenha;
end;

function getIndex(cliente : TListaCliente; qtde_cliente: integer):integer;
var
    i, indexConta : integer;
    conta : string;
begin
    conta := getNumConta;
    for i := 1 to qtde_cliente do
        if (cliente[i].num_conta = conta
        ) then
            begin
                indexConta := i;
                break;
            end;
    getIndex := indexConta;
end;

function verificarSenha(cliente : TListaCliente; qtde_cliente: integer) : boolean;
var
    verificador : boolean;
    senha : string;
    i : integer;
begin
    verificador := false;
    if (getIndex(cliente, qtde_cliente) <> 0) then
				begin
            i := getIndex(cliente, qtde_cliente);
            senha := getSenha;
            if (cliente[i].senha = senha) then
                verificador := true;    
        end;   
    verificarSenha := verificador;    
end;

procedure menuCliente(var cliente : TListaCliente; var qtde_cliente: integer);
var
    op : integer;
begin
    repeat
        clrscr;
        verificarSenha(cliente, qtde_cliente);
        insertLinha;
				writeln('ACESSO CLIENTE');
        insertLinha;
				writeln('1 - CONSULTAR SALDO');
        writeln('2 - DEPOSTIO');
        writeln('3 - SAQUE');
        writeln('4 - TRANSFERENCIA');
        writeln('5 - VOLTAR');    
        readln(op);
        case (op) of
            1: (*consultarSaldo*);
            2: (*realizarDeposito*);
            3: (*realizarSaque*);
            4: (*realizarTransferência*);
            5: break;
        end;        
    until (false);         
end;

procedure menuFuncionario(var cliente : TListaCliente; var qtde_cliente: integer);
var
    op : integer;
begin
    repeat
        clrscr;
        insertLinha;
		writeln('ACESSO FUNCIONARIO');
        insertLinha;
		writeln('1 - CADASTRAR CLIENTE');
        writeln('2 - LISTAR CLIENTES');
        writeln('3 - CONSULTAR CLIENTE');
        writeln('4 - VOLTAR');    
        readln(op);
        case (op) of
            1: getCliente(cliente, qtde_cliente);
            2: (*listarClientes*);
            3: (*consultarCliente*);
            4: break;
        end;        
    until (false);         
end;

procedure menuInicial;
var
    op, qtde_cliente : integer;
    cliente : TListaCliente;
begin
    qtde_cliente := 0;
    repeat        
        clrscr;
        insertLinha;
		writeln('ESCOLHA UMA OPCAO');
        insertLinha;
		writeln('1 - ACESSO FUNCIONARIO');
        writeln('2 - ACESSO CLIENTE');
        writeln('3 - FINALIZAR');    
        readln(op);
        case (op) of
            1: menuFuncionario(cliente, qtde_cliente);
            2: menuCliente(cliente, qtde_cliente);
            3: break;

        end;        
    until (false);   
end;

procedure inicializar;
begin
    clrscr;
    insertLinha;
    writeln(' BEM VINDO AO BANCO SENAC ');
    insertLinha;
	readln();
end;

procedure finalizar;
begin
    clrscr;
    insertLinha;
    writeln('       VOLTE SEMPRE       ');
    insertLinha;
    readln();
end; 

//main
Begin
    inicializar;        
    menuInicial;
    finalizar;    
End.