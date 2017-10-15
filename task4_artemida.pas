program task4_artemida;

var
  b, h, S, S1, x: real;
const
  pi = 3.1415926535;

  function y(x: real): real;
  begin
    y := (3 * sqrt(4 - x * x)) / 2;
  end;

begin
  S := 0;
  h := 0.09;
  x := 0;
  b := 2;
  while (x < b) and ((4 - (x + h) * (x + h)) > 0) do
  begin
    S := S + y(x) + y(x + h);
    x := x + h;
  end;
  S := S * h * 2;
  Writeln('Plozhad:', S: 8: 5);
  S1 := pi * 2 * 3;
  Writeln('Tochnaya plozhad:', S1: 8: 5);
  if ((S  / 100 + S) > S1) then
     writeln('h udovletvoritelno')
  else
     writeln('Pogreshnost slishkom velika');
  readln();
end.
