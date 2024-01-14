

import 'dart:ffi';

class CarouselModel{
  String? name;
  String? subtitle;
  int? price;
  String? image;
  CarouselModel(this.name,this.price,this.subtitle,this.image);
  static List<CarouselModel> generateCarousel(){
    return [
      CarouselModel("Adidas", 7650000, "Latest Adidas wears","assets/images/p1.png"),
      CarouselModel("Nike", 9800000, "Latest Nike wears","assets/images/p2.png"),
      CarouselModel("Timberland", 540000, "Latest Timberland wears","assets/images/p3.png"),
      CarouselModel("Balenciaga", 8500000, "Latest Balenciaga wears","assets/images/p4.png"),

    ];
  }
}