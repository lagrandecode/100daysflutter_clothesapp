

import 'dart:ffi';

class CarouselModel{
  String name;
  String subtitle;
  int price;
  String image;
  CarouselModel(this.name,this.price,this.subtitle,this.image);
  static List<CarouselModel> generateCarousel(){
    return [
      CarouselModel("Adidas", 76500, "Latest Adidas wears","assets/images/p1.png"),
      CarouselModel("Nike", 9800, "Latest Nike wears","assets/images/p2.png"),
      CarouselModel("Timberland", 540, "Latest Timberland wears","assets/images/p3.png"),
      CarouselModel("Balenciaga", 8500, "Latest Balenciaga wears","assets/images/p4.png"),

    ];
  }
}