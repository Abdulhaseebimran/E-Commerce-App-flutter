import 'package:ecommerceappflutter/constants/size_configs.dart';
import 'package:ecommerceappflutter/screens/splash/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

 static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    
    // you have to call it on your starting screens
    SizeConfig().init(context);
    return const Scaffold(
      body:Body(),
    );
  }
}