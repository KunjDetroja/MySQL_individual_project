create or replace procedure dempl
is 
cursor c is select *from empl;
r empl%rowtype;
begin
open c;
loop
fetch c into r;
exit when c%notfound;
dbms_output.put_line('id:-'||r.id||' name:-'||r.name||' dept:-'||r.dept||' age:-'||r.age||' city:-'||r.city||' state:-'||r.state);
end loop;
close c;
end;
/