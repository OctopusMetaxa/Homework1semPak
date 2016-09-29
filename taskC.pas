program taskC;
{$mode objfpc}{$H+}
uses
  CRT;
var
  A,B,C,extra:integer;
  tin,tout:TextFile;
begin
  AssignFile(tin,'input.txt');
  AssignFile(tout,'output.txt');
  reset(tin);
  readln(tin,A,B,C);
  close(tin);
  extra:=A+B+C-90;
  if extra < 0
  then
    extra:=0;
  rewrite(tout);
  writeln(tout, extra);
  close(tout);
end.
