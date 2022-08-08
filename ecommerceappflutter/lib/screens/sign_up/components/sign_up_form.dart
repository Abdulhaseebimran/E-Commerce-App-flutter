import 'package:ecommerceappflutter/components/coustom_suffix_icon.dart';
import 'package:ecommerceappflutter/components/default_button.dart';
import 'package:ecommerceappflutter/constants/constants.dart';
import 'package:ecommerceappflutter/constants/size_configs.dart';
import 'package:ecommerceappflutter/screens/complete_profile_screens/complete_profile_screens.dart';
import 'package:ecommerceappflutter/screens/sign_in/components/form_error.dart';
import 'package:flutter/material.dart';


class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
   final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  String? conform_password;
  bool remember = false;
  final List<String?> errors = [];

    void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
      BuildEmailFormField(),
      SizedBox(height: getProportionateScreenHeight(30),),
      BuildPasswordFormField(),
       SizedBox(height: getProportionateScreenHeight(30),),
      BuildConfPasswordformField(),
      FormError(errors: errors),
       SizedBox(height: getProportionateScreenHeight(40),),
       DefaultButton(text: "Continue", press: (){
         Navigator.of(context).push(
         MaterialPageRoute(
        builder: (context) => const CompleteProfile()));
       })

        ],
      ));
  }

  TextFormField BuildConfPasswordformField() {
    return TextFormField(
    obscureText: true,
    onSaved: (newValue) => conform_password = newValue,
    onChanged: (value) {
      if (value.isNotEmpty) {
        removeError(error: kPassNullError);
      } else if (value.isNotEmpty && password == conform_password) {
        removeError(error: kMatchPassError);
      }
      conform_password = value;
    },
    validator: (value) {
      if (value!.isEmpty) {
        addError(error: kPassNullError);
        return "";
      } else if ((password != value)) {
        addError(error: kMatchPassError);
        return "";
      }
      return null;
    },
    decoration: const InputDecoration(
      labelText: "Confirm Password",
      hintText: "Re-enter your password",
      // If  you are using latest version of flutter then lable text and hint text shown like this
      // if you r using flutter less then 1.20.* then maybe this is not working properly
      floatingLabelBehavior: FloatingLabelBehavior.always,
      suffixIcon: CoustomSuffix(svgIcon: "assets/icons/Lock.svg"),
    ),
  );
  }

  TextFormField BuildPasswordFormField() {
    return TextFormField(
    obscureText: true,
    onSaved: (newValue) => password = newValue,
    onChanged: (value) {
      if (value.isNotEmpty) {
        removeError(error: kPassNullError);
      } else if (value.length >= 8) {
        removeError(error: kShortPassError);
      }
      password = value;
      return null;
    },
    validator: (value) {
      if (value!.isEmpty) {
        addError(error: kPassNullError);
        return "";
      } else if (value.length < 8) {
        addError(error: kShortPassError);
        return "";
      }
      return null;
    },
    decoration: const InputDecoration(
      labelText: "Password",
      hintText: "Enter your password",
      // If  you are using latest version of flutter then lable text and hint text shown like this
      // if you r using flutter less then 1.20.* then maybe this is not working properly
      floatingLabelBehavior: FloatingLabelBehavior.always,
      suffixIcon: CoustomSuffix(svgIcon: "assets/icons/Lock.svg"),
    ),
  );
  }

  TextFormField BuildEmailFormField() {
    return TextFormField(
    keyboardType: TextInputType.emailAddress,
    onSaved: (newValue) => email = newValue,
    onChanged: (value) {
      if (value.isNotEmpty) {
        removeError(error: kEmailNullError);
      } else if (emailValidatorRegExp.hasMatch(value)) {
        removeError(error: kInvalidEmailError);
      }
      return null;
    },
    validator: (value) {
      if (value!.isEmpty) {
        addError(error: kEmailNullError);
        return "";
      } else if (!emailValidatorRegExp.hasMatch(value)) {
        addError(error: kInvalidEmailError);
        return "";
      }
      return null;
    },
    decoration: const InputDecoration(
      labelText: "Email",
      hintText: "Enter your email",
      // If  you are using latest version of flutter then lable text and hint text shown like this
      // if you r using flutter less then 1.20.* then maybe this is not working properly
      floatingLabelBehavior: FloatingLabelBehavior.always,
      suffixIcon: CoustomSuffix(svgIcon: "assets/icons/Mail.svg"),
    ),
  );
  }
}