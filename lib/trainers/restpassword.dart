import 'package:flutter/material.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Rest Password Here',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            FormField(title: 'Current Password'),
            SizedBox(
              height: 10,
            ),
            FormField(title: 'New Password'),
            SizedBox(
              height: 10,
            ),
            FormField(title: 'Confirm Password'),
            SizedBox(
              height: 10,
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
                  'Reset'.toUpperCase(),
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

class FormField extends StatelessWidget {
  const FormField({
    required this.title,
    Key? key,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2.0, color: Colors.black87),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2.0, color: Colors.black87),
          ),
          labelText: title,
        ),
      ),
    );
  }
}
