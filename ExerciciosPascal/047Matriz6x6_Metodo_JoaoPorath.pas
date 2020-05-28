Program prMatriz6x6;
type 
    TMatriz = array[1..6,1..6] of integer;
    
//função para retornar o valor a ser preenchido em uma celila da matriz
function getValorCelula(i,j:integer): integer;
var
   vl:integer;
begin
         writeln('Valor para celula [', i, ',',j, ']');
         readln(vl);
         getValorCelula := vl; 
end;

 

procedure carregarMatriz(var mat:TMatriz);
var
   l,c:integer;
begin
         for l := 1 to 6 do
            for c := 1 to 6 do
              mat[l,c] := getValorCelula(l,c);      
end;

 

function getSomaDiagonalPrincipal(mat:TMatriz): integer;
var
   l, soma:integer;
begin
     soma := 0;
         for l := 1 to 6 do
        soma := soma + mat[l,l];
     
         getSomaDiagonalPrincipal := soma;
end;

 

function getMenorValorPar(mat:TMatriz): integer;
var
   l, c, menor:integer;
   achou:boolean;
begin
         achou := false;
         
         for l := 1 to 6 do
            begin
                 if (achou) then
                   break; 
                     for c := 1 to 6 do
                       if (mat[l,c] mod 2 = 0) then
                     begin
                                      menor := mat[l,c];
                                            achou := true;
                                          break;
                                 end;
                end;
            
         if (not achou) then
           getMenorValorPar := -1
         else
             begin
                 for l := 1 to 6 do
                   for c := 1 to 6 do
                         if (mat[l,c] mod 2 = 0) then
                           if (mat[l,c] < menor) then
                             menor := mat[l,c]; 
        
                 getMenorValorPar := menor;
             end;
end;

 

function isPrimo(Valor: Integer):boolean;
var 
    i, cnt: integer;
begin
     isPrimo := false;
     
         if  Valor = 0 then
       exit;
     
         cnt := 0;
     for i:= 1 to Valor do 
            begin
            if  (Valor mod i) = 0 then
              cnt := cnt + 1;
        end;
     if  cnt = 2 then
        isPrimo := true;
end;

 

procedure listarPrimos(mat:TMatriz);
var
   l,c:integer;
begin
     for l := 1 to 6 do
            for c := 1 to 6 do
                  if (isPrimo(mat[l,c])) then
                    writeln(mat[l,c]);
end;

 

procedure listarMatriz(mat:TMatriz);
var
  l,c:integer;
begin
         for l := 1 to 6 do
            begin
                 for c:= 1 to 6 do
                    write(mat[l,c], ' ');
                
                 writeln('');
            end;
end;

 

function getMatrizTransposta(mat:TMatriz): TMatriz;
var
  l,c:integer;
  matAux:TMatriz;
begin
         for l := 1 to 6 do
            for c := 1 to 6 do
               matAux[l,c] := mat[c,l];
         
        getMatrizTransposta := matAux; 
end; 

 

procedure menu;
var
   op, ret:integer;
   mat6x6, matTrasp: TMatriz;
begin 
         repeat
              writeln('');
                    writeln('---------------------------------------');
                    writeln('0 - Sair');
              writeln('1 - Carregar matriz');
              writeln('2 - Soma da diagonal principal');
              writeln('3 - Menor valor par');
              writeln('4 - Mostrar numeros primos da matriz');
              writeln('5 - Matriz transposta');
              readln(op);
              case (op) of
                  1: carregarMatriz(mat6x6); 
                  2: writeln('Soma diagonal principal = ',
                             getSomaDiagonalPrincipal(mat6x6));
                  3: begin
                          ret := getMenorValorPar(mat6x6);
                          if (ret > 0) then
                            writeln('Menor valor par = ', ret)
                          else
                              writeln('Nao ha valores pares!!');
                     end;
                  4: listarPrimos(mat6x6);
                  5: begin
                          listarMatriz(mat6x6);
                          matTrasp := getMatrizTransposta(mat6x6);
                          listarMatriz(matTrasp);
                     end;
              end;
         until(op = 0);
end;
    
//main
Begin
     menu;
End.