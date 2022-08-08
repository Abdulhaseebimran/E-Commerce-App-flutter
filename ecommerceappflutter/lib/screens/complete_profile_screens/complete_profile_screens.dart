import 'package:ecommerceappflutter/screens/complete_profile_screens/components/body.dart';
import 'package:flutter/material.dart';


class CompleteProfile extends StatelessWidget {
  const CompleteProfile({Key? key}) : super(key: key);

  static String routeName = "/CompleteProfile";

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