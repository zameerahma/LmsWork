import 'package:flutter/material.dart';

class menu extends StatelessWidget {
  const menu({
    required this.title,
    required this.ontap,
    Key? key,
  }) : super(key: key);
  final String title;
  final GestureTapCallback ontap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      focusColor: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Text(
          title,
          style: TextStyle(
            fontStyle: FontStyle.normal,
          ),
        ),
      ),
    );
  }
}
