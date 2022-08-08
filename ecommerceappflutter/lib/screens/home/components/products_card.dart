import 'package:ecommerceappflutter/constants/size_configs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/constants.dart';
import '../../../models/product.dart';


class ProductsCard extends StatelessWidget {
  ProductsCard({
    Key? key, 
      this.width = 140,
     this.AspectRation = 1.02, 
     required this.product, 
     required this.press,
  }) : super(key: key);

  final double width, AspectRation;
  final Product product;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap:  press,
        child: SizedBox(
          width: getProportionateScreenWidth(width),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: AspectRation,
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                  decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Image.asset(product.images[0]),
                ),
              ),
              const SizedBox(height: 5,),
              Text(product.title,
              style: const TextStyle(color: Colors.black),
              maxLines: 2,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("\$${product.price}",
                  style: TextStyle(
                  fontSize: getProportionateScreenWidth(18),
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w600),
                  ),
                   InkWell(
                    onTap: (){},
                    borderRadius: BorderRadius.circular(30),
                     child: Container(
                      padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                                 height: getProportionateScreenWidth(28),
                                 width: getProportionateScreenWidth(28),
                                 decoration: BoxDecoration(
                                   color:product.isFavourite ? kPrimaryColor.withOpacity(0.15) : 
                                   kSecondaryColor.withOpacity(0.1),
                                   shape: BoxShape.circle
                                 ),
                                 child: SvgPicture.asset("assets/icons/Heart Icon_2.svg",
                                 color: product.isFavourite ? const Color(0XFFFF4848) :
                                 const Color(0XFFD8DEE4),),
                               ),
                   )
                ],
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}
