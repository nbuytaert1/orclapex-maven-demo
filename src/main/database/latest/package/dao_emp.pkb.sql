create or replace
package body dao_emp is

  function db_insert(
    in_row in emp%rowtype
  ) return emp.id%type is
    l_id emp.id%type;
  begin
    insert into emp
    values in_row
    returning id into l_id;

    return l_id;
  end db_insert;


  procedure db_insert(
    in_row in emp%rowtype
  ) is
    l_id emp.id%type;
  begin
    l_id := db_insert(in_row);
  end db_insert;


  procedure db_update(
    in_row in emp%rowtype
  ) is
  begin
    update emp
    set row = in_row
    where id = in_row.id;
  end db_update;


  procedure db_delete(
    in_id in emp.id%type
  ) is
  begin
    delete from emp
    where id = in_id;
  end db_delete;


  function db_get(
    in_id in emp.id%type
  ) return emp%rowtype is
    lr_row emp%rowtype;
  begin
    select *
    into lr_row
    from emp
    where id = in_id;

    return lr_row;
  exception
    when no_data_found then
      raise_application_error(-20000, 'The employee with ID ''' || in_id || ''' could not be found in the EMP table');
  end db_get;


  function db_merge(
    in_row in emp%rowtype
  ) return emp.id%type is
    l_id emp.id%type;
  begin
    if in_row.id is null then
      l_id := db_insert(in_row);
    else
      db_update(in_row);
      l_id := in_row.id;
    end if;

    return l_id;
  end db_merge;


  procedure db_merge(
    in_row in emp%rowtype
  ) is
    l_id emp.id%type;
  begin
    l_id := db_merge(in_row);
  end db_merge;

end dao_emp;