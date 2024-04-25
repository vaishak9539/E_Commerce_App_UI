// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace, sort_child_properties_last

import 'package:e_commerce_app_ui/my_cart.dart';
import 'package:flutter/material.dart';

class ProdectDe extends StatefulWidget {
  const ProdectDe({super.key});

  @override
  State<ProdectDe> createState() => _ProdectDeState();
}

class _ProdectDeState extends State<ProdectDe> {
  var sizeS = false;
  var sizeM = false;
  var sizeL = false;
  var sizeXL = false;
  var sizeXXL = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 500,
                width: double.infinity,
                child: Image.asset(
                  "assets/images/men 1.webp",
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    child: Text(
                      "KAJARU",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 5),
                    child: Text(
                      "Men Printed Round Neck Poly Cotton Green T-Shirt",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 5),
                      child: Text(
                        "4.2",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 3, top: 3),
                      child: Icon(
                        Icons.star,
                        color: Colors.green,
                        size: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16, top: 4),
                      child: Text(
                        "2K Ratings",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    child: Text(
                      "₹439",
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "₹1,399",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.lineThrough,
                          color: Colors.grey),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "82% off",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  )
                ],
              ),
              Divider(
                thickness: 1,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 8, left: 20),
                    child: Text(
                      "Size",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        sizeS = !sizeS;
                        sizeM = false;
                        sizeL = false;
                        sizeXL = false;
                        sizeXXL = false;
                      });
                    },
                    child: CircleAvatar(
                      radius: 29,
                      child: Text("S"),
                      backgroundColor:
                          sizeS ? Colors.deepPurple[80] : Colors.blue[100],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        sizeM = !sizeM;
                        sizeS = false;
                        sizeL = false;
                        sizeXL = false;
                        sizeXXL = false;
                      });
                    },
                    child: CircleAvatar(
                      radius: 29,
                      child: Text("M"),
                      backgroundColor:
                          sizeM ? Colors.deepPurple[80] : Colors.blue[100],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        sizeL = !sizeL;
                        sizeS = false;
                        sizeM = false;
                        sizeXL = false;
                        sizeXXL = false;
                      });
                    },
                    child: CircleAvatar(
                      radius: 29,
                      child: Text("L"),
                      backgroundColor:
                          sizeL ? Colors.deepPurple[80] : Colors.blue[100],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        sizeXL = !sizeXL;
                        sizeM = false;
                        sizeL = false;
                        sizeXXL = false;
                        sizeS = false;
                      });
                    },
                    child: CircleAvatar(
                      radius: 29,
                      child: Text("XL"),
                      backgroundColor:
                          sizeXL ? Colors.deepPurple[80] : Colors.blue[100],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        sizeXXL = !sizeXXL;
                      });
                    },
                    child: CircleAvatar(
                      radius: 29,
                      child: Text("XXL"),
                      backgroundColor:
                          sizeXXL ? Colors.deepPurple[80] : Colors.blue[100],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (ctx) => Mycart()));
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
                          "Add to cart",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
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
                        "Buy now",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              )
            ],
          ),
        ),
      ),
    );
  }
}
