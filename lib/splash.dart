// ignore_for_file: prefer_const_constructors, use_build_context_synchronously

import 'package:e_commerce_app_ui/welcome.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Splash1 extends StatefulWidget {
  const Splash1({super.key});

  @override
  State<Splash1> createState() => _Splash1State();
}

class _Splash1State extends State<Splash1> {
  @override
  void initState() {
    goToWelcome();
    super.initState();
  }

  void goToWelcome() async {
    await Future.delayed(Duration(seconds: 4));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx) {
      return Welcome();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Lottie.asset('assets/json/Animation.json')),
    );
  }
}
