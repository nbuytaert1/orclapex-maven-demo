create table dept(
  id number not null,
  deptno number(2),
  dname varchar2(14),
  loc varchar2(13),
  created_by varchar2(100),
  created_on date,
  last_modified_by varchar2(100),
  last_modified_on date,
  constraint dept_pk primary key (id)
);