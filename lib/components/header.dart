import 'package:flutter/material.dart';
import 'package:flutter_application_1/HomeScreen/menu.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        children: [
          Image.asset('assets/UOC.jpg'),
          SizedBox(
            width: 10,
          ),
          Text(
            'The University of Chaneb',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.w300,
              fontStyle: FontStyle.italic,
            ),
          ),
          Spacer(),
          menu(
            title: 'Home',
            ontap: () {},
          ),
          menu(
            title: 'Contact',
            ontap: () {},
          ),
          menu(
            title: 'Login',
            ontap: () {},
          ),
          menu(
            title: 'Register',
            ontap: () {},
          ),
        ],
      ),
    );
  }
}
