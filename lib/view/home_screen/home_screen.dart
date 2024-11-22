import 'package:examproject/view/registration_screen/registration_sceen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Center(
              child: Text(
                "Home Screen",
                style: TextStyle(fontSize: 30),
              ),
            ),
            ElevatedButton(
               onPressed: () async {
               final prefs = await SharedPreferences.getInstance();
               await prefs.remove('email');
               await prefs.remove('password');
              Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => RegistrationSceen()));
               },
              child: Text("Log Out"),
           ),
          ],
        ),
      ),
    );
  }
}