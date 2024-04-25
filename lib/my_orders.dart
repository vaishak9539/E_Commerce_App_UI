// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:e_commerce_app_ui/my_cart.dart';
import 'package:e_commerce_app_ui/orderdetails.dart';
import 'package:flutter/material.dart';

class MyOrders extends StatefulWidget {
  const MyOrders({super.key});

  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  List ordertraking = [OrderDetails()];
  List itemDetails = ["Delivered on Dec 26, 2023", "Delivered on Nov 14, 2023"];
  List itemName = ["SYSBELLA FASHION", "Fashion2wear"];
  List image1 = ["assets/images/men 8.webp", "assets/images/women 1.webp"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        title: Text("My orders"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Icon(
              Icons.search_rounded,
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
      body: ListView.separated(
          itemBuilder: (ctx, index) {
            return ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                  return ordertraking[index];
                }));
              },
              leading: Container(
                height: 90,
                width: 90,
                child: Image.asset(image1[index]),
              ),
              title: Text(itemDetails[index]),
              subtitle: Text(itemName[index]),
            );
          },
          separatorBuilder: (ctx, index) => Divider(),
          itemCount: itemName.length),
    );
  }
}
