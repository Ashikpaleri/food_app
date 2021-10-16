import 'package:flutter/material.dart';

class UserScreen extends StatefulWidget{
  @override
  _UserState createState() => _UserState();
}
class _UserState extends State<UserScreen>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
      // image_carousel,
      new Padding(padding: const EdgeInsets.all(8.0),
    ),
      SizedBox(
        height: 115,
        width: 115,
        child: Stack(
          clipBehavior: Clip.none,
          fit: StackFit.expand,
          children: [

            Icon(Icons.person,size: 100,),
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
              // trailing: Icon(Icons.arrow_forward_ios_sharp),
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






    );
  }
}