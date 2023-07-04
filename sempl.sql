create or replace procedure sempl(x in varchar2,y in varchar2,z in number,w in varchar2)
is 
cursor c is select *from empl;
r empl%rowtype;
begin
open c;
loop
fetch c into r;
exit when c%notfound;
if x like 'id' and w like 'equal' and z=r.id then
dbms_output.put_line('id:-'||r.id||' name:-'||r.name||' dept:-'||r.dept||' age:-'||r.age||' city:-'||r.city||' state:-'||r.state);
end if;
if x like 'id' and w like 'greater' and z<r.id then
dbms_output.put_line('id:-'||r.id||' name:-'||r.name||' dept:-'||r.dept||' age:-'||r.age||' city:-'||r.city||' state:-'||r.state);
end if;
if x like 'id' and w like 'lesser' and z>r.id then
dbms_output.put_line('id:-'||r.id||' name:-'||r.name||' dept:-'||r.dept||' age:-'||r.age||' city:-'||r.city||' state:-'||r.state);
end if;
if x like 'name' and y like r.name then
dbms_output.put_line('id:-'||r.id||' name:-'||r.name||' dept:-'||r.dept||' age:-'||r.age||' city:-'||r.city||' state:-'||r.state);
end if;
if x like 'dept' and y like r.dept then
dbms_output.put_line('id:-'||r.id||' name:-'||r.name||' dept:-'||r.dept||' age:-'||r.age||' city:-'||r.city||' state:-'||r.state);
end if;
if x like 'age' and w like 'equal' and z=r.age then
dbms_output.put_line('id:-'||r.id||' name:-'||r.name||' dept:-'||r.dept||' age:-'||r.age||' city:-'||r.city||' state:-'||r.state);
end if;
if x like 'age' and w like 'greater' and z<r.age then
dbms_output.put_line('id:-'||r.id||' name:-'||r.name||' dept:-'||r.dept||' age:-'||r.age||' city:-'||r.city||' state:-'||r.state);
end if;
if x like 'age' and w like 'lesser' and z>r.age then
dbms_output.put_line('id:-'||r.id||' name:-'||r.name||' dept:-'||r.dept||' age:-'||r.age||' city:-'||r.city||' state:-'||r.state);
end if;
if x like 'city' and y like r.city then
dbms_output.put_line('id:-'||r.id||' name:-'||r.name||' dept:-'||r.dept||' age:-'||r.age||' city:-'||r.city||' state:-'||r.state);
end if;
if x like 'state' and y like r.state then
dbms_output.put_line('id:-'||r.id||' name:-'||r.name||' dept:-'||r.dept||' age:-'||r.age||' city:-'||r.city||' state:-'||r.state);
end if;
end loop;
close c;
end;
/