import 'package:untitled/SignUp.dart';

import 'Screens/HomePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Loginpage(),
));

class Loginpage extends StatelessWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Container(
        height: MediaQuery.of(context).size.height,
        width: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Column(
                  children: [
                    Text ("Home Automation", style: TextStyle(
                      fontSize: 40,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                    ),),
                    SizedBox(height: 30,)
                  ],

                ),
                Center(
                  child: TextField(decoration: InputDecoration(
                      icon: Icon(Icons.attach_email_outlined, color: Colors.black,),
                      labelText: 'E-mail', labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  )
                  ),),
                ),
                Center(
                  child: TextField(decoration: InputDecoration(
                      icon: Icon(Icons.vpn_key, color: Colors.black,),
                      suffixIcon: Icon(Icons.visibility_off_rounded, color: Colors.black,),
                      labelText: 'Password', labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  )
                  ),),

                ),

                SizedBox( height: 140,),
                Container(
                    height: 50,
                    child: Material(
                      borderRadius: BorderRadius.circular(40),

                      shadowColor: Colors.red,
                      color: Colors.blue,
                      elevation: 7,
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                        minWidth: 200,
                        child: Text('Login' , style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold

                        ),),
                      ),
                    )
                ),
                SizedBox( height: 20),
                Container(
                  child: Text('  No account?  ', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 15,
                  ),),
                ),

                SizedBox( height: 20),
                Container(
                    height: 50,
                    child: Material(
                      borderRadius: BorderRadius.circular(40),
                      shadowColor: Colors.lightGreen,
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
                        child: Text('Register' , style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                    )
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
