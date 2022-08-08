import 'package:ecommerceappflutter/screens/sign_in/components/body.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  static String routeName = '/sign_in';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const  Text("Sign In",style: TextStyle(color: Color(0XFF8B8B8B)),),centerTitle: true,
      ),
      body: const Body(),
    );
  }
}