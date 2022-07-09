import 'package:flutter/material.dart';
import 'package:flutter_application_1/lms/AddAdmin.dart';
import 'package:flutter_application_1/lms/Assign%20Roles.dart';
import 'package:flutter_application_1/lms/DeleteAdmin.dart';
import 'package:flutter_application_1/lms/ViewProgress.dart';
import 'package:flutter_application_1/utils/responsive.dart';

import 'ViewProfiles.dart';
import 'dropdown.dart';

class SuperAdmin extends StatelessWidget {
  const SuperAdmin({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            Container(
              padding: isMobile(context)
                  ? EdgeInsets.only(left: 300)
                  : EdgeInsets.only(left: 960),
              child: Image.asset(
                'assets/download.png',
                width: 200,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Super Admin',
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
              title: "Add Admin".toUpperCase(),
              ontap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddAdmin()));
              },
            ),
            SizedBox(
              height: 20,
            ),
            SuperButton(
              title: "Assign Roles".toUpperCase(),
              ontap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AssignRoles()));
              },
            ),
            SizedBox(
              height: 20,
            ),
            SuperButton(
              title: "View Progress".toUpperCase(),
              ontap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ViewProgress()));
              },
            ),
            SizedBox(
              height: 20,
            ),
            SuperButton(
              title: "View Profile".toUpperCase(),
              ontap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ViewProfiles()));
              },
            ),
            SizedBox(
              height: 20,
            ),
            SuperButton(
              title: "Delete Admin".toUpperCase(),
              ontap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DeleteAdmin()));
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
          ],
        ),
      ),
    );
  }
}

class SuperButton extends StatelessWidget {
  const SuperButton({
    required this.ontap,
    required this.title,
    Key? key,
  }) : super(key: key);
  final String title;
  final GestureTapCallback ontap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: ontap,
        style: TextButton.styleFrom(
            backgroundColor: Colors.yellow,
            minimumSize: Size(300, 45),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2),
            )),
        child: Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ));
  }
}
