import 'package:flutter/material.dart';

import '../utils/responsive.dart';
import 'Dashboard.dart';

class CreateCourse extends StatelessWidget {
  const CreateCourse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final TextEditingController _controller = new TextEditingController();
    var items = [
      'Non-Management',
      'AM & Equivalent',
      'SM & Equivalent',
      'Manger & Equivalent',
      'GM/Head & Equivalent',
      'EVP/Head & Equivalent',
      'CXOs',
    ];
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
              SizedBox(
                height: 10,
              ),
              Text(
                'Create Course',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 36,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              FormField(
                title: 'Enter course name',
              ),
              SizedBox(
                height: 20,
              ),
              FormField(
                title: 'Enter course id',
              ),
              SizedBox(
                height: 20,
              ),
              FormField(
                title: 'Enter course description',
              ),
              SizedBox(
                height: 20,
              ),
              FormField(
                title: 'Enter course duration',
              ),
              SizedBox(
                height: 20,
              ),
              FormField(
                title: 'Enter course outline',
              ),
              SizedBox(
                height: 20,
              ),
              FormField(
                title: 'Enter course outcome',
              ),
              SizedBox(
                height: 40,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DashBoard()));
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                      minimumSize: Size(360, 45),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2),
                      )),
                  child: Text(
                    'Create'.toUpperCase(),
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  )),
            ],
          ),
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
