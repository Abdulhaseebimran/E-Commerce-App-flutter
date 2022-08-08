import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/constants.dart';
import '../enums.dart';
import '../screens/home/home_screens.dart';
import '../screens/profile/profile_screens.dart';


class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key, 
  required this.selectedmenu,
  }) : super(key: key);

  final MenuState selectedmenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = const Color(0XFFB6B6B6);
    return Container(
     padding: const EdgeInsets.symmetric(vertical: 14),
     decoration: BoxDecoration(
       borderRadius: const BorderRadius.only(
         topLeft: Radius.circular(40),
         topRight: Radius.circular(40)
       ),
       color: Colors.white,
       boxShadow: [
         BoxShadow(
           offset: Offset(0, -15),
         blurRadius: 20,
         color:const Color(0XFFDADADA).withOpacity(0.15)
         ),
     ]
     ),
     child: SafeArea(
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [
         IconButton(
          onPressed: () =>   Navigator.of(context).push(
         MaterialPageRoute(
        builder: (context) => const HomeScreens())),
          icon: SvgPicture.asset("assets/icons/Shop Icon.svg",
          color: MenuState.home == selectedmenu 
          ? kPrimaryColor
          : inActiveIconColor,)
          ),
           IconButton(onPressed: (){},
          icon: SvgPicture.asset("assets/icons/Heart Icon.svg",
          color: MenuState.favourite == selectedmenu 
          ? kPrimaryColor
          : inActiveIconColor,)
          ),
           IconButton(onPressed: (){},
          icon: SvgPicture.asset("assets/icons/Chat bubble Icon.svg",
          color: MenuState.message == selectedmenu 
          ? kPrimaryColor
          : inActiveIconColor,)
          ),
         IconButton(onPressed: () =>
         Navigator.of(context).push(
         MaterialPageRoute(
        builder: (context) => const ProfileScreens())),
          icon: SvgPicture.asset("assets/icons/User Icon.svg",
          color: MenuState.profile == selectedmenu 
          ? kPrimaryColor
          : inActiveIconColor,)
          ),
         ],
       ),
     ),
    );
  }
}