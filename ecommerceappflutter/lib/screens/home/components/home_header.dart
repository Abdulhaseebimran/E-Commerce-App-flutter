import 'package:ecommerceappflutter/constants/size_configs.dart';
import 'package:ecommerceappflutter/screens/cart/cart_screens.dart';
import 'package:ecommerceappflutter/screens/home/components/Search_field.dart';
import 'package:ecommerceappflutter/screens/home/components/icon_btn_with_container.dart';
import 'package:ecommerceappflutter/screens/login_success/login_success.dart';
import 'package:flutter/material.dart';


class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           const Searchfield(),
               IconButtonWithContainer(
           svgSrc: "assets/icons/Cart Icon.svg",
          //  numOfitem: 3,
          press: () =>
           Navigator.pushNamed(context, CartScreens.routeName),
               ),
     IconButtonWithContainer(
    svgSrc: "assets/icons/Bell.svg",
    numOfitem: 4,
    press: () {},
          ),
               ],
      ),
    );
  }
}

