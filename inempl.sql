create or replace procedure inempl(i in empl.id%type,n in empl.name%type,d in empl.dept%type,a in empl.age%type,c in empl.city%type,s in empl.state%type)
is
begin
insert into empl values (i,n,d,a,c,s);
commit;
end;
/