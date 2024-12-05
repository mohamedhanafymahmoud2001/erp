import 'package:erp/componant/colors.dart';
import 'package:flutter/material.dart';

class AppBarApp extends StatelessWidget implements PreferredSizeWidget {
  ColorsApp colorsApp = new ColorsApp();
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Image.asset(
        "assets/images/logo.png",
        fit: BoxFit.cover,
      ),
      actions: [
        Container(
          alignment: Alignment.center,
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(width: 0.4)),
          child: TextButton(onPressed: () {}, child: Text("AR")),
        ),
        SizedBox(
          width: 5,
        ),
        Container(
          alignment: Alignment.center,
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: colorsApp.colorBluedakenApp,
              borderRadius: BorderRadius.circular(100),
              border: Border.all(width: 0.4)),
          child: TextButton(
              onPressed: () {},
              child: Text(
                "AR",
                style: TextStyle(color: colorsApp.colorWhaitApp),
              )),
        ),
        SizedBox(
          width: 5,
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
