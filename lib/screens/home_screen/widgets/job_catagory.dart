import 'package:flutter/material.dart';

class JobCatagory extends StatefulWidget {
  @override
  _JobCatagoryState createState() => _JobCatagoryState();
}

class _JobCatagoryState extends State<JobCatagory> {
  final listCatagory=["All","Writter","UI/UX Designer","interior","Web Design"];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.0,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: listCatagory.length,
          separatorBuilder: (_, __) => SizedBox(width: 10),
          itemBuilder: (BuildContext context, int index) {

            return index==0?
            Container(
              padding: EdgeInsets.all(7.0),
              decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(12.0)
              ),
              child: Text(listCatagory[index],style: TextStyle(color:Colors.white,fontSize: 15.0 )),

            )
                :
            Container(
              padding: EdgeInsets.all(7.0),
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10.0)
              ),
              child: Text(listCatagory[index],style: TextStyle(color:Colors.white,fontSize: 15.0 )),

            );


          }),

    );
  }
}
