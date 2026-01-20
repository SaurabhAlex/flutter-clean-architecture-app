import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget{

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(),
            TextField(),
            ElevatedButton(onPressed: () {
            }, child: Text('Login'))
          ],
        ),
      ),
    );
  }

}