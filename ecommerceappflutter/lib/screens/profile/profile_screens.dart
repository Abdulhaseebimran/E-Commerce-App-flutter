import 'package:ecommerceappflutter/constants/constants.dart';
import 'package:ecommerceappflutter/enums.dart';
import 'package:ecommerceappflutter/screens/home/home_screens.dart';
import 'package:ecommerceappflutter/screens/profile/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../components/custom_bottom_nav_bar.dart';

class ProfileScreens extends StatelessWidget {
  const ProfileScreens({Key? key}) : super(key: key);
  
  static String routeName = '/ProfileScreens';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      title: const Text("Profile",
      style: TextStyle(
        color: Colors.grey
      ),
      ),centerTitle: true,
     ),
     body: const Body(),
     bottomNavigationBar: const CustomBottomNavBar(selectedmenu: MenuState.profile,),
    );
  }
}
