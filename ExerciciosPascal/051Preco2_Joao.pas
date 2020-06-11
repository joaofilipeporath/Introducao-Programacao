Program PrPreco;

function getValorFinal(valor : real; taxa : real): real;
begin
    valor := valor + (valor * taxa);
    getValorFinal := valor;       		   
end;

function getValor: real;
VAR
valor : real;
begin
    write('VALOR ORIGINAL: ');
    readln(valor);
    getValor := valor;   
end;

procedure menu;
var
valor : real;
op : integer;
begin
    valor := getValor;
    repeat       
        writeln('1 - VALOR FINAL A VISTA');
        writeln('2 - VALOR FINAL A PRAZO');
        writeln('3 - ALTERAR VALOR ORIGINAL');
        writeln('4 - ENCERRAR');
        readln(op);
        case (op) of
            1: writeln('VALOR A VISTA: R$', getValorFinal(valor, -0.08):2:2);
            2: writeln('VALOR A PRAZO: 3X R$', getValorFinal(valor, +0.15)/3 :2:2, ' = R$ ', getValorFinal(valor, +0.15):2:2);
            3: valor := getValor;
            4: break;
        end;    
    until (false);        
end;


Begin
    menu;    
End.