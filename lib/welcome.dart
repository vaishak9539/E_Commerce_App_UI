// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:e_commerce_app_ui/new_account.dart';
import 'package:e_commerce_app_ui/sigin_in.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //*Image
            Container(
              height: 390,
              width: double.infinity,
              child: Image.asset(
                "assets/images/welcome.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 150, top: 30),
              child: Container(
                width: 300,
                height: 100,
                // color: Colors.amber,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 100),
                      child: Text(
                        "Hello !",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                        ),
                      ),
                    ),
                    Text(
                      "Let's get started",
                      style: TextStyle(fontSize: 25),
                    ),
                  ],
                ),
              ),
            ),

            //*Button
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (ctx) {
                        return SiginIn();
                      }));
                    },
                    child: Container(
                      height: 60,
                      width: 300,
                      child: Center(
                          child: Text(
                        "Sigin in",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green[900],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (ctx) => NewAccount()));
                    },
                    child: Container(
                      height: 60,
                      width: 300,
                      child: Center(
                          child: Text(
                        "Sigin up",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green[900],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 200,
                    // color: Colors.yellow,
                    child: Center(
                        child: Text(
                      "Terms & Conditions",
                    )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
