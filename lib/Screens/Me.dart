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
        Container(
        margin: const EdgeInsets.all(12.0),
           padding: const EdgeInsets.all(8.0),
            width: 80,
             height: 80,
            decoration:BoxDecoration(
            borderRadius:BorderRadius.circular(8),
              // color:const Color(0XFFFF0067)
    ),
            child: const CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage("images/robo.jpg"),
    )
    ),


          Container(
            margin: const EdgeInsets.all(12.0),
            padding: const EdgeInsets.all(8.0),
            width: 400,
            decoration:BoxDecoration(
            borderRadius:BorderRadius.circular(8),
            color:const Color(0XFFFF0067)
    ),
            child: const Text("J.Vedarutvija",style: TextStyle(color:Color(0XFFFFFFFF),fontSize:25),
    ),
    ),
    Container(
                margin: const EdgeInsets.all(12.0),
            padding: const EdgeInsets.all(8.0),
            width: 400,
            decoration:BoxDecoration(
            borderRadius:BorderRadius.circular(8),
            color:const Color(0XFF1D1F33)
    ),
    child: const Text("Log out",style: TextStyle(color:Color(0XFF22E67B),fontSize:25),),
    ),
    // Container(
    //         width: 300,
    //         margin: const EdgeInsets.all(12.0),
    //         padding: const EdgeInsets.all(8.0),
    //         decoration:BoxDecoration(
    //         borderRadius:BorderRadius.circular(8),
    //         color:const Color(0XFF1D1F33)
    // ),
    //         child: const Text("Fresher!",style: TextStyle(color:Color(0XFF22E67B),fontSize:25),),
    // ),
    // Container(
    //         width: 300,
    //         margin: const EdgeInsets.all(12.0),
    //         padding: const EdgeInsets.all(8.0),
    //         decoration:BoxDecoration(
    //         borderRadius:BorderRadius.circular(8),
    //         color:const Color(0XFF1D1F33)
    // ),
    //         child: const Text("Open To Work!",style: TextStyle(color:Color(0XFF22E67B),fontSize:25),),
    // ),
    ]
    ),
            ),
            bottomNavigationBar: CurvedNavigationBar(

              items: const <Widget>[
                Icon(Icons.home, size: 30),
                Icon(Icons.bluetooth, size: 30),
                Icon(Icons.account_circle, size: 30,color: Color(0XFFD81B60) ),
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


              },
            )
        ),
      ),
    );
  }
}
