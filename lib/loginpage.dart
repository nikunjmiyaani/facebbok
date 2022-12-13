import 'package:facebbok/controlar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class login extends StatelessWidget {
  login({super.key});
  var controllar = Get.put(controolar());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                controllar.googlelogin;
              },
              child: Text('googe'))
        ],
      ),
    );
  }
}
