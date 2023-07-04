create or replace procedure tabdropempl(n in varchar2)
is
begin
if n like 'empl' then
execute immediate 'drop table empl';
else
dbms_output.put_line('table not exist');
end if;
end;
/