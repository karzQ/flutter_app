import 'package:flutter/material.dart';
import 'package:menu_app/model/user.dart';
import 'package:menu_app/drawer.dart';

import '../selectedColor.dart' as colorChoice;

Widget scaffold(BuildContext context, User user, Widget body) {
  bool switchValue = false;
  return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          InkWell(
            onTap: () {
              switchValue = !switchValue;
            },
            child: Switch(
              value: switchValue,
              onChanged: (value) {
                switchValue = !switchValue;
                print(switchValue);
                if (value == true) {
                  print(colorChoice.test);
                  colorChoice.selectedColor = 0xFF1E7BC0;
                } else {
                  colorChoice.selectedColor = 0xFF581E74;
                }
              },
            ),
          ),
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            user.modifyUserProperties(context)));
              },
              icon: Icon(Icons.account_box)),
        ],
      ),
      drawer: drawer(),
      body: body);
}
