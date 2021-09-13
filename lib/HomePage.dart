import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/settings.dart';
// import 'package:untitled/settings.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // int _currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            leading: const Icon(Icons.menu),
            bottom: const TabBar(
              tabs: [
                Tab(text: "Living Room"),
                Tab(text: "Master Bedroom"),
                Tab(text: "Study Room"),
                Tab(text: "Kitchen"),
              ],
            ),
            title: const Text('My Home'),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Settings()),
                  );
                },
              ),

              // mention the type item's value
              PopupMenuButton<int>(
                onSelected: (int optionIndex) {
                  switch (optionIndex) {
                    case 0:
                      {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Settings()),
                        );
                      }
                      break;
                    case 1:
                      {/* code for 2nd option */}
                      break;
                  }
                },
                itemBuilder: (BuildContext context) {
                  return [
                    const PopupMenuItem(
                      child: Text('Setting'),
                      // make sure you must pass a volue of mentioned
                      //type at line 46 otherwise it will send null causing bug.
                      // it will be later passed to onSelected's
                      // parameter 'option' of type
                      // int(which you have mentained as template)
                      value: 0,
                    ),
                    const PopupMenuItem(child: Text(''))
                  ];
                },
              )
            ],
          ),
          body: const TabBarView(
            children: [
              Icon(Icons.add),
              Icon(Icons.add),
              Icon(Icons.add),
              Icon(Icons.add),
            ],
          ),
        ),
      ),
    );

    // appBar: AppBar(
    //   backgroundColor: Colors.blue,
    //   leading: const Icon(Icons.menu),
    //   title: const Text(""),
    //   actions: <Widget>[
    //     IconButton(
    //       icon: const Icon(Icons.add),
    //       onPressed: () {},
    //     ),
    //
    //     PopupMenuButton(
    //       itemBuilder: (BuildContext context) {
    //         return [
    //           const PopupMenuItem(child: Text('')),
    //           const PopupMenuItem(child: Text(''))
    //         ];
    //       },
    //     )
    //   ],
    // ),
    // );
  }
}
