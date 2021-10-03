import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeSettings extends StatefulWidget {
  // const SettingsPage({Key? key}) : super(key: key);

  @override
  _HomeSettingsState createState() => _HomeSettingsState();
}

class _HomeSettingsState extends State<HomeSettings> {
  @override
  Widget build(BuildContext context) => Scaffold (
    body: SafeArea(
      child: ListView(
        padding: EdgeInsets.all(24),
        children: [
          Column(
            children: <Widget>[
              Container(
                  height: 50,
                  color: Colors.blueGrey[500],
                  child: const Center(child: Text('My Home'))
              ),
              Container(
                  height: 50,
                  color: Colors.blueAccent[500],
                  child: const Center(child: Text('Add Home'))

              ),
              Container(
                  height: 50,
                  color: Colors.lightBlue[500],
                  child: const Center(child: Text('Join Home'))
              ),
            ],
          ),
        ],
      ),
    ),
  );
}