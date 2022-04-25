import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_flutter/controller/news_controller.dart';
import 'package:news_flutter/view/screens/general_screen.dart';
import 'package:news_flutter/view/screens/health_screen.dart';
import 'package:news_flutter/view/screens/science_screen.dart';
import 'package:news_flutter/view/screens/sports_screen.dart';

class HomeScreen extends StatelessWidget {
  NewsController controller = Get.put(NewsController());

  List<Widget> bottomScreens = [
    GeneralScreen(),
    SportsScreen(),
    ScienceScreen(),
    HealthScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News App'),
      ),
      bottomNavigationBar: Obx(
            () => BottomNavigationBar(
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          currentIndex: controller.currentIndex.value,
          onTap: (index){
            controller.currentIndex.value = index;
          },
          items: [
            BottomNavigationBarItem(
              label: "General",
              icon: Icon(Icons.newspaper),
            ),
            BottomNavigationBarItem(
              label: "Sports",
              icon: Icon(Icons.sports),
            ),
            BottomNavigationBarItem(
              label: "Science",
              icon: Icon(Icons.science),
            ),
            BottomNavigationBarItem(
              label: "Health",
              icon: Icon(Icons.health_and_safety),
            ),
          ],
        ),
      ),
      body: Obx(
          () => bottomScreens[controller.currentIndex.value]
      ),
    );
  }
}
