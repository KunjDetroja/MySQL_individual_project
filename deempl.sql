create or replace procedure deempl(x in varchar2,y in varchar2,z in number,w in varchar2)
is 
begin
if x like 'id' and w like 'equal' then
delete from empl where id = z;
end if;
if x like 'id' and w like 'greater'then
delete from empl where id > z;
end if;
if x like 'id' and w like 'lesser' then
delete from empl where id < z;
end if;
if x like 'name' then
delete from empl where name=y;
end if;
if x like 'dept' then
delete from empl where dept=y;
end if;
if x like 'age' and w like 'equal' then
delete from empl where age = z;
end if;
if x like 'age' and w like 'greater' then
delete from empl where age > z;
end if;
if x like 'age' and w like 'lesser' then
delete from empl where age < z;
end if;
if x like 'city' then
delete from empl where city=y;
end if;
if x like 'state' then
delete from empl where state=y;
end if;
end;
/