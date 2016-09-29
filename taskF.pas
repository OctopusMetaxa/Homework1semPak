program taskF;
{$mode objfpc}{$H+}
uses
  CRT;
var
  a,b,c,d,sum:integer;
  txt:text;
  mult:real;
begin
  assign(txt, 'input.txt');
  reset(txt);
  readln(txt,a,b,c,d);
  close(txt);
  assign(txt,'output.txt');
  rewrite(txt);
  sum:=0;
  mult:=a*b*c*d;
  if mult < 0 then
    begin
      if a mod 2 = 0 then
        sum:=sum+a;
      if b mod 2 = 0 then
        sum:=sum+b;
      if c mod 2 = 0 then
        sum:=sum+c;
      if d mod 2 = 0 then
        sum:=sum+d;
      writeln(txt, sum)
    end
  else if (mult >= 0) then
    begin
      sum:=a+b+c+d;
      if sum mod 2 = 0 then
        if (a >= b) and (a >= c) and (a >= d) then
          writeln(txt, a)
        else if (b > c) and (b > d) then
          writeln(txt, b)
        else if (c > d) then
          writeln(txt, c)
        else
          writeln(txt, d)
      else
        if (a < b) and (a < c) and (a < d) then
          writeln(txt, a)
        else if (b < c) and (b < d) then
          writeln(txt, b)
        else if (c < d) then
          writeln(txt, c)
        else
          writeln(txt, d);
      end;
  close(txt);
end.
