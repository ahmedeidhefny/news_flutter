import 'package:flutter/material.dart';
import 'package:news_flutter/view/components/news_data_content.dart';


class SportsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return NewsDataContent(category: 'sports');
  }
}
