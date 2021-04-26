import 'package:flutter/material.dart';

class JobCondition extends StatefulWidget {
  @override
  _JobConditionState createState() => _JobConditionState();
}

class _JobConditionState extends State<JobCondition> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          width: MediaQuery.of(context).size.width/3.5,
          child: Card(
            child: Image.asset("assets/images/keitito1.png"),
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Text("Keitoto",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                letterSpacing: 1.3)),
        SizedBox(
          height: 10.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Fulltime",
              style: TextStyle(color: Colors.black54, letterSpacing: 1.3),
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 7.0),
                height: 8.0,
                width: 8.0,
                decoration: BoxDecoration(
                    color: Colors.black26, shape: BoxShape.circle)),
            Text(
              "UI Design",
              style: TextStyle(color: Colors.black54, letterSpacing: 1.3),
            ),
          ],
        )
      ],
    );
  }
}

