import 'package:ecommerceappflutter/constants/constants.dart';
import 'package:ecommerceappflutter/screens/profile/components/profile_menu.dart';
import 'package:ecommerceappflutter/screens/profile/components/profile_pics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
      children: [
       const  ProfilePics(),
      const SizedBox(height: 20,),
       ProfileMenu(
        icons: "assets/icons/User Icon.svg",
        text: "My Account",
        press: (){},
       ),
       ProfileMenu(
        icons: "assets/icons/Bell.svg",
        text: "Notifications",
        press: (){},
       ),
       ProfileMenu(
        icons: "assets/icons/Settings.svg",
        text: "Settings",
        press: (){},
       ),
       ProfileMenu(
        icons: "assets/icons/Question mark.svg",
        text: "Help Center",
        press: (){},
       ),
       ProfileMenu(
        icons: "assets/icons/Log out.svg",
        text: "Log Out",
        press: (){},
       ),
      ],
      ),
    );
  }
}

