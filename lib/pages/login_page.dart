import 'package:flutter/material.dart';
import 'package:cyborg/main.dart';
import '../utils/routes.dart';

class LoginPage extends StatefulWidget {


  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name='';
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white70,
      child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/travel.png",
                fit: BoxFit.cover,
                height: 325,

              ),

              Text("Welcome To\n Travel Companion App\n $name",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                ),
              ),

              SizedBox(
                height: 20.0,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            hintText: "Enter UserName",
                            labelText: "User Name"
                        ),
                        onChanged: (value){
                          name = value;
                          setState(() {

                          });
                        },
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Enter Password",
                            labelText: "Password"
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),

                      InkWell(
                        onTap: () async {
                          setState(() {
                            changeButton = true;
                          });
                          await Future.delayed(Duration(seconds: 1));
                          Navigator.pushNamed(context, MyRoutes.homeRoute);
                        },
                        child: AnimatedContainer(
                          duration: Duration(seconds: 2),
                          width: changeButton? 100 : 150,
                          height: 50,
                          // color: Colors.deepPurple,
                          alignment: Alignment.center,
                          child:changeButton
                              ? Icon(Icons.done,
                            color: Colors.white,)
                              : Text("Login",
                          style:TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18
                          ),
                          ),
                          decoration: BoxDecoration(
                            // color: Colors.deepPurpleAccent[100],
                            color: Colors.deepOrangeAccent[100],
                            // shape: changeButton? BoxShape.circle :
                            //   BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(changeButton ? 50 : 20)
                          ),
                        
                        
                        ),
                      ),


                      // ElevatedButton(onPressed: (){
                      //   Navigator.pushNamed(context, MyRoutes.homeRoute);
                      // },
                      //   child: Text("Login"),
                      //   style: TextButton.styleFrom(
                      //       minimumSize: Size(150, 50)
                      //   ),
                      // )



                    ],)
              )
            ],
          )
      )
    );
  }
}
