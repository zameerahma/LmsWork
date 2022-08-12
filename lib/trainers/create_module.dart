import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/responsive.dart';

import 'Modules.dart';

class Create_Module extends StatelessWidget {
  const Create_Module({Key? key}) : super(key: key);

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
              SizedBox(
                height: 10,
              ),
              Text(
                'Create Modules',
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
                title: 'Enter module name',
              ),
              SizedBox(
                height: 20,
              ),
              FormField(
                title: 'Instructions Fields for modules',
              ),
              SizedBox(
                height: 20,
              ),
              FormField(
                title: 'Total marks of modules',
              ),
              SizedBox(
                height: 20,
              ),
              FormField(
                title: 'Date DD/MM/YY',
              ),
              SizedBox(
                height: 20,
              ),
              FormField(
                title: 'Start time of module',
              ),
              SizedBox(
                height: 20,
              ),
              FormField(
                title: 'End time of module',
              ),
              SizedBox(
                height: 20,
              ),
              FormField(
                title: 'Questions Bank of Module(sub & obj',
              ),
              SizedBox(
                height: 40,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Modules()));
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
