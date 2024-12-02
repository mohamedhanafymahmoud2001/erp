import 'package:erp/componant/colors.dart';
import 'package:flutter/material.dart';

class Langoage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Langoage();
  }
}

class _Langoage extends State<Langoage> {
  ColorsApp colorsApp = new ColorsApp();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
              colorsApp.colorWhaitApp,
              colorsApp.colorWhaitApp,
              colorsApp.colorblouApp
            ])),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: SizedBox(),
            ),
            Container(
              width: 100,
              height: 100,
              child: Image.asset(
                "assets/images/logo.png",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: Text("ERP Solution",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
            ),
            Expanded(
              flex: 2,
              child: SizedBox(),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Text("Pick a Language",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
            ),
            Card(
              color: colorsApp.colorWhaitApp,
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: ListTile(
                title: Text("English"),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
