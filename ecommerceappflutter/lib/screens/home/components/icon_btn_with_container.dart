import 'package:ecommerceappflutter/constants/constants.dart';
import 'package:ecommerceappflutter/constants/size_configs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class IconButtonWithContainer extends StatelessWidget {
  const IconButtonWithContainer({
    Key? key,
    required this.svgSrc,
    this.numOfitem = 0,
     required this.press,
  }) : super(key: key);

   final String svgSrc;
  final int numOfitem ;
  final GestureTapCallback press;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(12)),
            height: getProportionateScreenHeight(46),
            width: getProportionateScreenWidth(46),
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              shape: BoxShape.circle
            ),child: SvgPicture.asset(svgSrc),
          ),
           if (numOfitem != 0)
          Positioned(
             right: 0,
            top: -2,
            child: Container(
              width: getProportionateScreenWidth(16),
              height: getProportionateScreenWidth(16),
              decoration: BoxDecoration(
                color: const Color(0XFFFF4848),
                shape: BoxShape.circle,
                border: Border.all(width: 1.5, color: Colors.white),
              ),child: Center(
                child: Text("$numOfitem",style: TextStyle(fontSize: getProportionateScreenWidth(10),
                height: 1, color: Colors.white, fontWeight: FontWeight.w600),
              ),
            ),
          )
      )],
      ),
    );
  }
}