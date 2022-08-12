import 'package:flutter/material.dart';
import 'package:flutter_application_1/lms/super_Admin_home.dart';

import '../trainers/profile.dart';
import '../utils/responsive.dart';

class ViewProfiles extends StatelessWidget {
  const ViewProfiles({Key? key}) : super(key: key);

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
              'View Profiles',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 36,
              ),
            ),
            SizedBox(
              height: 60,
            ),
            SuperButton(
              title: "Admins".toUpperCase(),
              ontap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Profile()));
              },
            ),
            SizedBox(
              height: 20,
            ),
            SuperButton(
              title: "Trainers".toUpperCase(),
              ontap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Profile()));
              },
            ),
            SizedBox(
              height: 20,
            ),
            SuperButton(
              title: "Employees".toUpperCase(),
              ontap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Profile()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
