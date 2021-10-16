import 'package:flutter/material.dart';
import 'package:foodapp/components/horizontallist.dart';

class DataScreen extends StatefulWidget{
  @override
  _DataState createState() => _DataState();
}
class _DataState extends State<DataScreen>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:ListView(
          shrinkWrap: true,
          // physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            // image_carousel,
            new Padding(padding: const EdgeInsets.all(8.0),
            ),
            SizedBox(
              height:350,
              width: 150,
              child: Stack(
                clipBehavior: Clip.none,
                fit: StackFit.expand,
                children: [

                  Container(

                    child:Column(
                      children: [
                        Icon(Icons.person,size: 100,),
                        Text(' John Doe', style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold,
                            fontSize: 16
                        ),),
                        Text('john@doe.com',style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w300,
                            fontSize: 10
                        ),),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Container(height: 70,
                            width: 100,
                            margin: EdgeInsets.only(left: 50),
                            color: Colors.white,
                            child: Column(
                              children: [
                                Row(
                                children: [
                                Icon(Icons.favorite_border),
                                Text('155', style: TextStyle(
                                  fontSize: 16, fontWeight:FontWeight.bold,
                                ),),],),
                                Text('Points', style: TextStyle(
                                  fontSize: 16, fontWeight:FontWeight.w300,
                                ),),
                              ],
                            ),),
                        Container(height: 70,
                          width: 100,
                          margin: EdgeInsets.only(left: 60),
                          color: Colors.white,

                            child: Column(
                              children: [
                                Row( children: [
                               Icon(Icons.account_balance_wallet_rounded),
                                Text('Rs.2670', style: TextStyle(
                                  fontSize: 16, fontWeight:FontWeight.bold,
                                ),),],),
                                Text('saved', style: TextStyle(
                                  fontSize: 16, fontWeight:FontWeight.w300,
                                ),),
                              ],
                            ),


                        ),
                          ],
                        ),

                      ],
                    )

                  ),




                ],
              ),
            ),

            ListTile(
              leading: Icon(Icons.help_outline),
              title: Text("Terms of Service"),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
              onTap: () {},

            ),
            ListTile(
              leading: Icon(Icons.account_balance_sharp),
              title: Text("Invite friends"),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
              onTap: () {},

            ),
            ListTile(
              leading: Icon(Icons.help_outline),
              title: Text("Game Zone"),
              trailing: Container(height: 20,color: Colors.red,
              child: Text('coming soon', textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.help_outline),
              title: Text("Help center"),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
              onTap: () {},

            ),
            ListTile(
              leading: Icon(Icons.account_box_sharp),
              title: Text("Contact us"),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
              onTap: () {},

            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Sign out"),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
              onTap: () {},

            ),



          ],


        ),
        // bottomNavigationBar: TabBar(
        //   labelColor: Colors.red,
        //   unselectedLabelColor: Colors.black54,
        //   indicatorSize: TabBarIndicatorSize.tab,
        //   indicatorPadding: EdgeInsets.all(5.0),
        //   indicatorColor: Colors.blue,
        //   tabs: [
        //     Tab(icon: Icon(Icons.home)),
        //     Tab(icon: Icon(Icons.favorite_border)),
        //     Tab(icon: Icon(Icons.location_on)),
        //     Tab(icon: Icon(Icons.ac_unit_rounded)),
        //     Tab(icon: Icon(Icons.person)),
        //   ],
        // ),





    );
  }
}