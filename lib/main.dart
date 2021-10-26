import 'package:firebase_core/firebase_core.dart';
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

Future<void> main() async {
  // กำหนดค่าเริ่มต้นในการเชื่อมต่อไปยัง Firebase โดยใช้ package Firebase Core
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

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
        'register': (context) => FirebaseRegister(),
        'dashboard': (context) => Dashboard(),
        'video': (context) => Video(),
        'image': (context) => Images(),
        'location': (context) => Location(),
      },
      home: Index(),
    );
  }
}
