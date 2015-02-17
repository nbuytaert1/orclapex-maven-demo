create or replace
package body bl_user_registration is

  function validate_password_strength(
    in_password in varchar2
  ) return boolean is
  begin
    -- contains at least one digit character (0-9)
    if not regexp_like(in_password, '[[:digit:]]') then
      return false;
    end if;

    -- contains at least one lowercase character (a-z)
    if not regexp_like(in_password, '[[:lower:]]') then
      return false;
    end if;

    -- contains at least one uppercase character (A-Z)
    if not regexp_like(in_password, '[[:upper:]]') then
      return false;
    end if;

    -- contains at least one special character (@#$%)
    if not regexp_like(in_password, '[@#$%]') then
      return false;
    end if;

    -- length between 6 and 20 characters
    if length(in_password) is null or length(in_password) not between 6 and 20 then
      return false;
    end if;

    return true;
  end validate_password_strength;

end bl_user_registration;