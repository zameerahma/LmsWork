import 'package:flutter/material.dart';
import 'package:flutter_application_1/trainers/course_info.dart';

import '../utils/responsive.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    void showdialog(BuildContext context) {
      showDialog<void>(
        context: context,
        // false = user must tap button, true = tap outside dialog
        builder: (BuildContext dialogContext) {
          return AlertDialog(
            content: Container(
              width: MediaQuery.of(context).size.width / 1.6,
              height: MediaQuery.of(context).size.height / 1.5,
              color: Colors.white,
              child: Column(
                children: [
                  Text(
                    'Delete Course',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      letterSpacing: 1,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Course Name',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 36,
                      letterSpacing: 1,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Are You Sure You Want to Delete this course?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 36,
                      letterSpacing: 1,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(dialogContext).pop();
                      },
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.red,
                          minimumSize: Size(300, 45),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2),
                          )),
                      child: Text(
                        'Delete'.toUpperCase(),
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      )),
                ],
              ),
            ),
          );
        },
      );
    }

    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
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
              SizedBox(
                height: 10,
              ),
              Text(
                'Courses',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 36,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CourseList(
                tap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CourseInfo()));
                },
                del: () {
                  showdialog(context);
                },
              ),
              SizedBox(
                height: 10,
              ),
              CourseList(
                tap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CourseInfo()));
                },
                del: () {
                  showdialog(context);
                },
              ),
              SizedBox(
                height: 10,
              ),
              CourseList(
                tap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CourseInfo()));
                },
                del: () {
                  showdialog(context);
                },
              ),
              SizedBox(
                height: 10,
              ),
              CourseList(
                tap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CourseInfo()));
                },
                del: () {
                  showdialog(context);
                },
              ),
              SizedBox(
                height: 10,
              ),
              CourseList(
                tap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CourseInfo()));
                },
                del: () {
                  showdialog(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CourseList extends StatelessWidget {
  const CourseList({
    required this.tap,
    required this.del,
    Key? key,
  }) : super(key: key);
  final GestureTapCallback tap;
  final GestureTapCallback del;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      height: 50,
      width: 190,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 1, color: Colors.black),
      ),
      child: Column(
        children: [
          Text(
            'DD/MM/YY',
            style: TextStyle(
              color: Colors.black,
              fontSize: 8,
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Course Name'.toUpperCase(),
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
                IconButton(
                    onPressed: tap,
                    icon: Icon(
                      Icons.menu_open,
                      color: Colors.purple,
                    )),
                IconButton(
                    onPressed: del,
                    icon: Icon(
                      Icons.delete,
                      color: Colors.red,
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
