import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants/constants.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key, 
    required this.text,
     required this.icons, 
     required this.press,
  }) : super(key: key);

  final String text , icons;
  final VoidCallback press;
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: FlatButton(
       padding: const EdgeInsets.all(20),
       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
       color: const Color(0XFFF5F6F9),
       onPressed: press,
        child: Row(
         children: [
         SvgPicture.asset(
          icons,
         width: 20,
         color: kPrimaryColor,),
        const  SizedBox(width: 20,),
        Expanded(
         child: Text(
          text,
         style: Theme.of(context).textTheme.bodyText1,)
         ),
         const Icon(Icons.arrow_forward_ios)
         ],
        )),
    );
  }
}
