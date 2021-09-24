import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Screens/HomePage.dart';

void main() => runApp(MaterialApp(
  home: settings(),
));

class settings extends StatelessWidget {
  const settings({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            ListView(
              children: <Widget>[
                Container(
                  height: 50,
                  color: Colors.blue[600],
                  child: const Center(child: Text('Living Room')),
                ),
                Container(
                  height: 50,
                  color: Colors.amber[500],
                  child: const Center(child: Text('Bed Room')),
                ),
                Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: const Center(child: Text('Study Room')),
                ),
                Container(
                  height: 50,
                  color: Colors.blue[600],
                  child: const Center(child: Text('Kitchen')),
                ),
                Container(
                  height: 50,
                  color: Colors.blue[600],
                  child: const Center(child: Text('Add Room')),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
