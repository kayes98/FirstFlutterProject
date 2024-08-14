import 'package:cyborg/pages/home_page.dart';
import 'package:cyborg/pages/login_page.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    bringVagitables( bag: true); // method
    return MaterialApp(
      // home: Homepage(),
      themeMode: ThemeMode.dark,
      theme: ThemeData(primarySwatch: Colors.deepPurple), //not working
      darkTheme: ThemeData(brightness: Brightness.light), // not working
      debugShowCheckedModeBanner: false,

      // initialRoute: "/home",
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => Homepage(),
        "/login" : (context) => LoginPage()
      },
    );

  }
  //not compulsory when input {} on method.
    bringVagitables({required bool bag, int taka =100}) {
  }
}
