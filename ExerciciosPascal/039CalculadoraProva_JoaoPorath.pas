Program Operacoes_prova;
var
valor1, valor2: real;
operacao, repetir:char;
i: integer;
verificador: boolean;

Begin
  repetir := 'S';
  while (upcase(repetir) <> 'N') do
  begin                                                        
    writeln('-------------------------------------');
		write('Primeiro valor: ');                
    readln(valor1);
    write('Segundo valor: ');
    readln(valor2);
    writeln('Entre com um dos seguintes operadores: '); 
    writeln('[+] SOMAR; [-] SUBTRAIR; [*] MULTIPLICAR; [/] DIVIDIR');
	writeln('[P] VERFICAR SE PAR; [N] VERIFICAR SE PRIMO; [I] VERIFICAR SE IMPAR; [E] PRIMEIRO VALOR AO QUADRADO');
    write('--> ');
	readln(operacao);
    case (upcase(operacao)) of        
        '+':	writeln('Soma = ',valor1 + valor2:2:2);
        '-':	writeln('Subtracao = ',valor1 - valor2:2:2);
        '*':    writeln('Multiplicacao = ',valor1*valor2:2:2);
        '/':	begin
                    if (valor2 = 0) then
                    writeln('Divisao por Zero!')
                    else
                    writeln('Divisao = ',valor1/valor2:2:2);
                end;
        'P':    begin
                    if (int(valor1) mod 2 = 0) then
                        writeln('O numero ', int(valor1),' eh par!')
                    else
                        writeln('O numero ', int(valor1),' nao eh par!');
                    if (int(valor2) mod 2 = 0) then
                        writeln('O numero ', int(valor2),' eh par!')
                    else
                        writeln('O numero ', int(valor2),' nao eh par!');
                end;
        'N':    begin
                    verificador := true;
                    for i := 2 to (int(valor1)-1) do    
                    if (int(valor1) mod i = 0) then         
                    begin
                        verificador := false;
                        break;
                    end;   
                    if ((verificador = false) or (int(valor1) = 1)) then   
                        writeln('O numero ',int(valor1), ' nao eh primo!')    
                    else  
                        writeln('O numero ',int(valor1), ' eh primo!');
                    
                    verificador := true;
                    for i := 2 to (int(valor2)-1) do    
                    if (int(valor2) mod i = 0) then         
                    begin
                        verificador := false;
                        break;
                    end;   
                    if ((verificador = false) or (int(valor2) = 1)) then   
                        writeln('O numero ', int(valor2), ' nao eh primo!')    
                    else  
                        writeln('O numero ', int(valor2), ' eh primo!');
                end;
        'I':    begin
                    if (int(valor1) mod 2 <> 0) then
                        writeln('O numero ', int(valor1),' eh impar!')
                    else
                        writeln('O numero ', int(valor1),' nao eh impar!');
                    if (int(valor2) mod 2 <> 0) then
                        writeln('O numero ', int(valor2),' eh impar!')
                    else
                        writeln('O numero ', int(valor2),' nao eh impar!');
                end;
        'E':    writeln('O primeiro valor elevado ao quadrado eh igual a ',valor1*valor1:2:2); 
    end;
    writeln('-------------------------------------');
	writeln('Deseja realizar outra operacao? (S/N)');
    readln(repetir);
  end;
  writeln('PROGRAMA FINALIZADO!');
  readln();
End.