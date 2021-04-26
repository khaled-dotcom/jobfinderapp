import 'package:flutter/material.dart';

class JobSkill extends StatefulWidget {
  @override
  _JobSkillState createState() => _JobSkillState();
}

class _JobSkillState extends State<JobSkill> {
  final listSkill=['On-site in Yogyakarta',
    'Good Communication with clients',
    'Have a good portfolio',
    'Good at using animation',
    'Good at using animation'
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Text("Skills",style: TextStyle(fontSize: 20.0,color: Colors.black,fontWeight: FontWeight.bold)),
        ),
        Container(
          height: 200,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
              itemCount: listSkill.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    children: [

                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          shape: BoxShape.circle,
                        ),
                      ),

                      SizedBox(
                        width: 16,
                      ),

                      Flexible(
                        child: Text(
                          listSkill[index],
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                      ),

                    ],
                  ),
                );
              }
          ),
        ),
      ],
    );

  }
}
