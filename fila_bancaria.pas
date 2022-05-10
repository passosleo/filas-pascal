
Program fila_bancaria;

Uses crt, Filas;

Var i : Integer;

Const tempo_fila : Integer = 3;

Const tempo_caixa : Integer = 4;

Var f : Fila;

Var caixa_ocupado : Boolean;

Var lotado : Integer;

Var pessoas_restantes : Integer;

Begin
  Randomize;
  caixa_ocupado := false;
  lotado := 0;
  pessoas_restantes := 0;
  Qinit(f);

  For i := 0 To 360 Do
    Begin

      If random(tempo_fila) = 0 Then
        Begin
          If Not QisFull(f) Then
            Begin
              Enqueue(f,1);
            End
          Else
            Begin
              lotado := lotado + 1;
            End;
        End;

      If caixa_ocupado = false Then
        Begin
          If Not QisEmpty(f) Then
            Begin
              Dequeue(f);
              caixa_ocupado := true;
            End;
        End;

      If (random(tempo_caixa) = 0) And (caixa_ocupado = true) Then
        Begin
          caixa_ocupado := false;
        End;
    End;

  For i := 1 To 10 Do
    Begin
      If Not QisEmpty(f) Then
        Begin
          pessoas_restantes := pessoas_restantes + Dequeue(f);
        End;
    End;

  writeln(' ');
  writeln('======= Relatorio de Movimentacao =======');
  writeln(' ');
  writeln('-> O banco lotou ', lotado, ' vezes');
  writeln('-> Restaram ', pessoas_restantes, ' pessoas na fila');
  writeln(' ');
  writeln('=========================================');
End.
