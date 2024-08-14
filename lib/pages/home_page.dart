import 'package:flutter/material.dart';
class Homepage extends StatelessWidget {
  // const Homepage({super.key});
  final int days = 40;
  final String nam = 'KAYES';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Shoping App")),

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
