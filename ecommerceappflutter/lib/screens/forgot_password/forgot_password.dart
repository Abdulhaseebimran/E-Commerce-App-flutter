import 'package:ecommerceappflutter/screens/forgot_password/body.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);
  static String routeName = "/ForgotPassword";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Forgot Password",
      style: TextStyle(color: Color(0XFF8B8B8B)),
      ),centerTitle: true,),
      body: const Body()
    );
  }
}