/*
  package: bl_dept
  BL for the DEPT table.
*/
create or replace
package bl_dept is

  /*
    procedure: db_store
    Insert or update a DEPT record.

    parameters:
      in_id - primary key
      in_deptno - department number
      in_dname - department name
      in_loc - location
  */
  procedure db_store(
    in_id     in dept.id%type,
    in_deptno in dept.deptno%type,
    in_dname  in dept.dname%type,
    in_loc    in dept.loc%type
  );

  /*
    procedure: remove
    Delete a DEPT record.

    parameters:
      in_id - the primary key of the record to delete
  */
  procedure remove(
    in_id in dept.id%type
  );

end bl_dept;