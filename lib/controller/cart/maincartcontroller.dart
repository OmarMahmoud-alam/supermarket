import 'package:get/get.dart';
import 'package:supermarket/common/global_variable.dart';
import 'package:supermarket/common/utils/dio_helper.dart';
import 'package:supermarket/model/cartmodel.dart';
import 'package:supermarket/model/productmodel.dart';

class MainCartController extends GetxController {
  CartModel? cart;

  Future<void> fetchData() async {
    try {
      var result =
          await DioHelper.fetchdata(url: ApiUrl.login, token: Apivar.token);
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
