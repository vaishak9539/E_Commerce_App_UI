// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit profile"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.search_rounded,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/user 1.jpeg"),
                          radius: 60,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Edit Profile",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: SizedBox(
                    height: 70,
                    width: 350,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "First Name",
                      ),
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: SizedBox(
                    height: 70,
                    width: 350,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Last Name",
                      ),
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: SizedBox(
                    height: 70,
                    width: 350,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Mobile Number",
                      ),
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: SizedBox(
                    height: 70,
                    width: 350,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Email ID",
                      ),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green[900],
                  ),
                  child: Center(
                    child: Text(
                      "Submit",
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
