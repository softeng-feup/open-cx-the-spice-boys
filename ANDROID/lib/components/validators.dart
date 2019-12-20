

/// This is a class to validate user inputs.
class LoginFieldValidator
{
  static String validateEmail( String value)
  {
    validateStrangeChars(value);

    if ( value.isEmpty) {
      return "Email can\'t be empty";
    }
    else if(!(value.contains("@")))
    {
      return "Not a valid email";
    }
  }

  static String validatePassword( String pw)
  {
    validateStrangeChars( pw);

    if ( pw.isEmpty) {
      return "Password can\'t be empty";
    }
    else if(pw.length < 4)
    {
      return "Password too short";
    }
  }

// Check for weird Characters in TextFields
  static String validateStrangeChars( String str)
  {
    RegExp expression = new RegExp("[{]|[}]|[\\]|[~]|[?]|[!]|[\"]|[']|[#]|[(]|[)]|[=]|[&]|[\$]|[%]");
    if(expression.hasMatch(str))
      {
        return "Not valid";
      }




  }

}