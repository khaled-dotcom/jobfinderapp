import 'package:flutter/material.dart';
import 'package:jobfinder/screens/jobDetail_screen/widgets/job_apply.dart';
import 'package:jobfinder/screens/jobDetail_screen/widgets/job_description.dart';
import 'package:jobfinder/screens/jobDetail_screen/widgets/job_detail_header.dart';
import 'package:jobfinder/screens/jobDetail_screen/widgets/job_skills.dart';
import 'package:jobfinder/screens/jobDetail_screen/widgets/job_status.dart';
import 'package:jobfinder/screens/jobDetail_screen/widgets/work_details.dart';

class JobDetail extends StatefulWidget {
  @override
  _JobDetailState createState() => _JobDetailState();
}

class _JobDetailState extends State<JobDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
            child: Column(
              children: [
                JobDetailHeader(), //header
                SizedBox(
                  height: 30.0,
                ),
                WorkDetails(), //logo-work duration-work position
                SizedBox(
                  height: 20.0,
                ),
                JobStatus(), //member,likes,place
                JobDescription(), //Job description
                JobSkill(), //job skill
                SizedBox(
                  height: 10.0,
                ),
                JobApply(), // apply button
              ],
            )),
      ),
    );
  }
}
/***/
