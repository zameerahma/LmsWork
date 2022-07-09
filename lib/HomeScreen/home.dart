import 'package:flutter/material.dart';
import 'package:flutter_application_1/HomeScreen/menu.dart';

import '../components/header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            Header(),
            Container(
                child: Row(
              children: [],
            )),
          ],
        ),
      ),
    );
  }
}
