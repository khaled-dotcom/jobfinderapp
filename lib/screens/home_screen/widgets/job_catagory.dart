import 'package:flutter/material.dart';

class JobCatagory extends StatefulWidget {
  @override
  _JobCatagoryState createState() => _JobCatagoryState();
}

class _JobCatagoryState extends State<JobCatagory> {
  final listCatagory = [
    "All",
    "Writer",
    "UI/UX Design",
    "interior",
    "Web Design"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.0,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: listCatagory.length,
          separatorBuilder: (_, __) => SizedBox(width: 15.0),
          itemBuilder: (BuildContext context, int index) {
            return index == 0
                ? Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Text(listCatagory[index],
                        style: TextStyle(color: Colors.white, fontSize: 15.0)),
                  )
                : Container(
                    padding: EdgeInsets.all(7.0),
                    decoration: BoxDecoration(
                        color: Colors.brown[50],
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Text(listCatagory[index],
                        style: TextStyle(color: Colors.grey, fontSize: 15.0)),
                  );
          }),
    );
  }
}
