import 'package:flutter/material.dart';

bool isMobile(BuildContext context) => MediaQuery.of(context).size.width < 650;
bool isTablet(BuildContext context) =>
    MediaQuery.of(context).size.width >= 650 ||
    MediaQuery.of(context).size.width < 1300;
bool isDesktop(BuildContext context) =>
    MediaQuery.of(context).size.width >= 1300;
