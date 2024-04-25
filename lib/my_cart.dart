// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:e_commerce_app_ui/home.dart';
import 'package:flutter/material.dart';

class Mycart extends StatefulWidget {
  const Mycart({super.key});

  @override
  State<Mycart> createState() => _MycartState();
}

class _MycartState extends State<Mycart> {
  var itemQty = 1;
  var va = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My cart"),
      ),
      body: Column(
        children: [
          Container(
            height: 150,
            width: double.infinity,
            child: Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 120,
                        width: 100,
                        child: Image.asset(
                          "assets/images/kids 8.webp",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 25, left: 15),
                          child: Text(
                            "Hellcat,kids shirt",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            "₹299",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text("Size : M"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            "FREE delivery",
                            style: TextStyle(color: Colors.green),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 7, top: 40),
                          child: Text(
                            "Qty",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            height: 40,
                            width: 120,
                            decoration: BoxDecoration(border: Border.all()),
                            child: Center(
                              child: Row(
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        setState(() {
                                          if (itemQty == 1) {
                                            va = true;
                                          } else {
                                            itemQty = itemQty - 1;
                                          }
                                        });
                                      },
                                      icon: Icon(Icons.remove)),
                                  Text(
                                    itemQty.toString(),
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        setState(() {
                                          itemQty = itemQty + 1;
                                        });
                                      },
                                      icon: Icon(Icons.add))
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 530,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                    return Home();
                  }));
                },
                child: Container(
                  height: 60,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey,
                  ),
                  child: Center(
                      child: Text(
                    "Go to Home",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              Container(
                height: 60,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.amber,
                ),
                child: Center(
                    child: Text(
                  "Place Order",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                )),
              ),
            ],
          )
        ],
      ),
    );
  }
}
