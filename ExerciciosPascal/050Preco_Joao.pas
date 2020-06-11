Program PrPreco;

procedure getValorFinal(valor : real; tipo : string);
begin
    if (tipo = 'AVISTA') then
        begin
            writeln('VALOR A VISTA: R$ ', (valor - (valor * 0.08)):2:2);    
        end;
    if (tipo = 'APRAZO') then
        begin
            writeln('VALOR A PRAZO: 3 x R$ ', (valor + (valor * 0.15))/3 :2:2, ' = R$ ', (valor + (valor * 0.15)):2:2);    
        end;		   
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
            1: getValorFinal(valor, 'AVISTA');
            2: getValorFinal(valor, 'APRAZO');
            3: valor := getValor;
            4: break;
        end;    
    until (false);        
end;


Begin
    menu;    
End.