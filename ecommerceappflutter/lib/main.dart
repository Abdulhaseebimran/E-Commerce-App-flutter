import 'package:ecommerceappflutter/routes.dart';
import 'package:ecommerceappflutter/screens/splash/splash_screens.dart';
import 'package:ecommerceappflutter/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter demo",
      theme: theme(),
      // home:  const ProfileScreens(),
      initialRoute: Splash.routeName,
      routes: routes,
    );
  }
}

