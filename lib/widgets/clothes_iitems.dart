import 'package:clothesapp/models/carousel_model.dart';
import 'package:flutter/material.dart';

class ClothesItems extends StatefulWidget {
  final CarouselModel clothes;

  ClothesItems(this.clothes);

  @override
  State<ClothesItems> createState() => _ClothesItemsState();
}

class _ClothesItemsState extends State<ClothesItems> {
  bool isFavorite = false;
  void IconColorChange(){
    setState(() {
      isFavorite=!isFavorite;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 15, right: 15),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    height: 170,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.yellow.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage(
                              widget.clothes.image ?? "",
                            ),
                            fit: BoxFit.fitHeight)),
                  ),
                  Positioned(
                    right: 10,
                    top: 10,
                    child: GestureDetector(
                      onTap: IconColorChange,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Icon(Icons.favorite,color: isFavorite? Colors.red: Colors.grey,),
                      ),
                    ),
                  ),
                ],
              ),
              Text(widget.clothes.name,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
              Text(widget.clothes.subtitle),
              Text('\N${widget.clothes.price.toString()}'),
            ],
          ),
        ));
  }
}
