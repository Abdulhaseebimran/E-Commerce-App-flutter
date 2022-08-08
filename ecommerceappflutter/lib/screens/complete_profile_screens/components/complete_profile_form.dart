import 'package:ecommerceappflutter/components/coustom_suffix_icon.dart';
import 'package:ecommerceappflutter/constants/constants.dart';
import 'package:ecommerceappflutter/constants/size_configs.dart';
import 'package:ecommerceappflutter/screens/OTP/otp_screens.dart';
import 'package:ecommerceappflutter/screens/sign_in/components/form_error.dart';
import 'package:flutter/material.dart';

import '../../../components/default_button.dart';


class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({Key? key}) : super(key: key);

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
   final _formKey = GlobalKey<FormState>();
  final List<String?> errors = [];
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? address;

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
      key: _formKey,
      child: Column(
      children: [
      BuildFirstNameFormField(), 
      SizedBox(height: getProportionateScreenHeight(30),),
      BuildLastNameFormField(),
      SizedBox(height: getProportionateScreenHeight(30),),
      BuildPhoneNumberFormField(), 
      SizedBox(height: getProportionateScreenHeight(30),), 
      BuildPhoneAddressFormField(),
      FormError(errors: errors),
       SizedBox(height: getProportionateScreenHeight(40),),
      DefaultButton(text: "Continue", 
      press: (){
         if (_formKey.currentState!.validate()) {
                Navigator.of(context).push(
                MaterialPageRoute(
                builder: (context) => const OtpScreens()));
      }
      })
      ],
    ),);
  }

  TextFormField BuildPhoneAddressFormField() {
    return TextFormField(
    onSaved: (newValue) => address = newValue,
    onChanged: (value) {
      if (value.isNotEmpty) {
        removeError(error: kAddressNullError);
      }
      return null;
    },
    validator: (value) {
      if (value!.isEmpty) {
        addError(error: kAddressNullError);
        return "";
      }
      return null;
    },
    decoration: const InputDecoration(
      labelText: "Address",
      hintText: "Enter your phone address",
      // If  you are using latest version of flutter then lable text and hint text shown like this
      // if you r using flutter less then 1.20.* then maybe this is not working properly
      floatingLabelBehavior: FloatingLabelBehavior.always,
      suffixIcon: CoustomSuffix(svgIcon: "assets/icons/Location point.svg"),
    ),
  );
  }

  TextFormField BuildPhoneNumberFormField() {
    return TextFormField(
    keyboardType: TextInputType.phone,
    onSaved: (newValue) => phoneNumber = newValue,
    onChanged: (value) {
      if (value.isNotEmpty) {
        removeError(error: kPhoneNumberNullError);
      }
      return null;
    },
    validator: (value) {
      if (value!.isEmpty) {
        addError(error: kPhoneNumberNullError);
        return "";
      }
      return null;
    },
    decoration: const InputDecoration(
      labelText: "Phone Number",
      hintText: "Enter your phone number",
      // If  you are using latest version of flutter then lable text and hint text shown like this
      // if you r using flutter less then 1.20.* then maybe this is not working properly
      floatingLabelBehavior: FloatingLabelBehavior.always,
      suffixIcon: CoustomSuffix(svgIcon: "assets/icons/Phone.svg"),
    ),
  );
  }

  TextFormField BuildLastNameFormField() {
    return TextFormField(
    onSaved: (newValue) => lastName = newValue,
    decoration: const InputDecoration(
      labelText: "Last Name",
      hintText: "Enter your last name",
      // If  you are using latest version of flutter then lable text and hint text shown like this
      // if you r using flutter less then 1.20.* then maybe this is not working properly
      floatingLabelBehavior: FloatingLabelBehavior.always,
      suffixIcon: CoustomSuffix(svgIcon: "assets/icons/User.svg"),
    ),
  );
  }

  TextFormField BuildFirstNameFormField() {
    return TextFormField(
    onSaved: (newValue) => firstName = newValue,
    onChanged: (value) {
      if (value.isNotEmpty) {
        removeError(error: kNamelNullError);
      }
      return null;
    },
    validator: (value) {
      if (value!.isEmpty) {
        addError(error: kNamelNullError);
        return "";
      }
      return null;
    },
    decoration:const InputDecoration(
      labelText: "First Name",
      hintText: "Enter your first name",
      // If  you are using latest version of flutter then lable text and hint text shown like this
      // if you r using flutter less then 1.20.* then maybe this is not working properly
      floatingLabelBehavior: FloatingLabelBehavior.always,
      suffixIcon: CoustomSuffix(svgIcon: "assets/icons/User.svg"),
    ),
  );
  }
}