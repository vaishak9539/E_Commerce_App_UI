// ignore_for_file: prefer_const_constructors, sort_child_properties_last, avoid_print

import 'package:e_commerce_app_ui/forgot.dart';
import 'package:e_commerce_app_ui/home.dart';
import 'package:e_commerce_app_ui/new_account.dart';
import 'package:flutter/material.dart';

class SiginIn extends StatefulWidget {
  const SiginIn({super.key});

  @override
  State<SiginIn> createState() => _SiginInState();
}

class _SiginInState extends State<SiginIn> {
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  void checking1() {
    final email = emailcontroller.text;
    final password = passwordcontroller.text;
    if (email == password) {
      print("Right");
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (ctx) => Home()));
    } else {
      print("Wrong");
    }
  }

  final formkey = GlobalKey<FormState>();
  var secureText = true;
  bool? check = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              //*Image
              SizedBox(
                height: 420,
                width: double.infinity,
                child: Image.asset(
                  "assets/images/sign-in.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                "Login to your account",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),

              //*Textformfield
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: SizedBox(
                  // height: 50,
                  width: 340,
                  child: TextFormField(
                    controller: emailcontroller,
                    decoration: InputDecoration(
                        hintText: "Your Email",
                        prefixIcon: const Icon(Icons.email),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                                BorderSide(color: Colors.blue, width: 2))),
                    validator: (value1) {
                      if (value1 == null || value1.isEmpty) {
                        return "Please enter your email";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: SizedBox(
                  // height: 50,
                  width: 340,
                  child: TextFormField(
                    controller: passwordcontroller,
                    decoration: InputDecoration(
                        hintText: "Your password",
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                secureText = !secureText;
                              });
                            },
                            icon: Icon(secureText
                                ? Icons.visibility_off
                                : Icons.visibility)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                                BorderSide(color: Colors.blue, width: 2))),
                    validator: (value1) {
                      if (value1 == null || value1.isEmpty) {
                        return "please enter your password";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.number,
                    obscureText: secureText,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Row(
                  children: [
                    Checkbox(
                        value: check,
                        onChanged: (val) {
                          setState(() {
                            check = val;
                          });
                        }),
                    Text(
                      "Remember me",
                      style: TextStyle(fontSize: 13),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 90),
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (ctx) {
                                return Forgotpass();
                              }));
                            },
                            child: Text("Forgot Password?")))
                  ],
                ),
              ),

              //* Button
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        if (formkey.currentState!.validate()) {
                          checking1();
                        }
                      },
                      child: Container(
                        height: 60,
                        width: 250,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("New here?"),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (ctx) {
                          return NewAccount();
                        }));
                      },
                      child: Text("Sign up"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
