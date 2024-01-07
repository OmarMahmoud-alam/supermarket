import 'package:get/get.dart';
import 'package:supermarket/core/common/app_strings.dart';
import 'package:supermarket/core/common/common_widget/custom_snackbar.dart';
import 'package:supermarket/features/home/data/models/homemodel.dart';

import 'package:supermarket/features/home/data/repos/homeresp.dart';

class HomeController extends GetxController {
  bool isloadingerror = false;
  bool isgettingdata = true;
  Homemodel? homedata;

  Future<void> fetchData() async {
    var homerespone = HomeRespo();
    var result = await homerespone.gethomedata();
    result.fold(
      (err) {
        showSnackBar(err);
        isgettingdata = false;
        isloadingerror = true;

        update();
      },
      (res) async {
        isgettingdata = false;
        homedata = res;
        update();
      },
    );

    /* try {
      var result =
          await DioHelper.fetchdata(url: EndPoints.login, token: Apivar.token);
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
        Get.log('Error: ${result.statusCode}');
        Get.snackbar('error', result.data.toString());
      }
    } catch (e) {
      Get.log('Error: $e');
      rethrow;
    }*/
  }
}
