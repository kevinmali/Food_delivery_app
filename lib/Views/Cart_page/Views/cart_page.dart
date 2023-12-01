import 'package:flutter/material.dart';
import 'package:food_delivery_app/Views/Utils/Global/varibals.dart';

class Cart_page extends StatefulWidget {
  const Cart_page({super.key});

  @override
  State<Cart_page> createState() => _Cart_pageState();
}

class _Cart_pageState extends State<Cart_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (ctx, i) {
          return Card(
            child: ListTile(
              title: Text("${addedProducts[i].foodItems[i]}"),
            ),
          );
        },
        itemCount: addedProducts.length,
      ),
    );
  }
}
