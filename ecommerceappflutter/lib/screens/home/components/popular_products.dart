import 'package:ecommerceappflutter/screens/details/details_Screens.dart';
import 'package:ecommerceappflutter/screens/home/components/products_card.dart';
import 'package:ecommerceappflutter/screens/home/components/section_title.dart';
import 'package:flutter/material.dart';

import '../../../constants/size_configs.dart';
import '../../../models/product.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(title: "Popular Product", press: (){}),
        SizedBox(height: getProportionateScreenHeight(20),),
        SingleChildScrollView(
         scrollDirection: Axis.horizontal,
          child: Row(
            children: [
             ...List.generate(demoProducts.length, 
             (index) => ProductsCard(
               product: demoProducts[index],
               press: () => Navigator.pushNamed(
                 context,
            DetailsScreen.routeName,
            arguments: ProductDetailsArguments(product: demoProducts[index]),
          ),)
               ),
               SizedBox(width: getProportionateScreenWidth(20),
               ),
            ],
          ),
        ),
      ],
    );
  }
}
