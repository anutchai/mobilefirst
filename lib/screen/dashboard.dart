import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mobilefirst/model/activity.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  var data;

  // initState เป็น function ที่จะทำงานก่อนการ วาดหน้า
  @override
  void initState() {
    super.initState();
    callActivity();
  }

  Future<void> callActivity() async {
    // กำหนด path
    var url = Uri.parse("https://www.boredapi.com/api/activity");
    // การ call api
    var response = await http.get(url);

    // การแสดง สถานะของโค้ด
    print(response.statusCode);
    // การแสดง ข้อมูล
    print(response.body);

    // การสั่งให้แอปวาดหน้าจอใหม่ โดยการใช้ function setState
    setState(() {
      // การแปลงข้อมูลจาก json >> object
      data = cedFromJson(response.body);
      // การเข้าถึงข้อมูลใน object
      print(data.activity);
      print(data.type);
      print(data.participants);
      print(data.price);
    });
  }

  Future<void> logout() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Text('Menu Package'),
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                ),
              ),
              ListTile(
                title: Text(
                  'Video',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                leading: Icon(Icons.video_call),
                onTap: () {
                  print('Menu Video');
                  Navigator.pushNamed(context, 'video');
                },
              ),
              ListTile(
                title: Text(
                  'Image',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                leading: Icon(Icons.image),
                onTap: () {
                  print('Menu Image');
                  Navigator.pushNamed(context, 'image');
                },
              ),
              ListTile(
                title: Text(
                  'Location',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                leading: Icon(Icons.map),
                onTap: () {
                  print('Menu Location');
                  Navigator.pushNamed(context, 'location');
                },
              ),
              ListTile(
                title: Text(
                  'Store',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                leading: Icon(Icons.store),
                onTap: () {
                  print('Menu Store');
                  Navigator.pushNamed(context, 'store');
                },
              ),
              ListTile(
                title: Text(
                  'Logout',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                leading: Icon(Icons.exit_to_app),
                onTap: () {
                  print('Menu Logout');
                  logout();
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, 'login');
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.api_sharp),
              SizedBox(
                width: 10,
              ),
              Text('Dashboard'),
            ],
          ),
        ),
        body: Column(
          children: [
            Text(data?.activity ?? "กำลังโหลด"),
            Text(data?.type ?? ""),
            // การนำ integer มาแสดง
            Text('${data?.participants ?? ""}'),
            Text('${data?.price ?? ""}'),
          ],
        ),
      ),
    );
  }
}
