import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'SignUp.dart';
// import 'Loginpage.dart';
// import 'HomePage.dart';
// import 'settings.dart';

main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: 500,
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(height: 500),
                Container(
                    //login button
                    height: 50,
                    child: Material(
                      borderRadius: BorderRadius.circular(10),
                      shadowColor: Colors.red,
                      color: Colors.red,
                      elevation: 7,
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignUp()),
                          );
                        },
                        minWidth: 200,
                        child: Text(
                          'Welcome',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
