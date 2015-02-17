create or replace
package body bl_dept is

  procedure db_store(
    in_id     in dept.id%type,
    in_deptno in dept.deptno%type,
    in_dname  in dept.dname%type,
    in_loc    in dept.loc%type
  ) is
    lr_dept dept%rowtype;
  begin
    if (in_id is not null) then
      lr_dept := dao_dept.db_get(in_id);
    end if;

    lr_dept.deptno := in_deptno;
    lr_dept.dname  := in_dname;
    lr_dept.loc    := in_loc;

    dao_dept.db_merge(lr_dept);
  end db_store;


  procedure remove(
    in_id in dept.id%type
  ) is
  begin
    dao_dept.db_delete(in_id);
  end remove;

end bl_dept;