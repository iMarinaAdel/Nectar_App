import 'package:flutter/material.dart';

class AppNavigation {
static  void pushTO(BuildContext context, Widget newPage) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => newPage));
  }

   static void pushReplacementTO(BuildContext context, Widget newPage) {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => newPage));
  }

 static void pushAndRemoveUntil(BuildContext context, Widget newPage) {
  Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(builder: (context) => newPage),
    (route) => false,
  );
}


}
