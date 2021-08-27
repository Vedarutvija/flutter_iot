import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: HomePage(),
));
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: Colors.white,

        body: Container(),
        bottomNavigationBar: BottomNavigationBar(
            items: [
        BottomNavigationBarItem(
        icon: Icon(Icons.home),
        title: Text('Home'),
        backgroundColor: Colors.blue
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.bluetooth),
    title: Text('Bluetooth'),
    backgroundColor: Colors.blue
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.search),
    title: Text('Search'),
    backgroundColor: Colors.blue
    ),
    ],
    ),



    appBar: AppBar(
    backgroundColor: Colors.blue,
    leading: const Icon(Icons.menu),
    title: const Text(""),
    actions: <Widget>[
    IconButton(
    icon: const Icon(Icons.add),
    onPressed: () {},
    ),

    PopupMenuButton(
    itemBuilder: (BuildContext context) {
    return [
    const PopupMenuItem(child: Text('')),
    const PopupMenuItem(child: Text(''))
    ];
    },
    )

    ],
    ),
    );
  }
}