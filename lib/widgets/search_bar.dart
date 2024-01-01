import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Flexible(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                cursorColor: Colors.grey.withOpacity(0.3),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search_off_outlined),
                  hintText: "Search For the Nice Clothes",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                  fillColor: Colors.red,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            flex: 1,
          ),
          Container(
            width: 50,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10)
            ),
          ),
        ],
      ),
    );
  }
}
