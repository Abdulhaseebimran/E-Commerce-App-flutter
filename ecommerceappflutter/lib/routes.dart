import 'package:ecommerceappflutter/screens/OTP/otp_screens.dart';
import 'package:ecommerceappflutter/screens/cart/cart_screens.dart';
import 'package:ecommerceappflutter/screens/complete_profile_screens/complete_profile_screens.dart';
import 'package:ecommerceappflutter/screens/details/details_Screens.dart';
import 'package:ecommerceappflutter/screens/forgot_password/forgot_password.dart';
import 'package:ecommerceappflutter/screens/home/home_screens.dart';
import 'package:ecommerceappflutter/screens/login_success/login_success.dart';
import 'package:ecommerceappflutter/screens/profile/profile_screens.dart';
import 'package:ecommerceappflutter/screens/sign_in/sign_in_screens.dart';
import 'package:ecommerceappflutter/screens/sign_up/sign_up_screens.dart';
import 'package:ecommerceappflutter/screens/splash/splash_screens.dart';
import 'package:flutter/material.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
    Splash.routeName: (context) =>  const Splash(),
    SignInScreen.routeName:(context) => const SignInScreen(),
    ForgotPassword.routeName:(context) => const  ForgotPassword(),
    LoginSuccess.routeName: (context) => const LoginSuccess(),
    SignUp.routeName:(context) => const SignUp(),
    CompleteProfile.routeName: (context) => const CompleteProfile(),
    OtpScreens.routeName:(context) => const OtpScreens(),
    HomeScreens.routesName:(context) => const HomeScreens(),
    DetailsScreen.routeName:(context) => const DetailsScreen(),
    CartScreens.routeName:(context) => const CartScreens(),
    ProfileScreens.routeName:(context) => const ProfileScreens(),
};