import 'package:flutter/material.dart';

import 'package:mobilefirst/index.dart';
import 'package:mobilefirst/screen/dashboard.dart';
import 'package:mobilefirst/screen/firebaseregister.dart';
import 'package:mobilefirst/screen/register.dart';
import 'package:mobilefirst/screen/video.dart';
import 'package:mobilefirst/screen/image.dart';
import 'package:mobilefirst/screen/location.dart';

import 'config/constant.dart';
import 'screen/login.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KMUTNB',
      theme: ThemeData(
        primaryColor: pColor,
        secondaryHeaderColor: sColor,
      ),
      routes: {
        'login': (context) => Login(),
        'register': (context) => FirbaseRegister(),
        'dashboard': (context) => Dashboard(),
        'video': (context) => Video(),
        'image': (context) => Images(),
        'location': (context) => Location(),
      },
      home: Index(),
    );
  }
}
