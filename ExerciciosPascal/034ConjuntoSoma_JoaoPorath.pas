program prConjuntoSoma;
uses crt;
type TConjuntoInt = array[1..5] of integer;

var
vectorA: TConjuntoInt;
vectorB: TConjuntoInt;
vectorC: TConjuntoInt;
i: integer;

Begin    
		writeln('--------------');
		writeln('VECTOR A');
		for i := 1 to 5 do
    begin
        write('Index [', i,']: ');
        readln(vectorA[i]);
    end;
    writeln('--------------');
    writeln('VECTOR B');
		for i := 1 to 5 do
    begin
        write('Index [', i,']: ');
        readln(vectorB[i]);
    end;
    writeln('--------------');
    writeln('VECTOR C');
		for i := 1 to 5 do
    begin
        vectorC[i] := vectorA[i] + vectorB[i];
				writeln('Index [', i,']: ', vectorC[i]);        
    end;   
    readln();
end.