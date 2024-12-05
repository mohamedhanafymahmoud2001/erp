import 'package:erp/componant/colors.dart';
import 'package:flutter/material.dart';

class ButtonArrowApp extends StatelessWidget {
  ButtonArrowApp(
      {super.key, required this.icon, required this.color, required this.func});
  final Widget icon;
  final Color color;
  final VoidCallback func;
  ColorsApp colorApp = new ColorsApp();
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: func,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 60,
              width: 60,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              decoration: BoxDecoration(
                  color: colorApp.colorWhaitApp.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: color, width: 1)),
            ),
            Container(
              alignment: Alignment.center,
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(100),
              ),
              child: icon,
            ),
          ],
        ));
  }
}
