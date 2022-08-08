import 'package:ecommerceappflutter/components/coustom_suffix_icon.dart';
import 'package:ecommerceappflutter/components/no_account_text.dart';
import 'package:ecommerceappflutter/constants/constants.dart';
import 'package:ecommerceappflutter/constants/size_configs.dart';
import 'package:ecommerceappflutter/screens/sign_in/components/form_error.dart';
import 'package:ecommerceappflutter/screens/splash/components/body.dart';
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
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
               SizedBox(height: SizeConfig.screenHeight * 0.04,),
              Text("Forgot Password", style: TextStyle(
              fontSize: getProportionateScreenHeight(28),
              color: Colors.black,
              fontWeight: FontWeight.bold
              ),),
              const Text("Please enter your email and we will send \nyou a link to return to your account",
                      textAlign: TextAlign.center,
              ), SizedBox(height: SizeConfig.screenHeight * 0.1,),
            const ForgotPasswordForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPasswordForm extends StatefulWidget {
   const ForgotPasswordForm({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordForm> createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
   final _formKey = GlobalKey<FormState>();

  List<String> errors = [];

  String? email;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
           TextFormField(
            keyboardType: TextInputType.emailAddress,
            onSaved: (newValue) => email = newValue,
            onChanged: (value) {
              if (value.isNotEmpty && errors.contains(kEmailNullError)) {
                setState(() {
                  errors.remove(kEmailNullError);
                });
              } else if (emailValidatorRegExp.hasMatch(value) &&
                  errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.remove(kInvalidEmailError);
                });
              }
              return null;
            },
            validator: (value) {
              if (value!.isEmpty && !errors.contains(kEmailNullError)) {
                setState(() {
                  errors.add(kEmailNullError);
                });
              } else if (!emailValidatorRegExp.hasMatch(value) &&
                  !errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.add(kInvalidEmailError);
                });
              }
              return null;
            },
            decoration:const InputDecoration(
              labelText: "Email",
              hintText: "Enter your email",
              // If  you are using latest version of flutter then lable text and hint text shown like this
              // if you r using flutter less then 1.20.* then maybe this is not working properly
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CoustomSuffix(svgIcon: "assets/icons/Mail.svg"),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(30),),
          FormError(errors: errors),
          SizedBox(height: SizeConfig.screenHeight * 0.1,),
          DefaultButton(text: "Continue", press: (){}),
          SizedBox(height: SizeConfig.screenHeight * 0.1,),
          const NoAccountText(),
        ],
      ));
  }
}