import 'package:erp/componant/buttonApp.dart';
import 'package:erp/componant/colors.dart';
import 'package:flutter/material.dart';

class BottomSheetApp {
  ColorsApp colorsApp = new ColorsApp();
  choseLangoage(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 400,
            width: double.infinity,
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: SizedBox(),
                ),
                Container(
                  child: Text("Pick a Language",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                ),
                Expanded(
                  flex: 2,
                  child: SizedBox(),
                ),
                MaterialButton(
                  onPressed: () {},
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 0.5)),
                    child: Row(
                      children: [
                        Text(
                          "العربية",
                          style: TextStyle(fontSize: 17),
                        ),
                        Expanded(child: SizedBox()),
                        Container(
                          alignment: Alignment.center,
                          height: 11,
                          width: 11,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(width: 0.3)),
                          child: Container(
                            height: 6,
                            width: 6,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(width: 0.3)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(),
                ),
                MaterialButton(
                  onPressed: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 0.5)),
                    child: Row(
                      children: [
                        Text(
                          "English",
                          style: TextStyle(fontSize: 17),
                        ),
                        Expanded(child: SizedBox()),
                        Container(
                          alignment: Alignment.center,
                          height: 11,
                          width: 11,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(width: 0.3)),
                          child: Container(
                            height: 6,
                            width: 6,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(width: 0.3)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: SizedBox(),
                ),
                ButtonArrowApp(
                    icon: Icon(
                      Icons.arrow_forward,
                      color: colorsApp.colorWhaitApp,
                    ),
                    color: colorsApp.colorBlackApp,
                    func: () {}),
                Expanded(
                  flex: 2,
                  child: SizedBox(),
                ),
              ],
            ),
          );
        });
  }
}
