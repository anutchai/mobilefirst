import 'package:flutter/material.dart';
import 'package:mobilefirst/config/constant.dart';

class FirbaseRegister extends StatefulWidget {
  const FirbaseRegister({Key? key}) : super(key: key);

  @override
  _FirbaseRegisterState createState() => _FirbaseRegisterState();
}

class _FirbaseRegisterState extends State<FirbaseRegister> {
  var name, email, password;
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Sign Up"),
        ),
        body: Form(
          key: formkey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                txtName(),
                txtEmail(),
                txtPassword(),
                btnSubmit(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget txtName() {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
      child: TextFormField(
        style: TextStyle(
          color: sColor,
          fontSize: 24,
        ),
        decoration: InputDecoration(
          labelText: 'Name:',
          icon: Icon(Icons.approval),
          hintText: 'Input your name',
        ),
        validator: (val) {
          if (val!.length < 6) {
            return 'กรุณากรอกข้อมูลมากกว่า 6 ตัวอักษร';
          }
        },
        onSaved: (val) {
          name = val;
        },
      ),
    );
  }

  Widget txtEmail() {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
      child: TextFormField(
        style: TextStyle(
          color: sColor,
          fontSize: 24,
        ),
        decoration: InputDecoration(
          labelText: 'Email:',
          icon: Icon(Icons.email),
          hintText: 'Input your email',
        ),
        keyboardType: TextInputType.emailAddress,
        validator: (value) {
          if (!(value!.contains('@'))) {
            return 'กรุณากรอกข้อมูลตามรูปอีเมลด้วย';
          } else if (!(value.contains('.'))) {
            return 'กรุณากรอกข้อมูลตามรูปอีเมลด้วย';
          }
        },
        onSaved: (value) {
          email = value;
        },
      ),
    );
  }

  Widget txtPassword() {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
      child: TextFormField(
        style: TextStyle(
          color: sColor,
          fontSize: 24,
        ),
        decoration: InputDecoration(
          labelText: 'Password:',
          icon: Icon(Icons.lock),
          hintText: 'Input your password',
        ),
        obscureText: true,
        onSaved: (value) {
          password = value;
        },
      ),
    );
  }

  Widget btnSubmit() {
    return ElevatedButton(
      child: Text('Submit'),
      onPressed: () {},
    );
  }
}
