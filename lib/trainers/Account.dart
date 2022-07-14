import 'package:flutter/material.dart';
import 'package:flutter_application_1/trainers/UpdateProfile.dart';
import 'package:flutter_application_1/trainers/profile.dart';
import 'package:flutter_application_1/trainers/restpassword.dart';

import '../lms/super_Admin_home.dart';
import '../utils/responsive.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
            height: size.height,
            width: size.width,
            child: Column(children: [
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
                'Account',
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
                title: "View profile".toUpperCase(),
                ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Profile()));
                },
              ),
              SizedBox(
                height: 20,
              ),
              SuperButton(
                title: "update profile".toUpperCase(),
                ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => UpdateProfile()));
                },
              ),
              SizedBox(
                height: 20,
              ),
              SuperButton(
                title: "reset password".toUpperCase(),
                ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ResetPassword()));
                },
              ),
              SizedBox(
                height: 20,
              ),
            ])));
  }
}
