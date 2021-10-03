import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:untitled/Screens/HomePage.dart';
import 'package:untitled/Screens/Me.dart';
class Bluetooth extends StatelessWidget {
  const Bluetooth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: DefaultTabController(
        length: 4,
        child: Scaffold(

            appBar: AppBar(

              backgroundColor: Colors.blue,
              title: const Text('Connect'),

              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {},
                ),
              ],
            ),
            body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:<Widget>[
                    SizedBox( height: 160,),
                    ElevatedButton(

                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(150, 50),
                            maximumSize: const Size(200, 50),
                            primary: Colors.pinkAccent,
                          ),
                        child: Text('Bluetooth'),

                        onPressed: () {
                          print('Pressed');
                        },

                    ),
                    SizedBox( height: 20,),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(150, 50),
                          maximumSize: const Size(200, 50),
                          primary: Colors.lightBlueAccent,
                        ),
                        child: Text('Alexa'),

                        onPressed: () {
                          print('Pressed');
                        },

                    ),
                    SizedBox( height: 20,),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          // onPrimary: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        child: Text('Google Assistant'),

                        onPressed: () {
                          print('Pressed');
                        },

                    )
                  ]
              ),
            ),

            bottomNavigationBar: CurvedNavigationBar(

              items: const <Widget>[
                Icon(Icons.home, size: 30),
                Icon(Icons.bluetooth, size: 30, color: Color(0XFF22E67B)),
                Icon(Icons.account_circle, size: 30),
              ],
              index: 2,
              onTap: (index) {
                if (index == 0) {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => HomePage()));
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