import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.white10,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget> [
          Category(
            image_locaion: 'images/cup.png',
            image_caption: 'Restaurants & Cafes' ,
          ),
          Category(
            image_locaion: 'images/spa.png',
            image_caption: 'salon & spa',
          ),
          Category(
            image_locaion: 'images/hotels.png',
            image_caption: 'Hotels & Resort',
          ),
          Category(
            image_locaion: 'images/hospitals.png',
            image_caption: 'hospital',
          ),
          // Category(
          //   image_locaion: 'images/cats/sa.jpg',
          //   image_caption: 'samsung',
          // ),
          // Category(
          //   image_locaion: 'images/cats/so.jpg',
          //   image_caption: 'sony',
          // ),

        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_locaion;
  final String image_caption;

  Category({
    required this.image_locaion,
    required this.image_caption,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              image_locaion,
              width: 100,
              height: 80.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_caption, style: new TextStyle(fontSize: 12.0),),



            ),
          ),
        ),
      ),
    );
  }
}
