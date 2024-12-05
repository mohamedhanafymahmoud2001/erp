import 'package:erp/componant/appBarApp.dart';
import 'package:erp/componant/colors.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Home();
    ;
  }
}

class _Home extends State<Home> {
  @override
  ColorsApp colorsApp = new ColorsApp();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarApp(),
      body: Column(
        children: [
          SizedBox(
            height: 6,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                    height: 40,
                    width: double.infinity,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, i) {
                          return MaterialButton(
                            padding: EdgeInsets.all(0),
                            onPressed: () {},
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 7),
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: i == 0
                                      ? colorsApp.colorOrangeApp
                                      : colorsApp.colorblouApp),
                              child: Text(
                                "بيانات المؤسسة",
                                style: TextStyle(
                                    color: colorsApp.colorWhaitApp,
                                    fontSize: 16),
                              ),
                            ),
                          );
                        })),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                alignment: Alignment.center,
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(width: 0.4)),
                child: IconButton(onPressed: () {}, icon: Icon(Icons.apps)),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: colorsApp.colorBlackApp),
            child: Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: colorsApp.colorYellowApp),
                  width: 100,
                  child: Text(
                    "كل الفروع",
                    style: TextStyle(
                      color: colorsApp.colorBlackApp,
                    ),
                  ),
                ),
                Container(
                  child: Text("الفرع : نجاح المحاسبة لتقنية المعلومات"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
