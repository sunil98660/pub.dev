
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:pin_code_fields/pin_code_fields.dart';




class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.blueAccent,
        actions: [
          Center(
              child: badges.Badge(
                badgeContent: Text('2'),
                badgeAnimation: badges.BadgeAnimation.slide(
                  animationDuration: Duration(milliseconds: 800),
                ),
                badgeStyle: badges.BadgeStyle(
                  badgeColor: Colors.teal,
                    borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(Icons.shopping_bag_outlined),
              )
          ),
          SizedBox(width: 20,)
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              PinCodeTextField(
                  appContext: context,
                  length: 6,
                keyboardType: TextInputType.number,
                cursorColor: Colors.teal5,
                obscureText: true,
                enabled: true,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(10),
                  fieldHeight: 50,
                  fieldWidth: 40,


                  activeColor: Colors.orange,
                  inactiveColor: Colors.grey,

                  selectedFillColor: Colors.red,
                  inactiveFillColor: Colors.grey,

                  selectedColor: Colors.pink,
                  activeFillColor: Colors.red,


                ),
                onChanged: (value){

                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}




