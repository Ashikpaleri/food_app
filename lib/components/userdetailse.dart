import 'package:flutter/material.dart';
import 'package:foodapp/screen/locationtab.dart';
import 'package:foodapp/screen/hometab.dart';
import 'package:foodapp/screen/favorite.dart';
import 'package:foodapp/screen/discounttab.dart';
import 'package:foodapp/screen/usertab.dart';
import 'package:foodapp/components/userdata.dart';

class UserDetails extends StatefulWidget{
  @override
  _UserDetails createState() => _UserDetails();
}
class _UserDetails extends State<UserDetails> {

  int currentTab = 0;
  final List<Widget> screens = [
    HometabScreen(),
    FavoriteScreen(),
    LocationScreen(),
    DiscountScreen(),
    UserScreen(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = DataScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.location_on),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => LocationScreen()));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 80,
                      onPressed: () {
                      setState(() {
                        //
                        currentScreen = DataScreen();
                        currentTab = 0;
                      //
                      });
                      },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.home,
                        color: currentTab == 0 ? Colors.blue : Colors.grey,
                        )
                      ],
                    ),

                  ),
                  MaterialButton(
                    minWidth: 80,
                    onPressed: () {
                      setState(() {
                        currentScreen = FavoriteScreen();
                        currentTab = 1;

                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.favorite_border,
                          color: currentTab == 1 ? Colors.blue : Colors.grey,
                        )
                      ],
                    ),

                  ),

                  MaterialButton(
                    minWidth: 140,
                    onPressed: () {
                      setState(() {
                        currentScreen = DiscountScreen();
                        currentTab = 2;

                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.ac_unit,
                          color: currentTab == 2 ? Colors.blue : Colors.grey,
                        )
                      ],
                    ),

                  ),





                  MaterialButton(
                    minWidth: 30,
                    onPressed: () {
                      setState(() {
                        currentScreen = UserScreen();
                        currentTab = 3;

                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.person_outline_outlined,
                          color: currentTab == 3 ? Colors.blue : Colors.grey,
                        )
                      ],
                    ),

                  ),

                ],
              )
            ],
          ),
        ),
      ),
    );

  }
}
    // return DefaultTabController(length: 5,
    //   child: Scaffold(
    //     body:ListView(
    //       shrinkWrap: true,
    //       physics: NeverScrollableScrollPhysics(),
    //       children: <Widget>[
    //         // image_carousel,
    //         new Padding(padding: const EdgeInsets.all(8.0),
    //         ),
    //         SizedBox(
    //           height: 115,
    //           width: 115,
    //           child: Stack(
    //             clipBehavior: Clip.none,
    //             fit: StackFit.expand,
    //             children: [
    //
    //               Icon(Icons.person,size: 100,),
    //             ],
    //           ),
    //         ),
    //
    //         ListTile(
    //           leading: Icon(Icons.help_outline),
    //           title: Text("Terms of Service"),
    //           trailing: Icon(Icons.arrow_forward_ios_sharp),
    //           onTap: () {},
    //
    //         ),
    //         ListTile(
    //           leading: Icon(Icons.account_balance_sharp),
    //           title: Text("Invite friends"),
    //           trailing: Icon(Icons.arrow_forward_ios_sharp),
    //           onTap: () {},
    //
    //         ),
    //         ListTile(
    //           leading: Icon(Icons.help_outline),
    //           title: Text("Game Zone"),
    //           // trailing: Icon(Icons.arrow_forward_ios_sharp),
    //           onTap: () {},
    //         ),
    //         ListTile(
    //           leading: Icon(Icons.help_outline),
    //           title: Text("Help center"),
    //           trailing: Icon(Icons.arrow_forward_ios_sharp),
    //           onTap: () {},
    //
    //         ),
    //         ListTile(
    //           leading: Icon(Icons.account_box_sharp),
    //           title: Text("Contact us"),
    //           trailing: Icon(Icons.arrow_forward_ios_sharp),
    //           onTap: () {},
    //
    //         ),
    //         ListTile(
    //           leading: Icon(Icons.logout),
    //           title: Text("Sign out"),
    //           trailing: Icon(Icons.arrow_forward_ios_sharp),
    //           onTap: () {},
    //
    //         ),
    //
    //
    //
    //       ],
    //
    //
    //     ),
    //     // bottomNavigationBar: TabBar(
    //     //   labelColor: Colors.red,
    //     //   unselectedLabelColor: Colors.black54,
    //     //   indicatorSize: TabBarIndicatorSize.tab,
    //     //   indicatorPadding: EdgeInsets.all(5.0),
    //     //   indicatorColor: Colors.blue,
    //     //   tabs: [
    //     //     Tab(icon: Icon(Icons.home)),
    //     //     Tab(icon: Icon(Icons.favorite_border)),
    //     //     Tab(icon: Icon(Icons.location_on)),
    //     //     Tab(icon: Icon(Icons.ac_unit_rounded)),
    //     //     Tab(icon: Icon(Icons.person)),
    //     //   ],
    //     // ),
    //
    //
    //
    //
    //   ),
    // );
//   }
// }