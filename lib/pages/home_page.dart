import 'package:flutter/material.dart';
class Homepage extends StatelessWidget {
  // const Homepage({super.key});
  // final int days = 80;
  final String wl = 'Welcome';
  final String nam = 'Travel';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Travel App")),
          backgroundColor: Colors.blue

      ),
      body: Center(
        child: Container(
          child: Text("$wl To $nam World",
            style:TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 28
            ),),

        ),
      ),
      drawer: Drawer(

        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 90.0),
          child: Text("Starting \nDestination",
            // textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              fontSize: 20,

            ),
          ),
        ),
      ),
    );
  }
}
