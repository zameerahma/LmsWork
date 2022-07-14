import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/trainers/UpdateProfile.dart';
import 'package:flutter_application_1/utils/responsive.dart';

import '../lms/super_Admin_home.dart';
import 'Account.dart';
import 'Dashboard.dart';
import 'create_course.dart';

class TrainerHome extends StatelessWidget {
  const TrainerHome({Key? key}) : super(key: key);

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
                'Trainer',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 36,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SuperButton(
                title: "Account".toUpperCase(),
                ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Account()));
                },
              ),
              SizedBox(
                height: 20,
              ),
              SuperButton(
                title: "DashBoard".toUpperCase(),
                ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DashBoard()));
                },
              ),
              SizedBox(
                height: 20,
              ),
              SuperButton(
                title: "Add Courses".toUpperCase(),
                ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CreateCourse()));
                },
              ),
              SizedBox(
                height: 20,
              ),
              SuperButton(
                title: "Calender".toUpperCase(),
                ontap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => Calender()));
                },
              ),
              SizedBox(
                height: 20,
              ),
              SuperButton(
                title: "inbox".toUpperCase(),
                ontap: () {
                  // Navigator.push(
                  //     context, MaterialPageRoute(builder: (context) => Inbox()));
                },
              ),
              SizedBox(
                height: 20,
              ),
              SuperButton(
                title: "History".toUpperCase(),
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
                    'Logout'.toUpperCase(),
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
