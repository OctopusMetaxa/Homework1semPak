program taskB;
{$mode objfpc}{$H+}
uses
  CRT;
var
  N,M,pop: real;
  textin, textout: TextFile;
begin
  AssignFile(textin,'input.txt');
  AssignFile(textout,'output.txt');
  reset(textin);
  readln(textin, N, M);
  close(textin);
  pop:=1000000000+N*M;
  rewrite(textout);
  writeln(textout,pop:0:0);
  close(textout);
end.

