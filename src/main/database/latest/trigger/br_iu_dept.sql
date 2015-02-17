create or replace trigger br_iu_dept
before insert or update on dept
for each row
declare
  l_user varchar2(100) := nvl(v('APP_USER'), user);
begin
  if inserting then
    :new.id := nvl(:new.id, seq_dept.nextval);
    :new.created_by := l_user;
    :new.created_on := sysdate;
  end if;

  if updating then
    :new.last_modified_by := l_user;
    :new.last_modified_on := sysdate;
  end if;
end br_iu_dept;