import 'package:flutter/material.dart';
import 'package:shoesapp/screens/menu.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      theme: ThemeData(
     cardColor: Color.fromRGBO(0, 124, 198, 20) ,
     bottomAppBarColor: Color.fromRGBO(11, 92, 180, 20),
    
        primarySwatch: Colors.blue,
      ),
      home: MenuScreen());
  }
}



