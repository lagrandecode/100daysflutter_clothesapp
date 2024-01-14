import 'package:flutter/material.dart';

import '../models/carousel_model.dart';

class CarouselView extends StatefulWidget {
  @override
  State<CarouselView> createState() => _CarouselViewState();
}

class _CarouselViewState extends State<CarouselView> {
  List<CarouselModel> carouselItems = CarouselModel.generateCarousel();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.separated(
        scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, _)=>ListTile(
            title: Text(carouselItems[_].name?? ""),
            subtitle: Text(carouselItems[_].subtitle?? ""),
          ),
          separatorBuilder: (BuildContext context, _)=>Divider(),
          itemCount: carouselItems.length,),
    );
  }
}
