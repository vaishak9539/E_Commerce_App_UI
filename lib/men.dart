// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:e_commerce_app_ui/prodect%20de.dart';
import 'package:flutter/material.dart';

class Men extends StatefulWidget {
  const Men({super.key});

  @override
  State<Men> createState() => _MenState();
}

class _MenState extends State<Men> {
  var favoriteitems = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: SizedBox(
            height: 44,
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16))),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Icon(
                Icons.mic,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 22),
              child: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (ctx) {
                                return ProdectDe();
                              }));
                            },
                            child: SizedBox(
                              height: 230,
                              width: 190,
                              child: Image.asset(
                                "assets/images/men 1.webp",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text("KAJARU "),
                          ),
                          Text(
                            "₹439",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Stack(children: [
                            Container(
                              height: 230,
                              width: 190,
                              child: Image.asset(
                                "assets/images/men 4.webp",
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 140),
                              child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      favoriteitems = !favoriteitems;
                                    });
                                  },
                                  icon: favoriteitems
                                      ? Icon(
                                          Icons.favorite,
                                        )
                                      : Icon(
                                          Icons.favorite,
                                          color: Colors.red[500],
                                        )),
                            )
                          ]),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text("RODEIZ "),
                          ),
                          Text(
                            "₹499",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 230,
                            width: 190,
                            child: Image.asset(
                              "assets/images/men 7.webp",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text("LAMBOO"),
                          ),
                          Text(
                            "₹390",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 230,
                            width: 190,
                            child: Image.asset(
                              "assets/images/men 8.webp",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text("SYSBELLA FASHION"),
                          ),
                          Text(
                            "₹399",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 230,
                            width: 190,
                            child: Image.asset(
                              "assets/images/men 9.webp",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text("Jai Textiles"),
                          ),
                          Text(
                            "₹439",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 230,
                            width: 190,
                            child: Image.asset(
                              "assets/images/men 10.webp",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text("SYSBELLA FASHION "),
                          ),
                          Text(
                            "₹449",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 230,
                            width: 190,
                            child: Image.asset(
                              "assets/images/men 2.webp",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text("Veirdo"),
                          ),
                          Text(
                            "₹381",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 230,
                            width: 190,
                            child: Image.asset(
                              "assets/images/men 5.webp",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text("Roadster"),
                          ),
                          Text(
                            "₹400",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 230,
                            width: 190,
                            child: Image.asset(
                              "assets/images/men 3.webp",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text("AUSK"),
                          ),
                          Text(
                            "₹249",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 230,
                            width: 190,
                            child: Image.asset(
                              "assets/images/men 6.webp",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text("Dennis Lingo "),
                          ),
                          Text(
                            "₹459",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
