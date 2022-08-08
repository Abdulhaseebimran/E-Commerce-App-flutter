import 'package:ecommerceappflutter/components/custom_bottom_nav_bar.dart';
import 'package:ecommerceappflutter/enums.dart';
import 'package:ecommerceappflutter/screens/home/components/body.dart';
import 'package:flutter/material.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({Key? key}) : super(key: key);

 static String routesName = "/HomeScreens";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
    body: Body(),
    bottomNavigationBar: CustomBottomNavBar(selectedmenu: MenuState.home),
    );
  }
}