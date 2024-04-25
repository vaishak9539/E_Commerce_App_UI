// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:e_commerce_app_ui/my_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({super.key});

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text("Order Details"),
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
      body:SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Row(
                children: [
                  Text("Order ID - OD328695156936769100",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey
                  ),
                  ),
                ],
              ),
            ),
             Divider(color: Colors.grey,thickness: 1,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("SYSBELLA FASHION",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                      Text("size : M"),
                      Text("seller : CLIENTEROecom"),
                      Text("₹399",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold
                      ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Column(
                    children: [
                      Container(
                        height: 150,
                        width: 90,
                        child: Image.asset("assets/images/men 8.webp",
                        fit: BoxFit.contain,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Divider(color: Colors.grey,thickness: 1,),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Icon(Icons.check_circle,color: Colors.green[900],),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text("order Confirmed Dec 24, 2023",
                    style: TextStyle(
                      fontSize: 15
                    ),
                    ),
                  ),
                ],
              ),
            ),
             Padding(
               padding: const EdgeInsets.only(top: 40),
               child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Icon(Icons.check_circle,color: Colors.green[900],),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text("Delivered, Dec 26, 2023",
                      style: TextStyle(
                        fontSize: 15
                      ),
                      ),
                    ),
                  ],
                ),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 40,left: 15,bottom: 5),
               child: Row(
                 children: [
                   Text("See All Updates",
                   style: TextStyle(
                    fontSize: 16,
                   
                    color: Colors.deepPurple
                   ),
                   ),
                   Icon(Icons.arrow_forward_ios,
                    color: Colors.deepPurple,
                    size: 20,
                    ),
                 ],
               ),
             ),
              Divider(color: Colors.grey,thickness: 1,),
             Padding(
               padding: const EdgeInsets.only(top: 5,bottom: 5),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Center(
              child: RatingBar.builder(
                    initialRating: 1,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 10.0),
                    itemBuilder: (ctx,_){
              return const Icon(
              Icons.star,
              size: 15,
              color: Colors.green,
                    );
                    },
                    onRatingUpdate: (rating) {
              print(rating);
                    },
                  ),
            ),
                ],
               ),
             ),
              Divider(color: Colors.grey,thickness: 1,),
             Padding(
               padding: const EdgeInsets.only(top: 10),
               child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.select_all,size: 30,
                    color: Colors.blue[900],
                    ),
                  ),
                  Text("Invoice download",style: TextStyle(
                    fontSize: 19
                  ),),
                  Padding(
                    padding: const EdgeInsets.only(left: 160),
                    child: Icon(Icons.arrow_forward_ios,
                    size: 20,
                    ),
                  )
                ],
               ),
             ),
              Divider(color: Colors.grey,thickness: 1,),
             Padding(
               padding: const EdgeInsets.only(top: 15,left: 8),
               child: Row(
                children: [
                  Text("Shipping Details",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey
                  ),
                  ),
                ],
               ),
             ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Vaishak",style: TextStyle(
                        fontSize: 16
                      ),),
                       Text("Payyadimeethal (H)",style: TextStyle(
                        fontSize: 16
                      ),),
                        Text("Kozhikode",style: TextStyle(
                        fontSize: 16
                      ),),
                         Text("Phone number : 1234567897",style: TextStyle(
                        fontSize: 16
                      ),),
                    ],
                  ),
                ),
              ],
            ),
            Divider(color: Colors.grey,thickness: 1,),
             Padding(
               padding: const EdgeInsets.only(top: 15,left: 8),
               child: Row(
                children: [
                  Text("Price Details",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey
                  ),
                  ),
                ],
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                children: [
                  Text("List price",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 290),
                    child: Text("₹799"),
                  )
                ],
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                children: [
                  Text("Selling Price",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 270),
                    child: Text("₹394"),
                  )
                ],
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                children: [
                  Text("Handling Price",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 270),
                    child: Text("₹5"),
                  )
                ],
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                children: [
                  Text("Total Amount",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 260),
                    child: Text("₹399"),
                  )
                ],
               ),
             ),
             SizedBox(
              height: 20,
             )
          ],
        ),
      ) ,
    );
  }
}