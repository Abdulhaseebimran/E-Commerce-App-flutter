import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/constants.dart';
import '../../../constants/size_configs.dart';
import '../../../models/product.dart';


class ProductDescriptions extends StatelessWidget {
  const ProductDescriptions({
    Key? key,
    required this.product,
    required this.pressOnSeeMore,
  }) : super(key: key);

  final Product product;
  final GestureTapCallback pressOnSeeMore;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Text(
            product.title,
          style: Theme.of(context).textTheme.headline6,),
        ),
      const SizedBox(height: 5,),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(15)),
            width: getProportionateScreenWidth(64),
            decoration: BoxDecoration(
              color: product.isFavourite ? const Color(0XFFFFE6E6) : 
              Color(0XFF5F6F9),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              )
            ),
            child: SvgPicture.asset("assets/icons/Heart Icon_2.svg",
            color: product.isFavourite ?  Color(0XFFFF4848) 
            : Color(0XFFD8DEE4)),
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(
            left: getProportionateScreenWidth(20),
            right: getProportionateScreenWidth(64)
            ),
          child: Text(product.description,
          maxLines: 3,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
          vertical: 10),
          child: GestureDetector(
            onTap:  pressOnSeeMore,
            child: Row(
              children: const [
                Text("See More Details",
                style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w600,
                ),
                ),
              SizedBox(width: 5,),
                Icon(Icons.arrow_forward_ios, 
                size: 12, color: kPrimaryColor,
                )
              ],
            ),
          ),
        )
      ]
      );
  }
}