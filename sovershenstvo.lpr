program sovershenstvo;

var
  a, i, j, sum: int64;
  s, ss: string;
begin
  readln(a);
  s:= '';
  sum:= 0;
    for i:= 1 to a do
      begin
        for j:= 1 to i div 2 do
            begin
              if i mod j = 0 then
                 begin
                   str(j, ss);
                   s:= s + ss + ' ';
                   sum:= sum + j;
                 end;
            end;
        if sum = i then
           begin
             write(i, ' ');
             sum:= 0;
             s:= '';
           end;
      end;
  if sum <> 0 then
     write(0);
end.
