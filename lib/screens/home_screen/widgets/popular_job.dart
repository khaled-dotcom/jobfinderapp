import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jobfinder/screens/jobDetail_screen/job_detail_screen.dart';

class PopularJob extends StatefulWidget {
  @override
  _PopularJobState createState() => _PopularJobState();
}

class _PopularJobState extends State<PopularJob> {
  final listItem = [
    {
      'img': "assets/images/keitito1.png",
      'title': "Keitito",
      'subtitle': "Onsite",
      'position': "UI/UX Design",
      'address': "Yogkiya,Indonessia"
    },
    {
      'img': "assets/images/sebo.png",
      'title': "Sebo",
      'subtitle': "Onsite",
      'position': "Web Developer",
      'address': "Yogkiya,Indonessia"
    },
    {
      'img': "assets/images/google.png",
      'title': "Google",
      'subtitle': "Onsite",
      'position': "UI/UX Design",
      'address': "Yogkiya,Indonessia"
    },
    {
      'img': "assets/images/youtube.png",
      'title': "Youtube",
      'subtitle': "Onsite",
      'position': "Product Manager",
      'address': "Yogkiya,Indonessia"
    },
    {
      'img': "assets/images/google.png",
      'title': "Google",
      'subtitle': "Onsite",
      'position': "UI/UX Design",
      'address': "Yogkiya,Indonessia"
    },
    {
      'img': "assets/images/youtube.png",
      'title': "Youtube",
      'subtitle': "Onsite",
      'position': "Product Manager",
      'address': "Yogkiya,Indonessia"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: listItem.length,
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        childAspectRatio: 1.40,
        mainAxisSpacing: 15,
      ),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12.0)),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.05),
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Image.asset(listItem[index]['img']),
                            ),
                            height: 50.0,
                            width: 60.0,
                          ),
                        ),
                        FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Column(

                            children: [
                              Text(listItem[index]['title'],
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0)),
                              Text(listItem[index]['subtitle'],
                                  style: TextStyle(color: Colors.black54))
                            ],
                          ),
                        ),

                        Flexible(child: Icon(Icons.bookmark_outline))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    listItem[index]['position'],
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                  ),
                  FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          size: 15.0,
                        ),
                        Text(
                          listItem[index]['address'],
                          style: TextStyle(color: Colors.black54),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          onTap: () {
            if (index == 0)
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => JobDetail()),
              );
          },
        );
      },
    );
  }
}
