create or replace
force view vw_emp_report as
  select emp.id as id,
         emp.empno as emp_no,
         emp.ename as name,
         emp.job as job,
         emp.hiredate as hire_date,
         emp.sal as salary,
         emp.comm as commission,
         mgr.ename as manager,
         dept.dname as department,
         dept.id as dept_id
  from emp
  left join emp mgr on (mgr.id = emp.fk_mgr_id)
  left join dept on (dept.id = emp.fk_dept_id)