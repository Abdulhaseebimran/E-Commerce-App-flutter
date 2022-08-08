import 'package:ecommerceappflutter/screens/OTP/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class OtpScreens extends StatelessWidget {
  const OtpScreens({Key? key}) : super(key: key);

  static String routeName = "/OtpScreens";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const  Text("OTP Verification",
        style: TextStyle(color: Color(0XFF8B8B8B)),
        ),
        centerTitle: true,
      ),
      body: const Body(),
    );
  }
}