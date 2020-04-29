program listaMedia;
uses crt;

type conjuntoNome = array [1..20] of string;
type conjuntoMedia = array [1..20] of real;

const
alunos = 20;

var

nome : conjuntoNome;
media : conjuntoMedia;
i, j : integer;
somaNota, nota : real;

Begin
    for i := 1 to alunos do
    begin
        write('Nome [', i,']: ');
        readln(nome[i]);        
        somaNota := 0;
				for j := 1 to 3 do
        begin
            write('- Nota [', j,']: ');
            readln(nota);
            somaNota := somaNota + nota;    
        end;
        media[i] := somaNota/3;            
    end;

    for i := 1 to alunos do
    begin
        writeln('Aluno: ', nome[i], ' Media: ', media[i]:2:2);
    end;    
end.
