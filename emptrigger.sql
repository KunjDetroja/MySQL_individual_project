create or replace trigger bin
before update or delete on empl
for each row
begin
insert into emp1(eid,ename,edept,eage,ecity,estate) values (:old.id,:old.name,:old.dept,:old.age,:old.city,:old.state);
end;
/