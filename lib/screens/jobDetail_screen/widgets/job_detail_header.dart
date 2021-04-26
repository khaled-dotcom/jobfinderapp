import 'package:flutter/material.dart';
import 'package:jobfinder/screens/home_screen/home_screen.dart';

class JobDetailHeader extends StatefulWidget {
  @override
  _JobDetailHeaderState createState() => _JobDetailHeaderState();
}

class _JobDetailHeaderState extends State<JobDetailHeader> {
  @override
  Widget build(BuildContext context) {

    //header

    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        // back option
        GestureDetector(
          child: Container(
            height: 40.0,
            width: 40.0,
            child: Icon(Icons.arrow_back_ios_rounded),
            decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(10.0)
            ),
          ),
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
        ),

        //title

        FittedBox(
            fit: BoxFit.fitWidth,
            child: Text("Job Detailed",style: TextStyle(fontSize: 20.0,color: Colors.black,fontWeight: FontWeight.bold),)),
        //
        GestureDetector(
          child: Container(
            padding: EdgeInsets.all(8.0),
            height: 40.0,
            width: 40.0,
            child: Image.asset("assets/icons/twodot.png"),
            decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(10.0)
            ),
          ),
          onTap: (){
            //navigation for option element
          },
        ),

      ],
    );
  }
}
