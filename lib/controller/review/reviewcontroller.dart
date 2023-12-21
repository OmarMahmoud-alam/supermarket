import 'package:get/get.dart';
import 'package:supermarket/common/global_variable.dart';
import 'package:supermarket/common/utils/dio_helper.dart';
import 'package:supermarket/model/reviewmode.dart';


class ReviewController extends GetxController {
  List<Review> reviews = [];
  Review? myreview;
  // Initialize Dio with your configurations

  Future<void> fetchReviews() async {
    try {
      var result = await DioHelper.fetchdata(
          url: ApiUrl.productDetail, token: Apivar.sendtoken);
      if (result.statusCode == 200) {
        List<dynamic> reviewData = result.data['data'];
        if (result.data['myreview'] != null) {
          fetchMyReview(result.data['myreview']);
        }

        reviews.assignAll(
            reviewData.map((json) => Review.fromJson(json)).toList());
      } else {
        // Handle error
        Get.log('Error: ${result.statusCode}');
      }
    } catch (e) {
      // Handle exception
      Get.log('Error: $e');
    }
  }

  Future<void> fetchMyReview(var myreviewjson) async {
    try {
      myreview = Review.fromJson(myreviewjson);
    } catch (e) {
      // Handle exception
      Get.log('Error: $e');
    }
  }
}
