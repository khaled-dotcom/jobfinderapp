import 'package:flutter/material.dart';

class JobStatus extends StatefulWidget {
  @override
  _JobStatusState createState() => _JobStatusState();
}

class _JobStatusState extends State<JobStatus> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(width: 2.0, color: Colors.black26),
          borderRadius: BorderRadius.circular(10.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Container(
              child: Image.asset(
                "assets/icons/members.png",
                color: Colors.deepOrange,
              ),
            ),
          ),
          Text(
            "5 Member",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Container(height: 38, width: 2, color: Colors.black26),
          Flexible(
            child: Container(
              child: Image.asset(
                "assets/icons/like.png",
                color: Colors.deepOrange,
              ),
            ),
          ),
          Text(
            "40k Likes",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Container(height: 38, width: 2, color: Colors.black26),
          Flexible(
              child: Icon(
            Icons.location_on_outlined,
            color: Colors.deepOrange,
          )),
          Text(
            "Yogyakarta",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
