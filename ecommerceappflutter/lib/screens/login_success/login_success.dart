import 'package:ecommerceappflutter/screens/login_success/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginSuccess extends StatelessWidget {
  const LoginSuccess({Key? key}) : super(key: key);

  static String routeName = "/LoginSuccess";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        title: const Text("Login Success",
        style: TextStyle(color: Color(0XFF8B8B8B)),),
        centerTitle: true,
        ),
        body: const Body(),
      );
  }
}