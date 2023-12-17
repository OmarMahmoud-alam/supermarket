import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:supermarket/common/global_variable.dart';
import 'package:supermarket/common/utils/dio_helper.dart';
import 'package:supermarket/model/bannermodel.dart';
import 'package:supermarket/model/categorymdel.dart';
import 'package:supermarket/model/productmodel.dart';

class HomeController extends GetxController {
  List<BannerModel> banners = [];
  List<CategoryModel> categories = [];
  List<ProductModel> products = [];

  Future<void> fetchData() async {
    try {
      var result =
          await DioHelper.fetchdata(url: ApiUrl.login, token: Apivar.token);
      if (result.statusCode == 200) {
        banners = (result.data['banner'] as List)
            .map((item) => BannerModel.fromJson(item))
            .toList();
        categories = (result.data['category'] as List)
            .map((item) => CategoryModel.fromJson(item))
            .toList();
        products = (result.data['product'] as List)
            .map((item) => ProductModel.fromJson(item))
            .toList();
      } else {
        // Handle error if needed
        print('Error: ${result.statusCode}');
        Get.snackbar('error', result.data.toString());
      }
    } catch (e) {
      Get.log('Error: $e');
      rethrow;
    }
  }
}
