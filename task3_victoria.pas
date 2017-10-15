program task3_victoria;

var
  b, h, S, x, eps, delta: real;

function y2(x: real): real;
begin
  y2:= x * x;
end;
function y1(x: real): real;
begin
  y1:= 4 * cos(x);
end;

begin
  S:= 0;
  h:= 0.005;
  x:= 0;
  eps:= 0.001;
  delta:= 2 * eps;
  repeat
      x:= x + delta;
  until (y1(x) - y2(x)) < 0;
  b:= x;
  x:= -x;
  while (x < b) do
    begin
      S:= S + y1(x) - y2(x) + y1(x + h) - y1(x + h);
      x:= x + h;
    end;
  S:= S * h;
  Writeln('Plozhad:', S:8:5);
  readln();
end.
