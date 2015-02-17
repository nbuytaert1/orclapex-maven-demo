/*
  package: dao_emp
  DAO for the EMP table.
*/
create or replace
package dao_emp is

  /*
    function: db_insert
    Insert an EMP record.

    parameters:
      in_row - an EMP record

    returns:
      The primary key of the inserted record.
  */
  function db_insert(
    in_row in emp%rowtype
  ) return emp.id%type;

  /*
    procedure: db_insert
    Insert an EMP record.

    parameters:
      in_row - an EMP record
  */
  procedure db_insert(
    in_row in emp%rowtype
  );

  /*
    procedure: db_update
    Update an EMP record.

    parameters:
      in_row - an EMP record
  */
  procedure db_update(
    in_row in emp%rowtype
  );

  /*
    procedure: db_delete
    Delete an EMP record.

    parameters:
      in_id - the primary key of the record to delete
  */
  procedure db_delete(
    in_id in emp.id%type
  );

  /*
    function: db_get
    Fetch an EMP record.

    parameters:
      in_id - the primary key of the record to fetch

    returns:
      an EMP record.
  */
  function db_get(
    in_id in emp.id%type
  ) return emp%rowtype;

  /*
    function: db_merge
    Merge an EMP record.

    parameters:
      in_row - an EMP record

    returns:
      The primary key of the merged record.
  */
  function db_merge(
    in_row in emp%rowtype
  ) return emp.id%type;

  /*
    procedure: db_merge
    Merge an EMP record.

    parameters:
      in_row - an EMP record
  */
  procedure db_merge(
    in_row in emp%rowtype
  );

end dao_emp;