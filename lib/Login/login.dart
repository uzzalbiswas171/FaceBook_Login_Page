import 'package:flutter/material.dart';

import '../drawer.dart';
import '../home.dart';
import 'facebook_user_sign_up_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<ScaffoldState> _globalKey=GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      key:_globalKey ,
      drawer:HomePage(),
      appBar: AppBar(
        title: Text("Login Here"),
        leading:Icon(Icons.login_rounded) ,
      ),
      body: Container(
       // clipBehavior: Clip.none,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin:Alignment.topLeft,
              end: Alignment.bottomRight,
              colors:[
                Colors.greenAccent,
                Colors.pink,
                Colors.yellowAccent,
                Colors.green,
                Colors.lightBlueAccent,
              ],
          ),
        ),
        padding: EdgeInsets.all(16),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
             // clipBehavior:Clip.none,
              color: Colors.white.withOpacity(0.4),
              height: 400,
              width: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    margin: EdgeInsets.only(
                      right: 40,
                      left: 40,
                      bottom: 5,
                      top: 5,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(22)),
                    ),
                    child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter Your email",
                          labelText: "Email",
                          labelStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                          prefixIcon: Icon(Icons.account_circle_outlined,color:Colors.black,),
                        ),
                        keyboardType:TextInputType.emailAddress
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.only(
                      right: 40,
                      left: 40,
                      bottom: 5,
                      top: 5,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(22)),
                    ),
                    child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter Your Password",
                          labelText: "Password",
                          labelStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                          prefixIcon: Icon(Icons.account_circle_outlined,color:Colors.black,),
                        ),
                        keyboardType:TextInputType.emailAddress
                    ),
                  ),
                  ActionChip(label: Text("next"),
                      onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context) => Facebook_user_sign_up_Page()));
                      })
                ],
              ),
            ),

            Positioned(
           //   bottom: 350,

              left: 50,
              bottom: 350,
              right: 50,

              child: Container(

                //clipBehavior: Clip.none,
               // clipBehavior:Clip.none ,
                height: 100,
                width: MediaQuery.of(context).size.width*0.5,
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person,size: 60,),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
