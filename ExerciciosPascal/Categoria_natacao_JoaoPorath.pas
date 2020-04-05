Program Nadador ;
var
idade:integer;
Begin
  writeln('Informe sua idade');
  readln(idade);
  case (idade) of
    0..4:		writeln('Nao tem categoria');
    5..7: 	writeln('Infantil A');
    8..10:	writeln('Infantil B');
    11..13:	writeln('Juvenil A');
    14..17: writeln('Juvenil B');
    else
    writeln('Senior');
  end;
End.