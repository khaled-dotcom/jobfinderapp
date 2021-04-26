import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      icon:
                          Icon(Icons.search, size: 25.0, color: Colors.black54),
                      border: InputBorder.none,
                      hintText: "Search your best job"),
                )),
          ),
          GestureDetector(
            child: Container(
                height: 50.0,
                width: 50.0,
                margin: EdgeInsets.only(left: 12.0),
                decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(12.0),
                    image: DecorationImage(
                        image: AssetImage("assets/icons/slidericon1.png")))),
            onTap: () {
              //if show slider element then work this part
            },
          )
        ],
      ),
    );
  }
}
