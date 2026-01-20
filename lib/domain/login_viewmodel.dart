class LoginViewModel{
  bool isValid(String email, String password){
    if(email.isEmpty || password.isEmpty){
      return false;
    }
    if(!email.contains("@")){
      return false;
    }
    if(password.length < 6){
      return false;
    }
    return true;
  }
}