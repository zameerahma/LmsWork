import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/utils/Sizeconfig.dart';

class screen extends StatefulWidget {
  const screen({Key? key}) : super(key: key);

  @override
  State<screen> createState() => _screenState();
}

class _screenState extends State<screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
              height: SizeConfig.heightMultiplier * 20,
              width: SizeConfig.heightMultiplier * 20,
              top: SizeConfig.heightMultiplier * -10,
              left: SizeConfig.heightMultiplier * -10,
              child: CircleAvatar(
                radius: 300,
                backgroundColor: Color.fromARGB(255, 219, 128, 9),
              )),
          Positioned(
              height: SizeConfig.heightMultiplier * 20,
              width: SizeConfig.heightMultiplier * 15,
              top: SizeConfig.heightMultiplier * 8,
              right: -SizeConfig.heightMultiplier * 8,
              child: CircleAvatar(
                radius: 300,
                backgroundColor: Color.fromARGB(255, 80, 122, 2),
              )),
          Positioned(
              height: SizeConfig.heightMultiplier * 10,
              width: SizeConfig.heightMultiplier * 8,
              top: SizeConfig.heightMultiplier * 35,
              right: SizeConfig.heightMultiplier * -5,
              child: CircleAvatar(
                radius: 300,
                backgroundColor: Color.fromARGB(255, 108, 226, 72),
              )),
          Positioned(
              height: SizeConfig.heightMultiplier * 20,
              width: SizeConfig.heightMultiplier * 8,
              bottom: SizeConfig.heightMultiplier * 12,
              left: SizeConfig.heightMultiplier * -5,
              child: CircleAvatar(
                radius: 300,
                backgroundColor: Color.fromARGB(255, 224, 238, 25),
              )),
          Positioned(
              height: SizeConfig.heightMultiplier * 15,
              width: SizeConfig.heightMultiplier * 15,
              bottom: -SizeConfig.heightMultiplier * 5,
              left: -SizeConfig.heightMultiplier * 5,
              child: CircleAvatar(
                radius: 300,
                backgroundColor: Color.fromARGB(255, 112, 2, 103),
              )),
          Container(
            height: SizeConfig.screenWidth,
            width: SizeConfig.screenHeight,
            color: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      'assets/download.png',
                      // width: SizeConfig.imageSizeMultiplier * 30,
                      height: SizeConfig.imageSizeMultiplier * 20,
                      fit: BoxFit.fitHeight,
                    ),
                  ],
                ),
                Text(
                  "LMS",
                  style: TextStyle(
                      color: Color.fromARGB(255, 2, 23, 107),
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: SizeConfig.textMultiplier * 5.0,
                      decoration: TextDecoration.none),
                ),
                SizedBox()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
