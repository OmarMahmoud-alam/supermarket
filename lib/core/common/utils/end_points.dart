abstract class EndPoints {
  //------------------------------------------------------------------------//
  static const mainUrl = "http://127.0.0.1:8000";

  static const String baseUrl = '$mainUrl/api/';
  //------------------------------------------------------------------------//

  static const login = 'auth/login';
  static const registe = 'auth/sign_up';
  static const emailverfy = 'verifiedby/otp';
  static const home = 'home';
  static const postreview = 'product/review';
  static const getmyreview = 'product/review';
  static const getallreview = 'home';
  static const productDetail = 'product_detail';
  static const addRemoveFavorite = 'add_remove_favorite';
  static const favorite = 'favorite_list';
}
