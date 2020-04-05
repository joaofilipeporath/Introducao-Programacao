(*•Construa um algoritmo que seja capaz de identificar qual dentre os animais seguintes, foi
escolhido, através de perguntas e respostas.
Animais Possíveis: Leão, cavalo, baleia, avestruz, pinguim, águia, tartaruga, crocodilo,
cobra.*)

Program Animal;
uses crt;
var
resposta: char;

Begin
  writeln('Pense em um desses animais:');
  writeln('Leão');
  writeln('Cavalo');
  writeln('Baleia');
  writeln('Avestruz');
  writeln('Pinguim');
  writeln('Águia');
  writeln('Tartaruga');
  writeln('Crocodilo');
  writeln('Cobra');
  writeln;
  writeln('Vou descobrir que animal é: (clique enter para continuar)');
  writeln;
  readln;
  
  writeln ('O seu animal é mamífero?');
  readln(resposta);
  if (resposta = 's') or (resposta = 'S') then
  begin
    writeln ('É quadrúpede?');
    readln (resposta);
    if (resposta = 's') or (resposta = 'S') then
    begin
      writeln ('É Carnívoro?');
      readln (resposta);
      if (resposta = 's') or (resposta = 'S') then
      begin
        writeln ('Seu animal é o Leão!');
      end
      else
      begin
        writeln ('É Herbívoro?');
        readln (resposta);
        if (resposta = 's') or (resposta = 'S') then
        begin
          writeln('Seu animal é o Cavalo!');
        end
        else
        begin
          writeln('Não sei qual é seu animal! =(');
        end
      end
    end
    else
    begin
      writeln ('É Aquático?');
      readln (resposta);
      if (resposta = 's') or (resposta = 'S') then
      begin
        writeln ('Seu animal é a Baleia!');
      end
      else
      begin
        writeln('Não sei qual é seu animal! =(');
      end
    end
  end
  else
  begin
    writeln ('É Ave?');
    readln (resposta);
    if (resposta = 's') or (resposta = 'S') then
    begin
      writeln ('É uma Ave Não-voadora?');
      readln (resposta);
      if (resposta = 's') or (resposta = 'S') then
      begin
        writeln ('É Tropical?');
        readln (resposta);
        if (resposta = 's') or (resposta = 'S') then
        begin
          writeln ('Seu animal é o Avestruz!');
        end
        else
        begin
          writeln('É Polar?');
          readln (resposta);
          if (resposta = 's') or (resposta = 'S') then
          begin
            writeln ('Seu animal é o Pinguim!');
          end
          else
          begin
            writeln('Não sei qual é seu animal! =(');
          end
        end
      end
      else
      writeln('É uma ave de Rapina?');
      readln (resposta);
      if (resposta = 's') or (resposta = 'S') then
      begin
        writeln ('Seu animal é a Águia!');
      end
      else
      begin
        writeln('Não sei qual é seu animal! =(');
      end
    end
    else
    writeln ('É um réptil?');
    readln (resposta);
    if (resposta = 's') or (resposta = 'S') then
    begin
      writeln ('Com casco?');
      readln (resposta);
      if (resposta = 's') or (resposta = 'S') then
      begin
        writeln ('Seu animal é a Tartaruga!');
      end
      else
      writeln ('Carnívoro?');
      readln (resposta);
      if (resposta = 's') or (resposta = 'S') then
      begin
        writeln ('Seu animal é o Crocodilo!');
      end
      else
      writeln ('Sem patas?');
      readln (resposta);
      if (resposta = 's') or (resposta = 'S') then
      begin
        writeln ('Seu animal é a Cobra!');
      end
      else
      begin
        writeln('Não sei qual é seu animal! =(');
      end
    end
    else
    begin
      writeln('Não sei qual é seu animal! =(');
    end;    
  end;
  readln;
End.
