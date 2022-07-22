import 'package:flutter/material.dart';

import 'Login/login.dart';
import 'drawer.dart';
import 'drawer1/drader1.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _drawer=GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      key:_drawer,
      drawer: DrawerPage(),
      appBar: AppBar(
        actions: [
          Icon(Icons.account_circle_outlined,size: 22,),
          SizedBox(
            width: 6,
          ),
          Icon(Icons.notification_important,size: 22,),
          SizedBox(
            width: 6,
          ),
          Icon(Icons.phone_callback,size: 22,),
          SizedBox(
            width: 6,
          ),
        ],
        title:Container(
          alignment: Alignment.center,
          child: Row(
            children: [

              SizedBox(
                width: 5,
              ),
              Text ("Food Choose",style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 22,

              ),),
            ],
          ),
        ),
      ),
      body: InkWell(
        onTap: ((){
          _drawer.currentState!.openDrawer();
        }),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("im/food.jpg"),fit: BoxFit.fill),
          ),
          child: Container(
            padding: EdgeInsets.only(
              top: 300,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcome to",style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w900,

              ),),

              Text("Food Page",style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w800
              ),),

              SizedBox(
                height: 10,
              ),

              InkWell(
                hoverColor: Colors.red,
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context) => DrawerPagee()));
                },

                child: Container(
                  height: 30,
                  width: 100,
                  decoration:BoxDecoration(
                    color: Colors.yellowAccent[200],
                   borderRadius: BorderRadius.all( Radius.circular(30) )
                  ) ,
                  child: Text("Next",style:
                    TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 22,
                    ),
                  ),
                  alignment: Alignment.center,
                ),
              )


            ],
            ),
          ),
        ),
      ),
    );
  }
}
