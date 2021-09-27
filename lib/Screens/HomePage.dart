import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:untitled/Screens/Connect.dart';
import 'package:untitled/Screens/Me.dart';
import 'package:untitled/Screens/RoomSettings.dart';
import 'package:untitled/Screens/HomeSettings.dart';
void main() => runApp(MaterialApp(
  home: HomePage(),
));
class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState
    extends State<HomePage> {

  // int _currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: DefaultTabController(
        length: 4,
        child: Scaffold(

          appBar: AppBar(

            backgroundColor: Colors.blue,
            // leading: new IconButton(
            //   icon: new Icon(Icons.settings),
            //   onPressed: (){}
            // ),
            ///
            // leading: GestureDetector(
            //   onTap: (
            //
            //       ) {
            //     myKey.currentState.openDrawer();
            //     /* Write listener code here */ },
            //   child: Icon(
            //     Icons.menu,  // add custom icons also
            //   ),
            // ),

            bottom: const TabBar(
              tabs: [
                Tab(text:"Living Room"),
                Tab(text:"Master Bedroom"),
                Tab(text:"Study Room"),
                Tab(text:"Kitchen"),
              ],
            ),
            title: const Text('My Home'),

            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {},
              ),

              // PopupMenuButton(
              //   itemBuilder: (BuildContext context) {
              //     return [
              //       const PopupMenuItem(child: Text('')),
              //       const PopupMenuItem(child: Text(''))
              //     ];
              //   },
              // )
            ],
          ),
          body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:<Widget>[
                  SizedBox( height: 250,),
                  ElevatedButton(
                    child: Text('Add Device'),

                    onPressed: () {
                      print('Pressed');
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                    )
                  )

                ]
            ),
          ),
          drawer: Drawer(
              child: ListView(
                // Important: Remove any padding from the ListView.
                padding: EdgeInsets.zero,
                children: [
                  const DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: Text('My Home'),
                  ),
                  ListTile(
                    title: const Text('Home Management'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  HomeSettings()),
                      );
                    },
                  ),
                  ListTile(
                    title: const Text('Room Management'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  SettingsPage()),
                      );
                    },
                  ),
                ],
              ),
          ),

        bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: const Color(0XFF0091EA),
        items: const <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.bluetooth, size: 30),
          Icon(Icons.account_circle, size: 30),
        ],
        index: 2,
        onTap: (index) {
          if (index == 0) {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => HomePage()));
          }
          if (index == 1) {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Bluetooth()));
          }
          if (index == 2) {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Me()));
          }

        },
      )
        ),
      ),
    );
  }
}
