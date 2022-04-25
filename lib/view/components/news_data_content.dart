import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_flutter/model/news_model.dart';
import '../../controller/news_controller.dart';
import 'news_item.dart';

class NewsDataContent extends StatelessWidget {
  NewsController controller = Get.put(NewsController());
  final String category;


  NewsDataContent({@required this.category});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: controller.getData(category),
      builder: (context, AsyncSnapshot snapshot) {
        NewsModel news = snapshot.data;
        if (snapshot.hasData)
          return ListView.builder(
              itemCount: news.articles.length,
              itemBuilder: (context, index) {
                Article article = news.articles[index];
                return NewsItem(
                  image: article.urlToImage,
                  title: article.title,
                  sunTitle: article.description,
                );
              });
        else
          return Center(
            child: CircularProgressIndicator(),
          );
      },
    );
  }
}
