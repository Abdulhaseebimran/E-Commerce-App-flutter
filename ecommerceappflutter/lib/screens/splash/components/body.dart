import 'package:ecommerceappflutter/constants/constants.dart';
import 'package:ecommerceappflutter/constants/size_configs.dart';
import 'package:ecommerceappflutter/screens/sign_in/sign_in_screens.dart';
import 'package:ecommerceappflutter/screens/splash/components/Splash_content.dart';
import 'package:ecommerceappflutter/screens/splash/splash_screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';


class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
 
 int currentPage = 0;
  List<Map<String, String>> SplashData = [
    {
      "text": "Welcome to Tokoto, Let’s shop!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text":
          "We help people conect with store \naround United State of America",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/images/splash_3.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
         children: [
          Expanded(
            flex: 3,
            child: PageView.builder(
               onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
              itemCount: SplashData.length,
              itemBuilder: ((context, index) => SplashContent(
             text: SplashData[index]["text"].toString(),
             image: SplashData[index]["image"].toString(),
          )
          )) 
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
              child: Column(
                children: [
                  const Spacer(flex: 2,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(SplashData.length, (index) => buildDot(index))
                  ),const Spacer(flex: 3,),
                  DefaultButton(
                    text: "Continue",
                      press:(){
                          Navigator.of(context).push(
                          MaterialPageRoute(
                          builder: (context) => const SignInScreen()));
                        }
                  ),
                  const Spacer(),
                ],
              ),
            ))
         ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot(int index) {
    return AnimatedContainer(
      duration: kAnimationDuration,
                margin: const EdgeInsets.only(left: 5),
                height: 6,
                width:currentPage == index ? 20 : 6,
                decoration: BoxDecoration(
                  color:currentPage == index ? kPrimaryColor : const Color(0xFFD8D8D8),
                  borderRadius: BorderRadius.circular(3)
                ),
              );
  }
}

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key, required this.text, required this.press,
  }) : super(key: key);

  final String text;
  final  press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(56),
      width: double.infinity,
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: kPrimaryColor,
        onPressed: press,
         child: Text(text,
        style: TextStyle(fontSize: getProportionateScreenWidth(18),
        color: Colors.white),)),
    );
  }
}

