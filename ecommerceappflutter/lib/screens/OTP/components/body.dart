import 'package:ecommerceappflutter/components/default_button.dart';
import 'package:ecommerceappflutter/constants/constants.dart';
import 'package:ecommerceappflutter/constants/size_configs.dart';
import 'package:ecommerceappflutter/screens/OTP/components/otp_form.dart';
import 'package:ecommerceappflutter/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              Text("OTP Verification", style: headlineStyle,),
            const Text("We sent your code to +1 898 860 ***"),
            BuildTimer(),
            SizedBox(height: SizeConfig.screenHeight * 0.15),
           const OtpForm(),
           SizedBox(height: SizeConfig.screenHeight * 0.1),
            GestureDetector(
                  onTap: () {
                    // OTP code resend
              },
             child: const Text("Resend OTP Code",
              style: TextStyle(decoration: TextDecoration.underline),
                  ),
           ),
            ],
          ),
        ),
      ),
    );
  }

  Row BuildTimer() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         const Text("This code will be expired in "),
          TweenAnimationBuilder(tween: Tween(begin: 30.0, end: 0),
           duration: const Duration(seconds: 30),
            builder:  (_, dynamic value, child) => Text(
          "00:${value.toInt()}",
          style: const TextStyle(color: kPrimaryColor),
        ),),
        ],
      );
  }
}
