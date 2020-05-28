Program prEscolaridade;
uses crt;

Type
    Tperson = record
        age : integer;
        schooling : integer;
    end;

    TPeopleList = array[1..100] of Tperson;		

// funcao para identificar nome das escolaridades
function nameofSchooling(i : integer) : string;
var
    nameSchooling : string;
begin
    case (i) of
        1 : nameSchooling := 'Ensino Basico';
        2 : nameSchooling := 'Ensino Medio';
        3 : nameSchooling := 'Ensino Superior';
        4 : nameSchooling := 'Pos Graduacao';
        5 : nameSchooling := 'Mestrado';
        6 : nameSchooling := 'Doutorado';
    end;
    nameofSchooling := nameSchooling;    
end;

// funcao para obter idade
function getAge: integer;
    var
        age : integer;
    begin
        writeln('IDADE [ou Digite 0 para encerrar e voltar ao MENU]');
        write('>> ');
        readln(age);                                                     
        getAge := age;		
    end;
		
// funcao para obter escolaridade
function getSchooling : integer;
    var
        schooling : integer;
    begin
        repeat
            writeln('ESCOLARIDADE');           
            writeln('[1]: ', nameofSchooling(1));
            writeln('[2]: ', nameofSchooling(2));
            writeln('[3]: ', nameofSchooling(3));
            writeln('[4]: ', nameofSchooling(4));
            writeln('[5]: ', nameofSchooling(5));
            writeln('[6]: ', nameofSchooling(6));
            write('>> ');
            readln(schooling);
            writeln('-------------------------');            
        until (schooling >= 1) and (schooling <= 6);
        getSchooling := schooling;		
    end;

// funcao para armazenar as pessoas
function getPeople(var i : integer) : TPeopleList;
    var
    		people : TPeopleList;
		begin        
            repeat
                inc(i);
                writeln('-------------------------');
                writeln('PESSOA NUMERO ', i);
                people[i].age := getAge;
                if (people[i].age <> 0) then
                    people[i].schooling := getSchooling                		        
            until (people[i].age = 0);
            dec(i);
            getPeople := people;
		end;
		
// funcao para obter numero de pessoas por escolaridade e limite de idade
function getPeoplePerSchooling(age, schooling, n : integer; people : TPeopleList) : integer;
		var
			i, number : integer;		
		begin
            number := 0;
            for i := 1 to n do
                begin
                    if (people[i].schooling = schooling) and (people[i].age < age) then
                        begin
                            inc(number);										
                        end;
                end;
            getPeoplePerSchooling := number;					 		
		end;

// procedimento para imprimir Pessoas por Escolaridade
procedure printPeoplePerSchooling (n : integer; people : TPeopleList);
    var
        schooling  : array[1..6] of integer;
        i : integer;
    begin
        writeln('-------------------------');
        for i := 1 to 6 do
            begin
                schooling[i] := getPeoplePerSchooling(200, i, n, people);
                writeln(nameofSchooling(i), ': ', schooling[i], ' pessoas (', schooling[i] / n * 100 :2:2, '%).');
            end;               
    end;

// funcao para imprimir maior e menor grau de escolaridade
procedure printMajorAndMinorNumberSchooling(n : integer; people : TPeopleList);
    var
    i, major, minor, i_major, i_minor : integer;
    begin
        writeln('-------------------------');
        major := getPeoplePerSchooling(200, 1, n, people);
        minor := getPeoplePerSchooling(200, 1, n, people);
        for i := 1 to 6 do
            begin
                if (getPeoplePerSchooling(200, i, n, people) >= major) then
                    begin
                        major := getPeoplePerSchooling(200, i, n, people);
                        i_major := i;                        
                    end;
                if (getPeoplePerSchooling(200, i, n, people) <= minor) then
                    begin
                        minor := getPeoplePerSchooling(200, i, n, people);
                        i_minor := i;
                    end;
            end;
        writeln(nameofSchooling(i_major), ' tem o maior numero de pessoas (', major, ' pessoas).');
        writeln(nameofSchooling(i_minor), ' tem o menor numero de pessoas (', minor, ' pessoas).');            
    end;

//
procedure printMedia(schooling, n : integer; people : TPeopleList);
    var
        age, number, i : integer;
        
    begin
        age := 0;
        number := 0;
        for i := 1 to n do
            begin
                if (people[i].schooling = schooling) then
                    begin
                        age := age + people[i].age;
                        inc(number);
                    end;
            end;
        writeln('Media de idade das pessoas que concluiram o ', nameofSchooling(schooling), ' = ', age / number, 'anos.');    
    end;

procedure printMinorAge(schooling, n : integer; people : TPeopleList);
    var
        minor_age, i : integer;
    begin        
        for i := 1 to n do
            begin
                if (people[i].schooling = schooling) then
                    begin
                        minor_age := people[i].age;
                        break;
                    end
            end;

        for i := 1 to n do
            begin
                if (people[i].schooling = schooling) and (people[i].age < minor_age) then
                    begin
                        minor_age := people[i].age;
                    end
            end;
        writeln('A pessoa com menor idade com ', nameofSchooling(schooling), ' concluido tem ', minor_age, ' anos.'); 
    end;


procedure menu;
    Var
        people : TPeopleList;
        n : integer;
        op : integer;
    begin      
        n := 0;        
        repeat           
						writeln('-------------------------');
						writeln('          MENU');
						writeln('-------------------------');						
						writeln('1 - Armazenar pessoas.');
            writeln('2 - Imprimir numero de pessoas por escolaridade.');
            writeln('3 - Imprimir escolaridade com maior e menor numero de pessoas.');
            writeln('4 - Imprimir percentual de pessoas que concluiram o ', nameofSchooling(3), ' antes dos 24 anos.');
            writeln('5 - Imprimir media de idade da pessoas que concluiram o ', nameofSchooling(5), '.');
            writeln('6 - Imprimir menor idade da pessoa com ', nameofSchooling(6), '.');
            writeln('0 - SAIR');
						write('>> ');
						readln(op);
            case (op) of
                1: people := getPeople(n);
                2: printPeoplePerSchooling(n, people);
                3: printMajorAndMinorNumberSchooling(n, people);
                4: writeln(getPeoplePerSchooling(24, 3, n, people) / n * 100 :2:2, '% das pessoas concluiram o ', nameofSchooling(3), ' antes dos 24 anos');
                5: printMedia(5, n, people);
                6: printMinorAge(6, n, people);
            end;
        until (op = 0);
    end;

Begin
		menu;
End.