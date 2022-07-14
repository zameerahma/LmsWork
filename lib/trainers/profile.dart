import 'package:flutter/material.dart';
import 'package:flutter_application_1/trainers/UpdateProfile.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
            width: size.width,
            height: size.height,
            child: SingleChildScrollView(
              child: Column(children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  height: 220,
                  width: double.infinity,
                  color: Colors.green,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(
                          'Ali Pirzada',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Ali Pirzada',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Trainer Info',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => UpdateProfile()));
                        },
                        child: Text(
                          'Edit Profile',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                profileWidget(
                  text: 'name',
                  text1: 'ali',
                ),
                SizedBox(
                  height: 10,
                ),
                profileWidget(
                  text: 'Function',
                  text1: 'trainings',
                ),
                SizedBox(
                  height: 10,
                ),
                profileWidget(
                  text: 'designation',
                  text1: 'manger',
                ),
                SizedBox(
                  height: 10,
                ),
                profileWidget(
                  text: 'region',
                  text1: 'LHR',
                ),
                SizedBox(
                  height: 10,
                ),
                profileWidget(
                  text: 'conact no',
                  text1: '231124244',
                ),
                SizedBox(
                  height: 10,
                ),
              ]),
            )));
  }
}

class profileWidget extends StatelessWidget {
  const profileWidget({
    required this.text,
    required this.text1,
    Key? key,
  }) : super(key: key);
  final String text;
  final String text1;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(8),
        height: 50,
        width: 190,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1, color: Colors.black),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          Text(
            text1.toUpperCase(),
            style: TextStyle(
              color: Colors.black,
              fontSize: 11,
            ),
          ),
        ]));
  }
}
