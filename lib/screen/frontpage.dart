import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/screen/hometab.dart';
import 'package:foodapp/screen/favorite.dart';
import 'package:foodapp/screen/discounttab.dart';
import 'package:foodapp/screen/locationtab.dart';
import 'package:foodapp/screen/usertab.dart';
import 'package:foodapp/components/userdetailse.dart';


class HomeScreen extends StatefulWidget{
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {



  int currentTab = 0;
  final List<Widget> screens = [
    HometabScreen(),
    FavoriteScreen(),
    LocationScreen(),
    DiscountScreen(),
    UserScreen(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HometabScreen();




  @override
  Widget build(BuildContext context) {
    return Scaffold(

    //   DefaultTabController(length: 5,
    // child:Scaffold(

      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120),
      child: AppBar(
        elevation: 0.0,

        leading: IconButton(
          icon: Icon(Icons.person,color: Colors.grey,size: 60,), onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => UserDetails()));
        },
        ),


        backgroundColor: Colors.white,

        title: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
        Text("Hello, john",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),


            Text("panampalli Nagar Ernakulam",
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300,fontSize: 10),
            ),
            Icon(Icons.location_on, color: Colors.grey,size: 6,),


            Text("You've got a deal!",
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),




          ],

        ),

        actions: <Widget>[
          new IconButton(

              icon: Icon(
                Icons.notifications_none_outlined,color: Colors.black,),
              onPressed: () {

              }),


        ],
        bottom: SearchBar(),




      ),
      ),
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
                          currentScreen = HometabScreen();
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






    //   bottomNavigationBar: TabBar(
    //     labelColor: Colors.red,
    //     unselectedLabelColor: Colors.black54,
    //     indicatorSize: TabBarIndicatorSize.tab,
    //     indicatorPadding: EdgeInsets.all(5.0),
    //     indicatorColor: Colors.blue,
    //     tabs: [
    //       Tab(icon: Icon(Icons.home)),
    //       Tab(icon: Icon(Icons.favorite_border)),
    //       Tab(icon: Icon(Icons.location_on)),
    //       Tab(icon: Icon(Icons.ac_unit_rounded)),
    //       Tab(icon: Icon(Icons.person)),
    //     ],
    //   ),
    //   body: TabBarView(
    //     children: [
    //       HometabScreen(),
    //       FavoriteScreen(),
    //       LocationScreen(),
    //       DiscountScreen(),
    //       UserScreen(),
    //
    //
    //
    //     ],
    //   ),
    //
    //
    //
    //
    // ),
    );
  }
}

class SearchBar extends StatelessWidget implements PreferredSizeWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 450,
      margin: EdgeInsets.all(6),
      child: TextField(
        autofocus: false,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: 'Search products...',
            prefixIcon: Icon(
              Icons.search,
              color: Colors.black38,

            ),
            suffixIcon: Icon(Icons.view_compact_sharp,
              color: Colors.black38,),

            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(10),
            ),

            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(10)),
            hoverColor: Colors.white),
        style: TextStyle(color: Colors.black),

      ),

    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}

