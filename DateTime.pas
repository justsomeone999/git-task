begin
  var flag:=True;
  var N:=ReadInteger('Введите год:');
  if (N mod 4=0) and (N mod 100<>0) then
    flag:=True
  else if N mod 400=0 then flag:=True
  else
    flag:=False;
  Print($'Год является високосным? {flag}');
  var A:=ReadInteger('Введите минуты:');
  Print($'Секунд в минуте={A*60}');
end.