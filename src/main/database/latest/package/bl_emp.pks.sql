/*
  package: bl_emp
  BL for the EMP table.
*/
create or replace
package bl_emp is

  /*
    procedure: db_store
    Insert or update an EMP record.

    parameters:
      in_id - primary key
      in_empno - employee number
      in_ename - employee name
      in_job - job title
      in_hiredate - hiredate
      in_sal - salary
      in_comm - commission
      in_fk_mgr_id - manager ID
      in_fk_dept_id - department ID
  */
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
  );

  /*
    procedure: remove
    Delete an EMP record.

    parameters:
      in_id - the primary key of the record to delete
  */
  procedure remove(
    in_id in emp.id%type
  );

end bl_emp;