import 'package:flutter/material.dart';
import 'package:flutter_application_1/lms/super_Admin_home.dart';

import '../utils/responsive.dart';

class DeleteAdmin extends StatelessWidget {
  const DeleteAdmin({Key? key}) : super(key: key);

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
              color: Colors.yellow,
              child: Column(
                children: [
                  Icon(
                    Icons.check_circle_outline,
                    size: 120.0,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Admin \n Deleted \n Successfully',
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
                        'okay'.toUpperCase(),
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
              'Delete Admin',
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
              height: 30,
            ),
            TextButton(
                onPressed: () {
                  showdialog(context);
                },
                style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                    minimumSize: Size(300, 45),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2),
                    )),
                child: Text(
                  'Delete Account'.toUpperCase(),
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
