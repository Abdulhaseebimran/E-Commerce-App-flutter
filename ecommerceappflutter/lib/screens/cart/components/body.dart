import 'package:ecommerceappflutter/constants/size_configs.dart';
import 'package:ecommerceappflutter/models/cart.dart';
import 'package:ecommerceappflutter/screens/cart/components/cart_items_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: ListView.builder(
        itemCount: demoCarts.length,
        itemBuilder: (context, index) => 
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Dismissible(
              key: Key(demoCarts[index].product.id.toString()),
              direction: DismissDirection.endToStart,
              background: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: const Color(0XFFFFE6E6),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Row(
                  children: [
                  const Spacer(),
                    SvgPicture.asset("assets/icons/Trash.svg")
                  ],
                ),
              ),
              onDismissed: (direction){
                setState(() {
                  demoCarts.removeAt(index);
                });
              },
              child: CartItemCard(cart: demoCarts[index],)),
        ),
        ),
    );
  }
}

// Dismissible(
//           key: Key(demoCarts[0].product.id.toString()),
//           background: Container(
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             decoration: BoxDecoration(
//               color: const Color(0XFFFFE6E6),
//               borderRadius: BorderRadius.circular(15)
//             ),
//             child: Row(
//               children: [
//               const Spacer(),
//                 SvgPicture.asset("assets/icons/Trash.svg")
//               ],
//             ),
//           ),
//           child: CartItemCard(cart: demoCarts[0],)),