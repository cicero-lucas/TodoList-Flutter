import 'package:app/App/views/homePage_view.dart';
import 'package:app/App/views/loginPage_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.orange
      ),
      initialRoute: ("/"),
      routes: {
        "/":(context)=>LoginPageView(),
        "/home":(context)=>HomePageView(),
      }
    );
  }

}