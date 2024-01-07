import 'package:get/get.dart';
import 'package:supermarket/core/common/app_strings.dart';
import 'package:supermarket/core/common/utils/dio_helper.dart';
import 'package:supermarket/core/common/utils/end_points.dart';
import 'package:supermarket/features/product/data/models/productdetailsmodel.dart';

class ProductController extends GetxController {
  Productdetails? product; // The observable product

  Future<void> fetchProductDetails(int productId) async {
    try {
      var result = await DioHelper.fetchdata(
          url: EndPoints.productDetail, token: Apivar.sendtoken);
      if (result.statusCode == 200) {
        // Convert the JSON response to a Product object
        product = Productdetails.fromJson(result.data['data']);
      } else {
        Get.log('Error: ${result.statusCode}');
        // Handle the error as needed
      }
    } catch (e) {
      Get.log('Error: $e');
      // Handle the error as needed
    }
  }
}
