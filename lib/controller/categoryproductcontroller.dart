import 'package:get/get.dart';
import 'package:supermarket/common/global_variable.dart';
import 'package:supermarket/common/utils/dio_helper.dart';
import 'package:supermarket/model/bannermodel.dart';
import 'package:supermarket/model/categorymdel.dart';
import 'package:supermarket/model/productmodel.dart';
import 'package:supermarket/view/products/productview.dart';

class ProductListController extends GetxController {
  List<ProductModel> products = [];

  Future<void> fetchData() async {
    try {
      var result =
          await DioHelper.fetchdata(url: ApiUrl.login, token: Apivar.token);
      if (result.statusCode == 200) {
        products = (result.data['product'] as List)
            .map((item) => ProductModel.fromJson(item))
            .toList();
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

  void movetoproductdetails() {
    Get.to(() => ProductdetialsView() );
  }
}
