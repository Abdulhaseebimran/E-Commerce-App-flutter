import 'package:ecommerceappflutter/components/coustom_suffix_icon.dart';
import 'package:ecommerceappflutter/constants/constants.dart';
import 'package:ecommerceappflutter/constants/size_configs.dart';
import 'package:ecommerceappflutter/screens/sign_in/components/form_error.dart';
import 'package:ecommerceappflutter/screens/sign_up/components/sign_up_form.dart';
import 'package:ecommerceappflutter/screens/splash/components/body.dart';
import 'package:ecommerceappflutter/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../components/scroll_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenHeight(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
               SizedBox(height: SizeConfig.screenHeight * 0.02,),
              Text("Register Account",
              style: headlineStyle
              ),
              const Text("Complete your details or continue \nwith social media",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.07,),
            const SignUpForm(),
            SizedBox(height: SizeConfig.screenHeight * 0.07,),
            Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocalCard(
                        icon: "assets/icons/google-icon.svg",
                        press: () {},
                      ),
                      SocalCard(
                        icon: "assets/icons/facebook-2.svg",
                        press: () {},
                      ),
                      SocalCard(
                        icon: "assets/icons/twitter.svg",
                        press: () {},
                      ),
                     
                    ],
                  ), 
                  SizedBox(height: getProportionateScreenHeight(20),),
                  Text("By continuing your confirm that you agree \nwith our Term and Condition",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.caption,)
            ],
          ),
        ),
      ),
    );
  }
}
