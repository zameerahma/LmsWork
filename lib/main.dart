import 'package:flutter/material.dart';
import 'package:flutter_application_1/HomeScreen/home.dart';
import 'package:flutter_application_1/Obl/registeration.dart';
import 'package:flutter_application_1/lms/super_Admin_home.dart';
import 'package:flutter_application_1/screen.dart';
import 'package:flutter_application_1/utils/Sizeconfig.dart';

import 'trainers/TrainerHome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        return const MaterialApp(
          title: 'LMS',
          debugShowCheckedModeBanner: false,
          home: TrainerHome(),
        );
      });
    });
  }
}
