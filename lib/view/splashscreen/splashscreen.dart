import 'dart:async';
import 'package:examproject/view/registration_screen/registration_sceen.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  @override
  void initState() {
 
  Timer( Duration(seconds: 6), () {
    Navigator.push(context,MaterialPageRoute(builder: (context) => RegistrationSceen()),
    );
   }
  );
}
 Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("splashscreen",style: TextStyle(fontSize: 50),),
      ),
    );
  }
}