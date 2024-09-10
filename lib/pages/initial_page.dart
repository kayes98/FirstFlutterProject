import 'package:flutter/material.dart';
import '../utils/routes.dart';

class InitialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Fullscreen Image Background
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/initial.jpg"),
                fit: BoxFit.cover, // This makes the image cover the entire screen
              ),
            ),
          ),
          // Centering the buttons at the bottom
          Positioned(
            bottom: 50, // Position the buttons higher or lower by adjusting this value
            left: 0,
            right: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.loginRoute);
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 22,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(

                    backgroundColor: Colors.cyan[300], // Button background color
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  ),
                ),
                SizedBox(height: 20), // Space between the buttons
                ElevatedButton(
                  onPressed: () {
                    // Ensure this route is defined
                  },
                  child: Text(
                    "Register",
                    style: TextStyle(
                      fontSize: 21,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrangeAccent, // Button background color for register
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
