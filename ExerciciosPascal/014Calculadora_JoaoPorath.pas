Program Calculadora ;
uses crt;
var
valor1, valor2: real;
operacao:char;

Begin
  while (operacao <> 'F') and (operacao <> 'f') do
  begin                                                        
    writeln('Primeiro valor');                
    readln(valor1);
    writeln('Segundo valor');
    readln(valor2);
    writeln('Entre com o operador [+ - * /]');
    readln(operacao);
    case (operacao) of
      'F':	writeln('FINALIZADO');
      'f':	writeln('FINALIZADO');
			'+':	writeln('Soma = ',valor1 + valor2);
      '-':	writeln('Subtracao = ',valor1 - valor2);
      '*':	writeln('Multiplicacao = ',valor1*valor2);
      '/':	begin
        if (valor2 = 0) then
        writeln('Divisao indeterminada')
        else
        writeln('Divisao = ',valor1/valor2);
      end;
    end;
  end;
  readln();
End.