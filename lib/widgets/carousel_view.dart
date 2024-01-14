import 'package:clothesapp/widgets/clothes_iitems.dart';
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
      height: 245,
      child: ListView.separated(
          itemBuilder: (BuildContext context, _) =>
              ClothesItems(carouselItems[_]),
          separatorBuilder: (BuildContext context, _) => SizedBox(
                width: 10.0,
              ),
          scrollDirection: Axis.horizontal,
          itemCount: carouselItems.length),
    );
  }
}
