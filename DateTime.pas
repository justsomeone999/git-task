begin
  var flag := True;
  var N := ReadInteger('Введите год:');
  if (N mod 4 = 0) and (N mod 100 <> 0) then
    flag := True
  else if N mod 400 = 0 then flag := True
  else
    flag := False;
  Print($'Год является високосным? {flag}');
  if flag then 
    Print('В году 366 дней')
  else 
    Print('В году 365 дней');
  var (Day1, Day2) := ReadInteger2('Введите дату двух ней:');
  var (Month1, Month2) := ReadInteger2('Введите дату двух месяцев:');
  if Month1 > Month2 then
    Print(1)
  else if Month1 < Month2 then
    Print(2)
  else if Day1 < Day2 then
    Print(2)
  else if Day1 > Day2 then
    Print(1)
  else 
    Print('Даты одинаковы');
  var (oneyear, twoyear):=ReadInteger2('Введите два года:');
  Assert(twoyear>oneyear);
  var sum:=0;
  for var i:=oneyear to twoyear do
  begin
    if flag then
    sum+=366
    else
      sum+=365;
    end;
    Print(sum)
end.
