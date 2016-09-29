program taskE;
{$mode objfpc}{$H+}
uses
  CRT;
var
  a,b,c:integer;
  tinout:text;
begin
  assign(tinout, 'input.txt');
  reset(tinout);
  readln(tinout,a,b,c);
  close(tinout);
  assign (tinout,'output.txt');
  rewrite(tinout);
  if (a+b+c) mod 2 = 0 then
     begin
        if (a < b) and (a < c) then
          writeln(tinout,a)
        else if (b < c) then
          writeln(tinout,b)
        else
          writeln(tinout,c);
     end
  else
     begin
        if (a > b) and (a > c) then
          writeln(tinout,a)
        else if (b > c) then
          writeln(tinout,b)
        else
          writeln(tinout,c);
     end;
  close(tinout);
end.
