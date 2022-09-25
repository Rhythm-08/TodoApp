import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/mybutton.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

 DialogBox({Key? key, required this.controller,required this.onSave, required this.onCancel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //get user input  23.18
            TextField(
              controller: controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Add a new Task"),
            ),
            //buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //save button
                MyButton(onPressed:onSave, text: "Save"),
                const SizedBox(
                  width: 4,
                ),
                //cancel button
                MyButton(onPressed: onCancel, text: "Cancel"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
