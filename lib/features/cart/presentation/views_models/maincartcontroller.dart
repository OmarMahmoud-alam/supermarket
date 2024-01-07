import 'package:get/get.dart';

import 'package:supermarket/core/common/app_strings.dart';
import 'package:supermarket/core/common/utils/dio_helper.dart';
import 'package:supermarket/core/common/utils/end_points.dart';
import 'package:supermarket/features/cart/data/models/cartmodel.dart';

class MainCartController extends GetxController {
  CartModel? cart;

  Future<void> fetchData() async {
    try {
      var result =
          await DioHelper.fetchdata(url: EndPoints.login, token: Apivar.token);
      if (result.statusCode == 200) {
        cart = CartModel.fromJson(result.data);
      } else {
        // Handle error if needed
        Get.log('Error: ${result.statusCode}');
        Get.snackbar('error', result.data.toString());
      }
    } catch (e) {
      Get.log('Error: $e');
      rethrow;
    }
  }
}
