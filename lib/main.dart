import 'package:cyborg/pages/home_page.dart';
import 'package:cyborg/pages/login_page.dart';
import 'package:cyborg/pages/initial_page.dart';
import 'package:cyborg/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MyApp()); // runApp(MyRoutes());
}
class MyApp extends StatelessWidget {
  // const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Homepage(),
      themeMode: ThemeMode.dark,
      theme: ThemeData(primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.lato().fontFamily,
      primaryTextTheme: GoogleFonts.latoTextTheme(),
      ), //not working
      darkTheme: ThemeData(brightness: Brightness.light), // not working
      debugShowCheckedModeBanner: false,
      // initialRoute: "/home",
      routes: {
        // "/": (context) => LoginPage(),
        "/": (context) => InitialPage(),
        MyRoutes.homeRoute: (context) => Homepage(),
        MyRoutes.initialRoute: (context) => InitialPage(),
        
        MyRoutes.loginRoute: (context) => LoginPage()
      },
    );
  }//not compulsory when input {} on method.
}
