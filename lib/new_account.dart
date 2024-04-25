// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class NewAccount extends StatefulWidget {
  const NewAccount({super.key});

  @override
  State<NewAccount> createState() => _NewAccountState();
}

class _NewAccountState extends State<NewAccount> {
  bool checking = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //*Image
            SizedBox(
              height: 350,
              width: double.infinity,
              child: Image.asset(
                "assets/images/signup.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Text(
              "Create your account",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                height: 50,
                width: 340,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Your name",
                      prefixIcon: const Icon(Icons.account_circle),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              BorderSide(color: Colors.blue, width: 2))),
                  keyboardType: TextInputType.name,
                ),
              ),
            ),

            //*Textformfield
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                height: 50,
                width: 340,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Your Email",
                      prefixIcon: const Icon(Icons.email),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              BorderSide(color: Colors.blue, width: 2))),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                height: 50,
                width: 340,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Password",
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              checking = !checking;
                            });
                          },
                          icon: Icon(checking
                              ? Icons.visibility_off
                              : Icons.visibility)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                  obscureText: checking,
                  obscuringCharacter: "*",
                ),
              ),
            ),
            //*Button
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 60,
                    width: 250,
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
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Or continue with",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      height: 60,
                      width: 60,
                      child: Image.asset("assets/images/FACEBOOK.png"),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    child: Image.asset(
                        "assets/images/Google-logo-2015-G-icon.png"),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      height: 45,
                      width: 45,
                      child: Image.asset("assets/images/R.png"),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
