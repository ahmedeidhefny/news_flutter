import 'package:flutter/material.dart';

class NewsItem extends StatelessWidget {
  final String image, title, sunTitle;

  NewsItem(
      {@required this.image, @required this.title, @required this.sunTitle});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shadowColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          image != null && image != '' ? Image.network(
            image ?? '',
            fit: BoxFit.cover,
          ) : Container(
            width: double.infinity,
            height: 280.0,
            color: Colors.lightBlueAccent,
            child: Center(child: Text('no Image',
              style: TextStyle(
                  fontSize: 20
              ),),),
          )
          ,
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text(
                  title ?? '',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  sunTitle ?? '',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}