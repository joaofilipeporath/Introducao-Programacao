(*�Construa um algoritmo que seja capaz de identificar qual dentre os animais seguintes, foi
escolhido, atrav�s de perguntas e respostas.
Animais Poss�veis: Le�o, cavalo, baleia, avestruz, pinguim, �guia, tartaruga, crocodilo,
cobra.*)

Program Animal;
uses crt;
var
resposta: char;

Begin
  writeln('Pense em um desses animais:');
  writeln('Le�o');
  writeln('Cavalo');
  writeln('Baleia');
  writeln('Avestruz');
  writeln('Pinguim');
  writeln('�guia');
  writeln('Tartaruga');
  writeln('Crocodilo');
  writeln('Cobra');
  writeln;
  writeln('Vou descobrir que animal �: (clique enter para continuar)');
  writeln;
  readln;
  
  writeln ('O seu animal � mam�fero?');
  readln(resposta);
  if (resposta = 's') or (resposta = 'S') then
  begin
    writeln ('� quadr�pede?');
    readln (resposta);
    if (resposta = 's') or (resposta = 'S') then
    begin
      writeln ('� Carn�voro?');
      readln (resposta);
      if (resposta = 's') or (resposta = 'S') then
      begin
        writeln ('Seu animal � o Le�o!');
      end
      else
      begin
        writeln ('� Herb�voro?');
        readln (resposta);
        if (resposta = 's') or (resposta = 'S') then
        begin
          writeln('Seu animal � o Cavalo!');
        end
        else
        begin
          writeln('N�o sei qual � seu animal! =(');
        end
      end
    end
    else
    begin
      writeln ('� Aqu�tico?');
      readln (resposta);
      if (resposta = 's') or (resposta = 'S') then
      begin
        writeln ('Seu animal � a Baleia!');
      end
      else
      begin
        writeln('N�o sei qual � seu animal! =(');
      end
    end
  end
  else
  begin
    writeln ('� Ave?');
    readln (resposta);
    if (resposta = 's') or (resposta = 'S') then
    begin
      writeln ('� uma Ave N�o-voadora?');
      readln (resposta);
      if (resposta = 's') or (resposta = 'S') then
      begin
        writeln ('� Tropical?');
        readln (resposta);
        if (resposta = 's') or (resposta = 'S') then
        begin
          writeln ('Seu animal � o Avestruz!');
        end
        else
        begin
          writeln('� Polar?');
          readln (resposta);
          if (resposta = 's') or (resposta = 'S') then
          begin
            writeln ('Seu animal � o Pinguim!');
          end
          else
          begin
            writeln('N�o sei qual � seu animal! =(');
          end
        end
      end
      else
      writeln('� uma ave de Rapina?');
      readln (resposta);
      if (resposta = 's') or (resposta = 'S') then
      begin
        writeln ('Seu animal � a �guia!');
      end
      else
      begin
        writeln('N�o sei qual � seu animal! =(');
      end
    end
    else
    writeln ('� um r�ptil?');
    readln (resposta);
    if (resposta = 's') or (resposta = 'S') then
    begin
      writeln ('Com casco?');
      readln (resposta);
      if (resposta = 's') or (resposta = 'S') then
      begin
        writeln ('Seu animal � a Tartaruga!');
      end
      else
      writeln ('Carn�voro?');
      readln (resposta);
      if (resposta = 's') or (resposta = 'S') then
      begin
        writeln ('Seu animal � o Crocodilo!');
      end
      else
      writeln ('Sem patas?');
      readln (resposta);
      if (resposta = 's') or (resposta = 'S') then
      begin
        writeln ('Seu animal � a Cobra!');
      end
      else
      begin
        writeln('N�o sei qual � seu animal! =(');
      end
    end
    else
    begin
      writeln('N�o sei qual � seu animal! =(');
    end;    
  end;
  readln;
End.
