program taskA1;
{$mode objfpc}{$H+}
uses
  CRT;
var
  N,M,K,min,add:integer;
  textin: TextFile;
  textout: TextFile;
begin
  AssignFile(textin, 'input.txt');
  AssignFile(textout, 'output.txt');
  reset(textin);
  readln(textin,N,M,K);
  close(textin);
  add:=(N*M)mod(K+1);
  min:=(N*M)div(K+1);
  if (N*M)mod(K+1)>0
     then
       add:=K-add+1;
  rewrite(textout);
  writeln(textout,min,' ',add);
  close(textout);
end.
