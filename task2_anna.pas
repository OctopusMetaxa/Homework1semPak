program task2_anna;

var
  a, b, h, S, x: real;

function y(x: real): real;
begin
  y:= x * x;
end;

begin
  S:= 0;
  a:= 0;
  b:= 10;
  h:= 0.005;
  x:= a;
  while (x < b) do
    begin
      S:= S + y(x + h);
      x:= x + h;
    end;
  S:= S * h;
  Writeln('Plozhad:', S:6:3);
  readln();
end.
