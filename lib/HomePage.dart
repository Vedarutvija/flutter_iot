import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: HomePage(),
));
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState
    extends State<HomePage> {
  int _currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    final _kTabPages = <Widget>[
      const Center(child: Icon(Icons.cloud, size: 64.0, color: Colors.teal)),
      const Center(child: Icon(Icons.alarm, size: 64.0, color: Colors.cyan)),
      const Center(child: Icon(Icons.forum, size: 64.0, color: Colors.blue)),
    ];
    final _kBottmonNavBarItems = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
      const BottomNavigationBarItem(icon: Icon(Icons.bluetooth), label: ''),
      const BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
    ];
    assert(_kTabPages.length == _kBottmonNavBarItems.length);
    final bottomNavBar = BottomNavigationBar(
      items: _kBottmonNavBarItems,
      currentIndex: _currentTabIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(() {
          _currentTabIndex = index;
        });
      },
    );
    return Scaffold(
      body: _kTabPages[_currentTabIndex],
      bottomNavigationBar: bottomNavBar,


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