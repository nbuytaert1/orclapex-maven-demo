create or replace
force view vw_dept_report as
  select dept.id as id,
         dept.deptno as dept_no,
         dept.dname as name,
         dept.loc as location
  from dept