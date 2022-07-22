import 'package:flutter/material.dart';

import 'Login/facebook_user_sign_up_page.dart';
import 'Login/login.dart';
import 'drawer.dart';
import 'drawer1/drader1.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const HomePage(),
     // home: const DrawerPagee(),
     // home: const LoginPage(),
       home: const Facebook_user_sign_up_Page(),

    );
  }
}
