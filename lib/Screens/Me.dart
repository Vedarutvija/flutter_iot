import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:untitled/Screens/HomePage.dart';
import 'package:untitled/Screens/Connect.dart';
class Me extends StatelessWidget {
  const Me({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: DefaultTabController(
        length: 4,
        child: Scaffold(
            // appBar: AppBar(
            //   backgroundColor: Colors.blue,
            //   // leading: new IconButton(
            //   //   icon: new Icon(Icons.settings),
            //   //   onPressed: (){}
            //   // ),
            //   ///
            //   // leading: GestureDetector(
            //   //   onTap: (
            //   //
            //   //       ) {
            //   //     myKey.currentState.openDrawer();
            //   //     /* Write listener code here */ },
            //   //   child: Icon(
            //   //     Icons.menu,  // add custom icons also
            //   //   ),
            //   // ),
            //   title: const Text('My Profile'),
            //   actions: <Widget>[
            //   ],
            // ),
            body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:<Widget>[
                    SizedBox( height: 250,),
                  ]
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