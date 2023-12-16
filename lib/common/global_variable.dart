class ApiUrl {
  static const mainUrl = "http://localhost:8080";
  static const baseUrl = '$mainUrl/api/';
  static const nodeUrl = mainUrl;

  static const login = 'auth/login';
  static const signUp = 'sign_up';
  static const home = 'home';
  static const productDetail = 'product_detail';
  static const addRemoveFavorite = 'add_remove_favorite';
  static const favorite = 'favorite_list';
}

class Apivar {
  static String? token;
  static String get acualtoken => token != null ? 'Bearer $token' : 'empty';
}
/*
class KKey {
  static const payload = "payload";
  static const status = "status";
  static const message = "message";
  static const authToken = "auth_token";
  static const name = "name";
  static const email = "email";
  static const mobile = "mobile";
  static const address = "address";
  static const userId = "user_id";
  static const resetCode = "reset_code";
 
}

class MSG {
  static const enterEmail = "Please enter your valid email address.";
  static const enterName = "Please enter your name.";
  static const enterCode = "Please enter valid reset code.";

  static const enterMobile = "Please enter your valid mobile number.";
  static const enterAddress = "Please enter your address.";
  static const enterPassword =
      "Please enter password minimum 6 characters at least.";
  static const enterPasswordNotMatch = "Please enter password not match.";
  static const success = "success";
  static const fail = "fail";
}*/