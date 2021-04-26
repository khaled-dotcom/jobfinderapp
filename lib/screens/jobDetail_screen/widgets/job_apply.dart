import 'package:flutter/material.dart';

class JobApply extends StatefulWidget {
  @override
  _JobApplyState createState() => _JobApplyState();
}

class _JobApplyState extends State<JobApply> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          child: Center(
            child: Icon(
              Icons.bookmark_outline,
              size: 28,
              color: Colors.deepOrange,
            ),
          ),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.deepOrange.withOpacity(0.1),
                  spreadRadius: 3,
                  blurRadius: 3,
                  offset: Offset(0, 4),
                )
              ]),
        ),
        SizedBox(
          width: 16,
        ),
        Expanded(
          child: GestureDetector(
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Center(
                child: Text(
                  "Apply Now",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            onTap: () {
              //next screen navigation
            },
          ),
        ),
      ],
    );
  }
}
