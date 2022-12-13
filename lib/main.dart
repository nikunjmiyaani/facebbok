import 'package:facebbok/loginpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main(List<String> args) {
  runApp(nikunj());
}

class nikunj extends StatelessWidget {
  const nikunj({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: login(),
    );
  }
}
