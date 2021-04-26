import 'package:flutter/material.dart';

class JobDescription extends StatefulWidget {
  @override
  _JobDescriptionState createState() => _JobDescriptionState();
}

class _JobDescriptionState extends State<JobDescription> {
  @override
  Widget build(BuildContext context) {
    return  Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text("Job Description",style: TextStyle(fontSize: 20.0,color: Colors.black,fontWeight: FontWeight.bold),),
    SizedBox(height: 17.0,),
    Text("Your job is to design an application or website that is as attractive and creative as possible."
    "here you work fulltime and have to be diligent and beable to use animation to make it more interesting",
      style: TextStyle(fontSize: 15.0,color: Colors.black54,letterSpacing:0.5,height: 1.5),),
      ]
    )
    );
  }
}
