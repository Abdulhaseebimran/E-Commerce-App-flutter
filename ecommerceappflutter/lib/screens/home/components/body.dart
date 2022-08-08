import 'package:ecommerceappflutter/constants/constants.dart';
import 'package:ecommerceappflutter/constants/size_configs.dart';
import 'package:ecommerceappflutter/models/product.dart';
import 'package:ecommerceappflutter/screens/home/components/Special_Offers.dart';
import 'package:ecommerceappflutter/screens/home/components/categories.dart';
import 'package:ecommerceappflutter/screens/home/components/discount_banner.dart';
import 'package:ecommerceappflutter/screens/home/components/home_header.dart';
import 'package:ecommerceappflutter/screens/home/components/popular_products.dart';
import 'package:ecommerceappflutter/screens/home/components/products_card.dart';
import 'package:ecommerceappflutter/screens/home/components/section_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
          SizedBox(height: getProportionateScreenHeight(20),),
          const  HomeHeader(),
          SizedBox(height: getProportionateScreenHeight(30),),
          const DiscountBanner(),
          SizedBox(height: getProportionateScreenHeight(30),),
          Categories(),
           SizedBox(height: getProportionateScreenHeight(30),),
          const SpecialOffers(),
          SizedBox(height: getProportionateScreenHeight(30),),
         const PopularProducts(),
          SizedBox(height: getProportionateScreenHeight(30),),
          ],
        )),
    );
  }
}

