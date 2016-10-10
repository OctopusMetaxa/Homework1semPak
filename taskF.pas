program taskF;
{$mode objfpc}{$H+}
uses
  CRT;
var
  a,b,c,d,mult,sum:integer;
  txt:text;
begin
  assign(txt, 'input.txt');
  reset(txt);
  readln(txt,a,b,c,d);
  close(txt);
  assign(txt,'output.txt');
  rewrite(txt);
  mult:= 1;
  sum:=0;
  if a < 0 then
    mult:= -mult;
  if b < 0 then
    mult:= -mult;
  if c < 0 then
    mult:= -mult;
  if d < 0 then
    mult:= -mult;
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
