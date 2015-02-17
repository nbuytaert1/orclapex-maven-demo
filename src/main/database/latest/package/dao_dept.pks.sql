/*
  package: dao_dept
  DAO for the DEPT table.
*/
create or replace
package dao_dept is

  /*
    function: db_insert
    Insert a DEPT record.

    parameters:
      in_row - a DEPT record

    returns:
      The primary key of the inserted record.
  */
  function db_insert(
    in_row in dept%rowtype
  ) return dept.id%type;

  /*
    procedure: db_insert
    Insert a DEPT record.

    parameters:
      in_row - a DEPT record
  */
  procedure db_insert(
    in_row in dept%rowtype
  );

  /*
    procedure: db_update
    Update a DEPT record.

    parameters:
      in_row - a DEPT record
  */
  procedure db_update(
    in_row in dept%rowtype
  );

  /*
    procedure: db_delete
    Delete a DEPT record.

    parameters:
      in_id - the primary key of the record to delete
  */
  procedure db_delete(
    in_id in dept.id%type
  );

  /*
    function: db_get
    Fetch a DEPT record.

    parameters:
      in_id - the primary key of the record to fetch

    returns:
      A DEPT record.
  */
  function db_get(
    in_id in dept.id%type
  ) return dept%rowtype;

  /*
    function: db_merge
    Merge a DEPT record.

    parameters:
      in_row - a DEPT record

    returns:
      The primary key of the merged record.
  */
  function db_merge(
    in_row in dept%rowtype
  ) return dept.id%type;

  /*
    procedure: db_merge
    Merge a DEPT record.

    parameters:
      in_row - a DEPT record
  */
  procedure db_merge(
    in_row in dept%rowtype
  );

end dao_dept;