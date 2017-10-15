program task1_cassiopeia;

var
  x, x1, x2, eps, delta: real;
function y(x: real): real;
begin
  y:= x * x * x + 2 * x * x - 8 * x + 1 + 2 * sin(x) + 15 * cos(x);
end;
begin
  x:= -5;
  while (x < 5) do
    begin
      eps:= 0.005;
      delta:= 2 * eps;
      if (y(x) * y(x + delta)) < 0 then
         begin
           write('Interval: [', x:6:3,',',x + delta:6:3 ,'] Koren: ');
           x1:= x;
           x2:= x - 0.001;
           while (x1 <= x + delta) and (x2 = x - 0.001) do
             begin
               if y(x1) * y(x1 + 0.001) < 0 then
                 x2:= x1
               else
                 x1:= x1 + 0.001;
             end;
           writeln(x2:6:3);
         end;
      x:= x + delta;
    end;
  readln();
end.
