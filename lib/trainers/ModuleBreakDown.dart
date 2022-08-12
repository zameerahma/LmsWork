import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/trainers/Clander.dart';
import 'package:flutter_application_1/trainers/History.dart';
import 'package:flutter_application_1/trainers/Inbox.dart';
import 'package:flutter_application_1/trainers/UpdateProfile.dart';
import 'package:flutter_application_1/utils/responsive.dart';

import '../lms/super_Admin_home.dart';
import 'Account.dart';
import 'Dashboard.dart';
import 'create_course.dart';

class ModuleBreakDown extends StatelessWidget {
  const ModuleBreakDown({Key? key}) : super(key: key);

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
                'Module BreakDown',
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
                title: "Module Name".toUpperCase(),
                ontap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => Account()));
                },
              ),
              SizedBox(
                height: 20,
              ),
              SuperButton(
                title: "Instructions fields".toUpperCase(),
                ontap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => DashBoard()));
                },
              ),
              SizedBox(
                height: 20,
              ),
              SuperButton(
                title: "Total marks".toUpperCase(),
                ontap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => CreateCourse()));
                },
              ),
              SizedBox(
                height: 20,
              ),
              SuperButton(
                title: "Date".toUpperCase(),
                ontap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => Clander()));
                },
              ),
              SizedBox(
                height: 20,
              ),
              SuperButton(
                title: "start date".toUpperCase(),
                ontap: () {
                  // Navigator.push(
                  //     context, MaterialPageRoute(builder: (context) => Inbox()));
                },
              ),
              SizedBox(
                height: 20,
              ),
              SuperButton(
                title: "end date".toUpperCase(),
                ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Clander()));
                },
              ),
              SizedBox(
                height: 20,
              ),
              SuperButton(
                title: "Attach document".toUpperCase(),
                ontap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => Clander()));
                },
              ),
              SizedBox(
                height: 20,
              ),
              SuperButton(
                title: "Attach Content".toUpperCase(),
                ontap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => Clander()));
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
