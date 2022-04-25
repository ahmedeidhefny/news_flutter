import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:news_flutter/model/news_model.dart';
import 'package:news_flutter/constants.dart';

class NewsController extends GetxController {
  RxInt currentIndex = 0.obs;

  Future<NewsModel> getData(String category) async {
    final url = Uri.parse(
        '${BASE_URL}/top-headlines?country=eg&category=${category}&apiKey=${API_KEY}');
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      try {
        return NewsModel.fromJson(jsonDecode(response.body));
      } catch (e) {
        Get.snackbar('error', e.toString());
      }
    } else {
      Get.snackbar('error', response.statusCode.toString());
    }
  }
}
