begin
  var flag:=True;
  var N:=ReadInteger('Введите год:');
  if (N mod 4=0) and (N mod 100<>0) then
    flag:=True
  else if N mod 400=0 then flag:=True
  else
    flag:=False;
  Print($'Год является високосным? {flag}');
  var (Day1, Day2):=ReadInteger2('Введите дату двух ней:');
  var (Month1, Month2):=ReadInteger2('Введите дату двух месяцев:');
  if Month1>Month2 then
    Print(1)
  else if Month1<Month2 then
    Print(2)
  else if Day1<Day2 then
    Print(2)
  else if Day1>Day2 then
    Print(1)
  else 
end.
    Print('Даты одинаковы');