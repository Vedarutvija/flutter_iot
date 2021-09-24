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
                    SizedBox( height: 250,),
                    ElevatedButton(

                        child: Text('Bluetooth'),

                        onPressed: () {
                          print('Pressed');
                        },
                        style: ButtonStyle(

                          backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                        )
                    ),
                    ElevatedButton(
                        child: Text('Alexa'),

                        onPressed: () {
                          print('Pressed');
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                        )
                    ),
                    ElevatedButton(
                        child: Text('Google Assistant'),

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