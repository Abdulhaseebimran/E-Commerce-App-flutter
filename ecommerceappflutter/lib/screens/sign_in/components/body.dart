import 'package:ecommerceappflutter/components/no_account_text.dart';
import 'package:ecommerceappflutter/components/scroll_card.dart';
import 'package:ecommerceappflutter/constants/constants.dart';
import 'package:ecommerceappflutter/constants/size_configs.dart';
import 'package:ecommerceappflutter/screens/forgot_password/forgot_password.dart';
import 'package:ecommerceappflutter/screens/sign_in/components/sign_form.dart';
import 'package:flutter/material.dart';


class Body extends StatelessWidget {
 const Body({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight *0.02,),
              Text("Welcome Back", 
            style: TextStyle(fontSize: getProportionateScreenHeight(28), 
            color: Colors.black, fontWeight: FontWeight.bold),
            ),
            const Text("Sign in with your email and password  \nor continue with social media",
            textAlign: TextAlign.center,
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.04,),
            SignForm(),
            SizedBox(height: SizeConfig.screenHeight * 0.08),
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
                SizedBox(height: getProportionateScreenHeight(20)),
               const NoAccountText(),
              ],
            ),
               ),
          ),
        ), 
      );
  }
}



