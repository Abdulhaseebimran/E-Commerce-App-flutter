
import 'package:ecommerceappflutter/constants/size_configs.dart';
import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
   RoundedIconButton({
    Key? key,
     required this.icondata, 
     required this.press,
  }) : super(key: key);

  final IconData icondata;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      child: FlatButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50)
        ),
        color: Colors.white,
        onPressed: press,
         child: Icon(icondata)
         ),
    );
  }
}