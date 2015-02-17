/*
  package: bl_user_registration
  Contains the business logic for the user registration process.
*/
create or replace
package bl_user_registration is

  /*
    function: validate_password_strength
    Determine whether a given password is strong enough.

    parameters:
      in_password - the password entered by the user

    returns:
      A boolean value. True means OK. False means that the password is not strong enough.
  */
  function validate_password_strength(
    in_password in varchar2
  ) return boolean;

end bl_user_registration;