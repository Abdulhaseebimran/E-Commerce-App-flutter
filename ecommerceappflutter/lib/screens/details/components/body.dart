import 'package:ecommerceappflutter/components/default_button.dart';
import 'package:ecommerceappflutter/screens/details/components/color_dots.dart';
import 'package:ecommerceappflutter/screens/details/components/product_descriptions.dart';
import 'package:ecommerceappflutter/screens/details/components/products_images.dart';
import 'package:ecommerceappflutter/screens/details/components/top_rounded_container.dart';
import 'package:flutter/material.dart';
import '../../../constants/size_configs.dart';
import '../../../models/product.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product: product),
          TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              ProductDescriptions(
                product: product, 
              pressOnSeeMore: () {}
              ),
              TopRoundedContainer(
                color: const Color(0XFFF6F7F9),
               child: ColorDots(product: product),
               ),
                 TopRoundedContainer(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: SizeConfig.screenWidth * 0.15,
                            right: SizeConfig.screenWidth * 0.15,
                            bottom: getProportionateScreenWidth(40),
                            top: getProportionateScreenWidth(15),
                          ),
                          child: DefaultButton(
                            text: "Add To Cart",
                            press: () {},
                          ),
            ) ),
            ],
          ),
         )
        ],
      ),
    );
  }
}



