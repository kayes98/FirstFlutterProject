import 'package:flutter/material.dart';
class Homepage extends StatelessWidget {
  // const Homepage({super.key});
  final int days = 80;
  final String nam = 'Kayes';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Shoping App")),
          backgroundColor: Colors.blue

      ),
      body: Center(
        child: Container(
          child: Text("Welcome $days $nam World"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
