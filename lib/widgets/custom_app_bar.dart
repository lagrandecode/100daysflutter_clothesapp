import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              RichText(text: const TextSpan(
                  children: [
                    TextSpan(
                        text: "Oluwaseun, What Are You \nLooking For?",style: TextStyle(
                      fontSize: 16,fontWeight: FontWeight.bold,
                      color: Colors.black,
                    )
                    ),
                    TextSpan(
                        text: " 👀"
                    ),
                  ]
              ))
            ],

          ),
          Stack(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(color: Colors.grey.withOpacity(0.3))
                  ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0)
                ),
                child: Icon(Icons.shopping_cart_checkout_outlined),
              ),
              Positioned(
                top: 10,
                  right: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10)
                    ),
                height: 10,
                width: 10,
              ))
            ],
          )
        ],
      ),
    );
  }
}
