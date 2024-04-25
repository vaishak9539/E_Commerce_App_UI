// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_commerce_app_ui/accessories.dart';
import 'package:e_commerce_app_ui/footwear.dart';
import 'package:e_commerce_app_ui/kids.dart';
import 'package:e_commerce_app_ui/men.dart';
import 'package:e_commerce_app_ui/my_account.dart';
import 'package:e_commerce_app_ui/my_cart.dart';
import 'package:e_commerce_app_ui/settings.dart';
import 'package:e_commerce_app_ui/sigin_in.dart';
import 'package:e_commerce_app_ui/wishlist.dart';
import 'package:e_commerce_app_ui/women.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void logout() {
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (ctx) => SiginIn()), (route) => false);
  }

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
              child: IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                      return Mycart();
                    }));
                  },
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.black,
                  ))),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 6),
                  child: Text(
                    "Find your clothes",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                  ),
                )
              ],
            ),

            //*Highlights
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, top: 10, right: 10),
                    child: Stack(children: [
                      SizedBox(
                        height: 210,
                        width: 390,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(17),
                            child: Image.asset(
                              "assets/images/baner 1.jpg",
                              fit: BoxFit.cover,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, top: 50),
                        child: Column(
                          children: [
                            Text(
                              "BRIDEL",
                              style: TextStyle(
                                  fontSize: 25,
                                  // fontWeight: FontWeight.bold,
                                  color: Colors.grey[800]),
                            ),
                            Text(
                              "COLLECTIVE",
                              style: TextStyle(
                                  fontSize: 25,
                                  // fontWeight: FontWeight.bold,
                                  color: Colors.grey[800]),
                            )
                          ],
                        ),
                      ),
                    ]),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, top: 10, right: 10),
                    child: SizedBox(
                      height: 210,
                      width: 390,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(17),
                          child: Image.asset("assets/images/R.jpeg")),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, top: 10, right: 10),
                    child: SizedBox(
                      height: 210,
                      width: 390,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(17),
                          child: Image.asset("assets/images/dress 2.jpg")),
                    ),
                  ),
                ],
              ),
            ),

            //*Category
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (ctx) => Men()));
                    },
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/option 1.jpg"),
                          radius: 30,
                        ),
                        Text("Men")
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (ctx) => Women()));
                    },
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/option 2.jpg"),
                          radius: 30,
                        ),
                        Text("Women")
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                        return Kids();
                      }));
                    },
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/option 3.webp"),
                          radius: 30,
                        ),
                        Text("Kids")
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (ctx) => Footwear()));
                    },
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/option 4.webp"),
                          radius: 30,
                        ),
                        Text("Footwear")
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (ctx) => Accessories()));
                    },
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/option 5.jpg"),
                          radius: 30,
                        ),
                        Text("Accessories")
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 17, bottom: 5),
                  child: Text("Most popular",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 23)),
                )
              ],
            ),

            //*Most Popular
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 200,
                          width: 150,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(17),
                              child: Image.asset(
                                "assets/images/flip 1.webp",
                              )),
                        ),
                        Text("KOTTY"),
                        Text(
                          "₹474",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 200,
                          width: 150,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(17),
                              child: Image.asset(
                                "assets/images/flip 4.webp",
                                fit: BoxFit.cover,
                              )),
                        ),
                        Text("MILDIN"),
                        Text(
                          "₹369",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 200,
                          width: 150,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(17),
                              child: Image.asset("assets/images/flip 2.webp")),
                        ),
                        Text("KOTTY"),
                        Text(
                          "₹474",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 200,
                          width: 150,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(17),
                              child: Image.asset(
                                "assets/images/flip 5.webp",
                                fit: BoxFit.cover,
                              )),
                        ),
                        Text("Raymond Suit"),
                        Text(
                          "599",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 200,
                          width: 150,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(17),
                              child: Image.asset("assets/images/flip 3.webp")),
                        ),
                        Text("Demirner"),
                        Text(
                          "₹466",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 200,
                          width: 150,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(17),
                              child: Image.asset("assets/images/flip 6.webp")),
                        ),
                        Text("U TURN"),
                        Text(
                          "₹349",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 17, bottom: 17),
                  child: Text("Suggested for you",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 23)),
                )
              ],
            ),

            //*Suggestion
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 200,
                          width: 150,
                          child: Image.asset("assets/images/flip 7.webp"),
                        ),
                        Text("INDICLUB"),
                        Text(
                          "₹331",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 200,
                          width: 150,
                          child: Image.asset("assets/images/flip 8.webp"),
                        ),
                        Text("GLITO "),
                        Text(
                          "₹294",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 200,
                            width: 150,
                            child: Image.asset("assets/images/flip 9.webp"),
                          ),
                          Text("Lizzy"),
                          Text(
                            "₹427  67% off",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 200,
                            width: 150,
                            child: Image.asset("assets/images/flip 10.webp"),
                          ),
                          Text("GOLORY"),
                          Text(
                            "₹419",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      drawer: Drawer(
          child: ListView(
        children: [
          UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.grey.shade600),
              accountName: Text("Vaishak"),
              accountEmail: Text("Vaishakp17@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/user 1.jpeg"),
              )),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text(
              'My Account',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                return MyAccount();
              }));
            },
          ),

          ListTile(
            leading: const Icon(Icons.shopping_cart),
            title: const Text(
              'My cart',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                return Mycart();
              }));
            },
          ),

          ListTile(
            leading: const Icon(Icons.favorite),
            title: const Text(
              'Wishlist',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (ctx) => Wishlist()));
            },
          ),

          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text(
              'Settings',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                return Settings();
              }));
            },
          ),

          // *Divider
          Divider(color: Colors.black26),

          ListTile(
            leading: const Icon(Icons.help_center),
            title: const Text(
              'Help center',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            onTap: () {
              launchUrl(Uri.parse("tel:+919539635918"));
            },
          ),

          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text(
              'Logout',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            onTap: () {
              logout();
            },
          ),
        ],
      )),
    );
  }
}
