program prmatrix;
uses crt;

type
    TMat4x4 = array[1..3, 1..3] of integer;

var
    mat : TMat4x4;
    i, j : integer;

Begin
    for i := 1 to 3 do
        for j := 1 to 3 do            
						begin
                write('Elemento[', i,'][', j,']: ');
                readln(mat[i, j]);
            end;
    writeln('------------------');
    for i := 1 to 3 do
        begin
					for j := 1 to 3 do
	            begin
	                write(mat[i,j],' ');                
	            end;
	        writeln();
	      end;
    writeln('------------------');
    for i := 1 to 3 do
        for j := 1 to 3 do
            if (i = j) then
                begin
                    writeln('Elemento[', i,'][', j,'] = ', mat[i,j]);
                end;    
End.