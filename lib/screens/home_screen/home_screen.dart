import 'package:flutter/material.dart';
import 'package:jobfinder/screens/home_screen/widgets/banners.dart';
import 'package:jobfinder/screens/home_screen/widgets/bootm_navbar.dart';
import 'package:jobfinder/screens/home_screen/widgets/job_catagory.dart';
import 'package:jobfinder/screens/home_screen/widgets/popular_job.dart';
import 'package:jobfinder/screens/home_screen/widgets/search_field.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //appbar
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                               // menu icon
                    Container(
                      height: 40,
                      width: 40,
                      child: Image.asset(
                        "assets/icons/doticon.png",
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0)
                      ),
                    ),

                    //profile
                    Container(
                        height: 40,
                        width: 40,
                      padding: EdgeInsets.all(5.0),
                      child: Image.asset("assets/images/person2.png"),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.deepOrange,
                      ),
                      
                    )
                  ],
                ),

                //welcome part
                Padding(
                  padding: EdgeInsets.only( top: 30,bottom: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Welcome",
                          style: TextStyle(
                            color: Colors.black54,
                          )),
                      Text(
                        "Find Your Dream Job!",
                        style: TextStyle(color: Colors.black, fontSize: 20.0,fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                SearchField(),   //search bar
                SizedBox(height: 20,),
                Banners(),       //banner
                SizedBox(height: 20,),
               JobCatagory(),   //job catagory
                SizedBox(
                  height: 30,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Popular Job",
                        style: TextStyle(color: Colors.black, fontSize: 20.0,fontWeight: FontWeight.bold)),
                    Text("See All")
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                PopularJob() //popular job

              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavBar(),       //botoom navigation bar


    );
  }


}
