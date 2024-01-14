import 'package:flutter/material.dart';


class CarouselSlidePage extends StatefulWidget {
  const CarouselSlidePage({Key? key}) : super(key: key);

  @override
  State<CarouselSlidePage> createState() => _CarouselSlidePageState();
}

class _CarouselSlidePageState extends State<CarouselSlidePage> {
  final taskList = ["T-shirt", "Shoes", "Sneakers"];


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
            children: taskList
                .map((e) => Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFff5C15C),
                      ),
                      child: Text(
                        e,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ))
                .toList()),

      ],
    );
  }
}
