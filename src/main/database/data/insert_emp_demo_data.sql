insert into emp (id, empno, ename, job, hiredate, sal, comm, fk_mgr_id, fk_dept_id)
values (1, 7839, 'KING', 'PRESIDENT', to_date('17-11-1981','dd-mm-yyyy'), 5000, null, null, 1);
insert into emp (id, empno, ename, job, hiredate, sal, comm, fk_mgr_id, fk_dept_id)
values (2, 7698, 'BLAKE', 'MANAGER', to_date('1-5-1981','dd-mm-yyyy'), 2850, null, 1, 3);
insert into emp (id, empno, ename, job, hiredate, sal, comm, fk_mgr_id, fk_dept_id)
values (3, 7782, 'CLARK', 'MANAGER', to_date('9-6-1981','dd-mm-yyyy'), 2450, null, 1, 1);
insert into emp (id, empno, ename, job, hiredate, sal, comm, fk_mgr_id, fk_dept_id)
values (4, 7566, 'JONES', 'MANAGER', to_date('2-4-1981','dd-mm-yyyy'), 2975, null, 1, 2);
insert into emp (id, empno, ename, job, hiredate, sal, comm, fk_mgr_id, fk_dept_id)
values (5, 7788, 'SCOTT', 'ANALYST', to_date('13-JUL-87','dd-mm-rr') - 85, 3000, null, 4, 2);
insert into emp (id, empno, ename, job, hiredate, sal, comm, fk_mgr_id, fk_dept_id)
values (6, 7902, 'FORD', 'ANALYST', to_date('3-12-1981','dd-mm-yyyy'), 3000, null, 4, 2);
insert into emp (id, empno, ename, job, hiredate, sal, comm, fk_mgr_id, fk_dept_id)
values (7, 7369, 'SMITH', 'CLERK', to_date('17-12-1980','dd-mm-yyyy'), 800, null, 6, 2);
insert into emp (id, empno, ename, job, hiredate, sal, comm, fk_mgr_id, fk_dept_id)
values (8, 7499, 'ALLEN', 'SALESMAN', to_date('20-2-1981','dd-mm-yyyy'), 1600, 300, 2, 3);
insert into emp (id, empno, ename, job, hiredate, sal, comm, fk_mgr_id, fk_dept_id)
values (9, 7521, 'WARD', 'SALESMAN', to_date('22-2-1981','dd-mm-yyyy'), 1250, 500, 2, 3);
insert into emp (id, empno, ename, job, hiredate, sal, comm, fk_mgr_id, fk_dept_id)
values (10, 7654, 'MARTIN', 'SALESMAN', to_date('28-9-1981','dd-mm-yyyy'), 1250, 1400, 2, 3);
insert into emp (id, empno, ename, job, hiredate, sal, comm, fk_mgr_id, fk_dept_id)
values (11, 7844, 'TURNER', 'SALESMAN', to_date('8-9-1981','dd-mm-yyyy'), 1500, 0, 2, 3);
insert into emp (id, empno, ename, job, hiredate, sal, comm, fk_mgr_id, fk_dept_id)
values (12, 7876, 'ADAMS', 'CLERK', to_date('13-JUL-87', 'dd-mm-rr') - 51, 1100, null, 5, 2);
insert into emp (id, empno, ename, job, hiredate, sal, comm, fk_mgr_id, fk_dept_id)
values (13, 7900, 'JAMES', 'CLERK', to_date('3-12-1981','dd-mm-yyyy'), 950, null, 2, 3);
insert into emp (id, empno, ename, job, hiredate, sal, comm, fk_mgr_id, fk_dept_id)
values (14, 7934, 'MILLER', 'CLERK', to_date('23-1-1982','dd-mm-yyyy'), 1300, null, 3, 1);