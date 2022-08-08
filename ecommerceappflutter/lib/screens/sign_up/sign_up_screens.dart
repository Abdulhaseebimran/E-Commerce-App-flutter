import 'package:ecommerceappflutter/screens/sign_Up/components/body.dart';
import 'package:flutter/material.dart';


class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);
  static String routeName = "/signUp";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const  Text("Sign Up",
        style: TextStyle(color: Color(0XFF8B8B8B)),
        ),
        centerTitle: true,
      ),
      body: const Body(),
    );
  }
}