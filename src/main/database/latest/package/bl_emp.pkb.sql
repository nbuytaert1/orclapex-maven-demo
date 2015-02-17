create or replace
package body bl_emp is

  procedure db_store(
    in_id         in emp.id%type,
    in_empno      in emp.empno%type,
    in_ename      in emp.ename%type,
    in_job        in emp.job%type,
    in_hiredate   in emp.hiredate%type,
    in_sal        in emp.sal%type,
    in_comm       in emp.comm%type,
    in_fk_mgr_id  in emp.fk_mgr_id%type,
    in_fk_dept_id in emp.fk_dept_id%type
  ) is
    lr_emp emp%rowtype;
  begin
    if (in_id is not null) then
      lr_emp := dao_emp.db_get(in_id);
    end if;

    lr_emp.empno := in_empno;
    lr_emp.ename := in_ename;
    lr_emp.job := in_job;
    lr_emp.hiredate := in_hiredate;
    lr_emp.sal := in_sal;
    lr_emp.comm := in_comm;
    lr_emp.fk_mgr_id := in_fk_mgr_id;
    lr_emp.fk_dept_id := in_fk_dept_id;

    dao_emp.db_merge(lr_emp);
  end db_store;


  procedure remove(
    in_id in emp.id%type
  ) is
  begin
    dao_emp.db_delete(in_id);
  end remove;

end bl_emp;