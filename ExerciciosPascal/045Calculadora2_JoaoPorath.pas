Program prCalMetodo;

function getValor(ordem: integer): real;
    var //variaveis locais
        vl: real;
    begin
        write('Informe o valor ', ordem, ': ');
        readln(vl);
        getValor := vl;    
    end;

function getSoma(vl1, vl2: real): real;
    begin
        getSoma := vl1 + vl2;    
    end;

function getSubtracao(vl1, vl2: real): real;
    begin
        getSubtracao := vl1 - vl2;    
    end;

function getMultiplicacao(vl1, vl2: real): real;
    begin
        getMultiplicacao := vl1 * vl2;    
    end;

function getDivisao(vl1, vl2: real): real;
    begin
        if (vl2 <> 0) then
            getDivisao := vl1 / vl2
        else
            getDivisao := 0;   
    end;

procedure getCalculadora;
var
    vl1, vl2 : real;
begin
    vl1 := getValor(1);
    vl2 := getValor(2);
    writeln('Soma = ', getSoma(vl1, vl2):2:2);
    writeln('Subtracao = ', getSubtracao(vl1, vl2):2:2);
    writeln('Multiplicacao = ', getMultiplicacao(vl1, vl2):2:2);
    writeln('Divisao = ', getDivisao(vl1, vl2):2:2);
end;

Begin   //programa principal
    getCalculadora;
    readln;
End.