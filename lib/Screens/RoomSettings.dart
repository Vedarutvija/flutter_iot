import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
class SettingsPage extends StatefulWidget {
  // const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
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
                color: Colors.blue[500],
                child: const Center(child: Text('Hall Room'))
              ),
              Container(
                  height: 50,
                  color: Colors.blue[500],
                  child: const Center(child: Text('Bed Room'))

              ),
              Container(
                  height: 50,
                  color: Colors.blue[500],
                  child: const Center(child: Text('Kitchen'))

              ),
              Container(
                  height: 50,
                  color: Colors.blue[500],
                  child: const Center(child: Text('Study Room'))

              ),
              Container(
                  height: 50,
                  color: Colors.blue[500],
                  child: const Center(child: Text('Add Room'))

              ),
              // SettingsGroup(
              //   title: 'A',
              //   children: [
              //     Column(
              //       children: [
              // ]
              // ),
              // ],
              // )
            ],
          ),
        ],
      ),
  ),
  );

}

// import 'package:untitled/Screens/HomePage.dart';
//
// void main() => runApp(MaterialApp(
//   home: settings(),
// ));
//
// class settings extends StatelessWidget {
//   const settings({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Column(
//           children: [
//             ListView(
//               children: <Widget>[
//                 Container(
//                   height: 50,
//                   color: Colors.blue[600],
//                   child: const Center(child: Text('Living Room')),
//                 ),
//                 Container(
//                   height: 50,
//                   color: Colors.amber[500],
//                   child: const Center(child: Text('Bed Room')),
//                 ),
//                 Container(
//                   height: 50,
//                   color: Colors.amber[100],
//                   child: const Center(child: Text('Study Room')),
//                 ),
//                 Container(
//                   height: 50,
//                   color: Colors.blue[600],
//                   child: const Center(child: Text('Kitchen')),
//                 ),
//                 Container(
//                   height: 50,
//                   color: Colors.blue[600],
//                   child: const Center(child: Text('Add Room')),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
