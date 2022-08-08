import 'package:ecommerceappflutter/constants/size_configs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CoustomSuffix extends StatelessWidget {
  const CoustomSuffix({
    Key? key, required this.svgIcon,
  }) : super(key: key);

  final String svgIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
      0, getProportionateScreenWidth(20),
      getProportionateScreenWidth(20),
      getProportionateScreenWidth(20)),
      child: SvgPicture.asset(svgIcon,
      height: getProportionateScreenHeight(18),),
    );
  }
}