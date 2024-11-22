import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:examproject/view/home_screen/home_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: formKey,
            child: Column(
              
               children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Sign in to your account",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: passwordController,
                  obscureText:true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("remember me",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                    Text("forgot password",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueAccent,fontSize: 15),)
                  ],
                ),
                SizedBox(height: 10,),
                InkWell(
                  onTap: () async {
                    if (formKey.currentState!.validate()) {
                      final prefs = await SharedPreferences.getInstance();
                      final storedEmail = prefs.getString('email');
                      final storedPassword = prefs.getString('password');

                      if (emailController.text == storedEmail &&
                          passwordController.text == storedPassword) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Invalid email or password')),
                        );
                      }
                    }
                  },
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Text("sign in",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                         ),
                        ],
                      ),
                     height: 50, width: double.infinity,
                      decoration: BoxDecoration(border: Border.all(),
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Spacer(),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("dont you have a account?"),
                        Text("sign in",style: TextStyle(color: Colors.blue),),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}