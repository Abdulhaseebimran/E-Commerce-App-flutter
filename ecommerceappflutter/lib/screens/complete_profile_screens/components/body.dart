import 'package:ecommerceappflutter/components/coustom_suffix_icon.dart';
import 'package:ecommerceappflutter/constants/constants.dart';
import 'package:ecommerceappflutter/constants/size_configs.dart';
import 'package:ecommerceappflutter/screens/complete_profile_screens/components/complete_profile_form.dart';
import 'package:ecommerceappflutter/screens/sign_in/components/form_error.dart';
import 'package:ecommerceappflutter/screens/splash/components/body.dart';
import 'package:ecommerceappflutter/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenHeight(20)),
          child: Column(
          children: [
             SizedBox(height: SizeConfig.screenHeight * 0.02),
            Text("Complete Profile", style: headlineStyle),
            const Text("Complete your details or continue  \nwith social media",
              textAlign: TextAlign.center,
           ),
             SizedBox(height: SizeConfig.screenHeight * 0.05),
               const CompleteProfileForm(),
                SizedBox(height: getProportionateScreenHeight(30)),
                Text(
                  "By continuing your confirm that you agree \nwith our Term and Condition",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption,
                ),
          ],
          ),
        ),
      ),
    );
  }
}
