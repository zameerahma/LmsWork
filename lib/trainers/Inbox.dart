import 'package:flutter/material.dart';
import 'package:flutter_application_1/lms/super_Admin_home.dart';

import '../utils/responsive.dart';


class Inbox extends StatelessWidget {
  const Inbox({Key? key}) : super(key: key);

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
              'Inbox',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 36,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            SuperButton(
              title: "Send Receive text from employee".toUpperCase(),
              ontap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => ViewTrainerProgress()));
              },
            ),
           
          ],
        ),
      ),
    );
  }
}
