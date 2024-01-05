import 'package:flutter/material.dart';

class CarouselSlidePage extends StatefulWidget {
  const CarouselSlidePage({Key? key}) : super(key: key);

  @override
  State<CarouselSlidePage> createState() => _CarouselSlidePageState();
}

class _CarouselSlidePageState extends State<CarouselSlidePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("carousel page"),
    );
  }
}
