import 'package:flutter/material.dart';
import 'package:flutter_application_1/lms/super_Admin_home.dart';

import '../utils/responsive.dart';

class AssignRoles extends StatelessWidget {
  const AssignRoles({Key? key}) : super(key: key);

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
              'Assign Roles',
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
              title: "Admin (emp id)".toUpperCase(),
              ontap: () {},
            ),
            SizedBox(
              height: 20,
            ),
            SuperButton(
              title: "Roles".toUpperCase(),
              ontap: () {},
            ),
            SizedBox(
              height: 50,
            ),
            TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    backgroundColor: Colors.green,
                    minimumSize: Size(300, 45),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2),
                    )),
                child: Text(
                  'Assign Role'.toUpperCase(),
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
