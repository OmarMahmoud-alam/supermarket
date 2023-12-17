import 'package:get/get.dart';
import 'package:supermarket/common/global_variable.dart';
import 'package:supermarket/common/utils/dio_helper.dart';
import 'package:supermarket/model/productdetailsmodel.dart';

class ProductController extends GetxController {
  Productdetails? product; // The observable product

  Future<void> fetchProductDetails(int productId) async {
    try {
      var result = await DioHelper.fetchdata(
          url: ApiUrl.productDetail, token: Apivar.sendtoken);
      if (result.statusCode == 200) {
        // Convert the JSON response to a Product object
        product = Productdetails.fromJson(result.data['data']);
      } else {
        print('Error: ${result.statusCode}');
        // Handle the error as needed
      }
    } catch (e) {
      print('Error: $e');
      // Handle the error as needed
    }
  }
}
