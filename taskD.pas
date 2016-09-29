program taskD;
{$mode objfpc}{$H+}
uses
  CRT;
var
  a,b,c,D,x1,x2:real;
  tin, tout:TextFile;
begin
  AssignFile(tin, 'input.txt');
  AssignFile(tout, 'output.txt');
  reset(tin);
  readln(tin,a,b,c);
  close(tin);
  D:=b*b-4*a*c;
  if (D > 0) and (a <> 0) then
     begin
       x1:=(-b-(sqrt(D)))/(2*a);
       x2:=(-b+(sqrt(D)))/(2*a);
         if x1 > x2 then
           begin
             rewrite(tout);
             writeln(tout,x1:0:4,' ', x2:0:4);
             close(tout)
           end
         else
           begin
             rewrite(tout);
             writeln(tout,x2:0:4,' ', x1:0:4);
             close(tout)
           end;
     end;
  if (D > 0) and (a = 0) then
     begin
       x1:=(-c/b);
       rewrite(tout);
       writeln(tout,x1:0:4,' ', x1:0:4);
       close(tout)
     end;
  if (D = 0) and (a <> 0) then
     begin
       x1:=(-b/(2*a));
       rewrite(tout);
       writeln(tout,x1:0:4,' ', x1:0:4);
       close(tout)
     end;
  if (D = 0) and (a = 0) or (D < 0) then
     begin
       rewrite(tout);
       writeln(tout,-1);
       close(tout)
     end;
end.
