import 'package:erp/prov/prov.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DialogApp {
  choseLangouge(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return Consumer<Control>(builder: (context, val, child) {
            return AlertDialog(
                // title: Text(data),
                );
          });
        });
  }
}
