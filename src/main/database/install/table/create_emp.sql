create table emp(
  id number not null,
  empno number(4),
  ename varchar2(10),
  job varchar2(9),
  hiredate date,
  sal number(7,2),
  comm number(7,2),
  fk_mgr_id number,
  fk_dept_id number,
  created_by varchar2(100),
  created_on date,
  last_modified_by varchar2(100),
  last_modified_on date,
  constraint emp_pk primary key (id),
  constraint emp_mgr_fk foreign key (fk_mgr_id) references emp (id),
  constraint emp_dept_fk foreign key (fk_dept_id) references dept (id)
);