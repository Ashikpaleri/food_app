import 'package:flutter/material.dart';
import 'package:foodapp/components/horizontallist.dart';
import 'package:carousel_pro/carousel_pro.dart';

class HometabScreen extends StatefulWidget{
  @override
  _HometabState createState() => _HometabState();
}
class _HometabState extends State<HometabScreen>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        // physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
        // image_carousel,
        new Padding(padding: const EdgeInsets.all(8.0),
        ),

          HorizontalList(),

      Stack(
        children: [
          Container(
            height: 200,
            color: Colors.white,
            child: Image.asset('images/food.png'),
          ),
          Container(
            height: 50,

            alignment: Alignment.topRight,

            child: Column(



              children: [
                Text('30 % off', style: TextStyle(
                    color: Colors.red, fontWeight: FontWeight.w600,
                    fontSize: 18,
                ),),
                Text('at Edassery',style: TextStyle(
                    color: Colors.red, fontWeight: FontWeight.w600,
                    fontSize: 22,

                ),),
              ],
            ),
          )
        ],
      ),

          SizedBox(
            height: 10,
          ),
          Stack(
            children: [
              Container(
                alignment: Alignment.bottomRight,
                height: 100,
                color: Colors.orangeAccent,
                child: Image.asset('images/refer.png'),
              ),
              Container(
                height: 50,
                color: Colors.orangeAccent,
                child: Column(
                  children: [
                    Text(' refer your friend', style: TextStyle(
                      color: Colors.red, fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),),
                    Text('Win ₹ 50',style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),),
                  ],
                ),
              )
            ],
          ),
          // Container(
          //   height: 200,
          //   // color: Colors.pink,
          //   decoration: BoxDecoration(
          //     image: DecorationImage(
          //       image: AssetImage('images/hospital.png')
          //     ),
          //   ),
          //
          //   child: Text("featured Offers", style: TextStyle(fontWeight:FontWeight.bold,
          //   color: Colors.black),),
          //
          //
          // ),
          ListTile(
            leading: Image.asset('images/hospital.png'),
            title: Text('Kinder Multi Speciality Hospitals'),
            // subtitle: Text(),
            onTap: () {},
            trailing: Icon(Icons.favorite),

          ),
          ListTile(
            leading: Image.asset('images/vismay.jpg'),

            title: Text('vismay'),

            subtitle: Icon(Icons.location_on),
            onTap: () {},
            trailing: Icon(Icons.favorite),

          ),
           new Container(

          height: 200,
    child: new Carousel(
    boxFit: BoxFit.cover,
    images: [
    AssetImage('images/caro.jpg'),
    AssetImage('images/caro.jpg'),
    AssetImage('images/caro.jpg'),
    AssetImage('images/caro.jpg'),
    ],
    autoplay: false,
    dotSize: 0.0,
    // animationCurve: Curves.fastOutSlowIn,
    // animationDuration: Duration(microseconds: 1000),

    ),

  ),




   ],
      ),
    );
  }
}

