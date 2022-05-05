program fila_bancaria;

uses crt, Filas;

var i : Integer;
var t : Integer;
var chega : Integer;
var libera : Integar

begin
  randomize;
  t := 0;
  chega := 3;
  libera := 4;

  for i := 0 to 360 do
    begin
      if  random(10) = 0 then
        begin
          t := t + 1;
        end;
    end;
  
  writeln('ocorrencias:',t);
end.