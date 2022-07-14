import 'package:flutter/material.dart';

import '../lms/super_Admin_home.dart';
import '../utils/responsive.dart';

class CourseInfo extends StatelessWidget {
  const CourseInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: isMobile(context)
                    ? EdgeInsets.only(left: 300)
                    : EdgeInsets.only(left: 960),
                child: Image.asset(
                  'assets/logo.jpg',
                  width: 200,
                ),
              ),
              Text(
                'Course Info',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 36,
                ),
              ),
              CourseDetails(
                text: 'Course Name:',
                text1: 'XYZ',
              ),
              SizedBox(
                height: 10,
              ),
              CourseDetails(
                text: 'Course ID:',
                text1: '123',
              ),
              SizedBox(
                height: 10,
              ),
              CourseDetails(
                text: 'Course Duration:',
                text1: '2Months',
              ),
              SizedBox(
                height: 10,
              ),
              CourseDetails(
                text: 'Course Outline:',
                text1: 'ABC',
              ),
              SizedBox(
                height: 10,
              ),
              CourseDetails(
                text: 'Course OutCome:',
                text1: 'Assistent Manger',
              ),
              SizedBox(
                height: 10,
              ),
              CourseDetails(
                text: 'Course Description:',
                text1: 'this course is releated to..',
              ),
              SizedBox(
                height: 10,
              ),
              SuperButton(
                title: "Modules".toUpperCase(),
                ontap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => Account()));
                },
              ),
              SizedBox(
                height: 20,
              ),
              SuperButton(
                title: "Deadlines".toUpperCase(),
                ontap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => DashBoard()));
                },
              ),
              SizedBox(
                height: 20,
              ),
              SuperButton(
                title: "Discussions".toUpperCase(),
                ontap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => AddCourses()));
                },
              ),
              SizedBox(
                height: 20,
              ),
              SuperButton(
                title: "Private Messages".toUpperCase(),
                ontap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => Calender()));
                },
              ),
              SizedBox(
                height: 20,
              ),
              SuperButton(
                title: "Results".toUpperCase(),
                ontap: () {
                  // Navigator.push(
                  //     context, MaterialPageRoute(builder: (context) => Inbox()));
                },
              ),
              SizedBox(
                height: 20,
              ),
              SuperButton(
                title: "LeadeBoard".toUpperCase(),
                ontap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => History()));
                },
              ),
              SizedBox(
                height: 40,
              ),
              TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.red,
                      minimumSize: Size(300, 45),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2),
                      )),
                  child: Text(
                    'Go Live'.toUpperCase(),
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CourseDetails extends StatelessWidget {
  const CourseDetails({
    required this.text,
    required this.text1,
    Key? key,
  }) : super(key: key);
  final String text;
  final String text1;
  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            text: text,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
            children: [
          TextSpan(
            text: text1,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
        ]));
  }
}
