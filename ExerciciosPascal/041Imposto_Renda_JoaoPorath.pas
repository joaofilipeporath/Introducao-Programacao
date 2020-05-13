Program Imposto_Renda;
uses crt;

Type
    TContribuinte = record
        nome: string[25];
        cpf: integer;
        uf: string[2];
        imposto,        
        renda_anual: real;        
    end;

    TListaContribuintes = array[1..100] of TContribuinte;

Var
    contribuinte : TListaContribuintes;
    cont, i, cpf, i_maior_imposto, i_menor_renda_RS : integer;
    repetir : char;
    maior_imposto, menor_renda_RS, total_imposto_SC, total_imposto_RS, total_imposto_PR: real;

Begin
    cont := 0;
    //ENTRADA
    repeat
        inc(cont);
        writeln('----------');
        write('NOME: ');
        readln(contribuinte[cont].nome);
        write('CPF: ');
        readln(contribuinte[cont].cpf);
        repeat        
						write('UF [SC, RS ou PR]: ');
		        readln(contribuinte[cont].uf);
        until (contribuinte[cont].uf = 'RS') or (contribuinte[cont].uf = 'SC') or (contribuinte[cont].uf = 'PR');
        write('RENDA ANUAL: ');
        readln(contribuinte[cont].renda_anual);
        repeat
            write('Cadastrar novo contribuinte? (S/N) ');
            readln(repetir);            
        until ((upcase(repetir) = 'S') or (upcase(repetir) = 'N'));                
    until (upcase(repetir) = 'N');
    
    //PROCESSSAMENTO
                                                                                            
    maior_imposto := 0;
    i_maior_imposto := 0;
    menor_renda_RS := 999999999;
    i_menor_renda_RS := 0;
    total_imposto_SC := 0;
    total_imposto_PR := 0;
    total_imposto_RS := 0;

    for i := 1 to cont do
    begin
        begin
            if (contribuinte[i].renda_anual <= 4000) then            
                contribuinte[i].imposto := contribuinte[i].renda_anual * 0.000           
            else if (contribuinte[i].renda_anual <= 9000) then
                contribuinte[i].imposto := contribuinte[i].renda_anual * 0.058
            else if (contribuinte[i].renda_anual <= 25000) then
                contribuinte[i].imposto := contribuinte[i].renda_anual * 0.150
            else if (contribuinte[i].renda_anual <= 35000) then
                contribuinte[i].imposto := contribuinte[i].renda_anual * 0.275
            else
                contribuinte[i].imposto := contribuinte[i].renda_anual * 0.300;
        end;        
        
        if (contribuinte[i].imposto > maior_imposto) then
            begin
                maior_imposto := contribuinte[i].imposto;
                i_maior_imposto := i;
            end;
        
        if ((contribuinte[i].renda_anual < menor_renda_RS) and (contribuinte[i].uf = 'RS')) then
            begin
                menor_renda_RS := contribuinte[i].renda_anual;
                i_menor_renda_RS := i;
            end;

        if (contribuinte[i].uf = 'SC') then
            total_imposto_SC := total_imposto_SC + contribuinte[i].imposto;

        if (contribuinte[i].uf = 'RS') then
            total_imposto_RS := total_imposto_RS + contribuinte[i].imposto;

        if (contribuinte[i].uf = 'PR') then
            total_imposto_PR := total_imposto_PR + contribuinte[i].imposto;
    end;

    //SAIDA    
    // RESPOSTA 1: 
    repeat
        writeln('----------');
        write('CONSULTA CONTRIBUINTE (DIGITE CPF): ');
        readln(cpf);
        for i := 1 to cont do
        begin
            if (contribuinte[i].cpf = cpf) then
            begin
                writeln('NOME: ', contribuinte[i].nome);
                writeln('CPF: ', contribuinte[i].cpf);
                writeln('UF: ', contribuinte[i].uf);
                writeln('RENDA ANUAL: ', contribuinte[i].renda_anual:2:2);
                writeln('IMPOSTO: ', contribuinte[i].imposto:2:2);
                break;                
            end;            
        end;        
        repeat
            writeln('----------');
						write('Consultar outro contribuinte? (S/N) ');
            readln(repetir);            
        until ((upcase(repetir) = 'S') or (upcase(repetir) = 'N'));
    until (upcase(repetir) = 'N');

    // RESPOSTA 2:
    writeln('----------');
    writeln ('CONTRIBUINTE COM MAIOR IMPOSTO A PAGAR');
    writeln('NOME: ', contribuinte[i_maior_imposto].nome);
    writeln('CPF: ', contribuinte[i_maior_imposto].cpf);
    writeln('UF: ', contribuinte[i_maior_imposto].uf);
    writeln('RENDA ANUAL: ', contribuinte[i_maior_imposto].renda_anual:2:2);
    writeln('IMPOSTO: ', contribuinte[i_maior_imposto].imposto:2:2);

    // RESPOSTA 3:
    writeln('----------');
    writeln ('CONTRIBUINTE DO RS COM MENOR RENDA');
    writeln('NOME: ', contribuinte[i_menor_renda_RS].nome);
    writeln('CPF: ', contribuinte[i_menor_renda_RS].cpf);
    writeln('UF: ', contribuinte[i_menor_renda_RS].uf);
    writeln('RENDA ANUAL: ', contribuinte[i_menor_renda_RS].renda_anual:2:2);
    writeln('IMPOSTO: ', contribuinte[i_menor_renda_RS].imposto:2:2);
    
    // RESPOSTA 4:
    writeln('----------');
    writeln('PARTICIPACAO % DE CADA ESTADO NO TOTAL DE IMPOSTOS RECOLHIDOS');
    if (total_imposto_PR + total_imposto_RS + total_imposto_SC = 0) then
        writeln('NAO FORAM RECOLHIDOS IMPOSTOS')
    else
        begin
            writeln('SC: ', 100 * total_imposto_SC/(total_imposto_PR + total_imposto_RS + total_imposto_SC):2:2,'%');
            writeln('RS: ', 100 * total_imposto_RS/(total_imposto_PR + total_imposto_RS + total_imposto_SC):2:2,'%');
            writeln('PR: ', 100 * total_imposto_PR/(total_imposto_PR + total_imposto_RS + total_imposto_SC):2:2,'%');
        end;
End.