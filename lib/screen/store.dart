import 'package:flutter/material.dart';
import 'package:mobilefirst/config/constant.dart';
import 'package:mobilefirst/screen/adddata.dart';
import 'package:mobilefirst/screen/template/adddata.dart';
import 'package:mobilefirst/screen/viewdata.dart';

class Store extends StatefulWidget {
  const Store({Key? key}) : super(key: key);

  @override
  _StoreState createState() => _StoreState();
}

class _StoreState extends State<Store> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Store"),
        ),
        body: TabBarView(
          children: [
            AddData(),
            ViewData(),
          ],
        ),
        bottomNavigationBar: Container(
          color: Colors.pink,
          child: TabBar(
            indicatorColor: Colors.blue,
            labelColor: Colors.white,
            tabs: [
              Tab(
                text: "Add Data",
              ),
              Tab(
                text: "View Data",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
