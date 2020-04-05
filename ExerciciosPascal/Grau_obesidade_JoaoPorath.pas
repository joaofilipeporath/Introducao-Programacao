(* Elabore um programa que determine o grau de
obesidade de uma pessoa, sendo fornecido o seu
peso e a sua altura. O grau de obesidade �
determinado pelo �ndice da massa corp�rea
(Massa = Peso / (Altura * Altura)) conforme tabela
abaixo:

Massa Corp�rea	Grau de Obesidade
< 26								Normal
>= 26 e < 30				Obeso
< =30						Obeso M�rbido
*)

Program Grau_obesidade;
uses crt;
var
peso, massa_corp, altura: real;

Begin
  write('INSIRA O SEU PESO (em Kg): ');
  readln (peso);
  write ('INSIRA A SUA ALTURA (em m): ');
  readln (altura);
  massa_corp:= peso/(sqr(altura));
  writeln('----------------------------------');
  writeln('-------------RESULTADO------------');
  writeln('----------------------------------');
  writeln('Massa corp�rea = ',massa_corp :2:2);
  if (massa_corp <26) then
  writeln('Grau de Obesidade = Normal')
  else if (massa_corp >= 26) and (massa_corp <30) then
  writeln('Grau de Obesidade = Obeso')
  else
  writeln('Grau de Obesidade = Obeso M�rbido');
  readln;
End.