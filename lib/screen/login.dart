import 'package:flutter/material.dart';
import 'package:mobilefirst/config/constant.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.04,
            ),
            Container(
              width: size.width * 0.9,
              child: TextFormField(
                style: TextStyle(color: Colors.black, fontSize: 20),
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.alternate_email,
                    color: pColor,
                    size: size.height * 0.05,
                  ),
                  hintText: "Email",
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            Container(
              width: size.width * 0.9,
              child: TextFormField(
                style: TextStyle(color: Colors.black, fontSize: 20),
                obscureText: true,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.lock,
                    color: pColor,
                    size: size.height * 0.05,
                  ),
                  hintText: "Password",
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            ElevatedButton(
              child: Text('Submit'),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
