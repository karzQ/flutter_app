import 'package:flutter/material.dart';
import 'package:menu_app/widgets/scaffold.dart';

class User {
  String firstname = '';
  String lastname = '';
  int age = 0;
  String urlPhoto = '';

  User(String fn, String ln, int age, String uP) {
    this.firstname = fn;
    this.lastname = ln;
    this.age = age;
    this.urlPhoto = uP;
  }

  void saveUserProperties(String fn, String ln, int age, String uP) {
    print(age);
    this.firstname = fn;
    this.lastname = ln;
    this.age = age;
    this.urlPhoto = uP;
  }

  Widget modifyUserProperties(BuildContext context) {
    final fnEdit = TextEditingController();
    final lnEdit = TextEditingController();
    final ageEdit = TextEditingController();
    String newUrl = "";

    return scaffold(
        context,
        this,
        Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image:
                          DecorationImage(image: NetworkImage(this.urlPhoto))),
                ),
                TextButton(onPressed: () {}, child: Text("Upload image")),
                TextField(
                  controller: fnEdit,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: "Firstname"),
                ),
                TextField(
                  controller: lnEdit,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: "Lastname"),
                ),
                TextField(
                  controller: ageEdit,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: "Age"),
                ),
                RaisedButton(
                  onPressed: () {
                    saveUserProperties(fnEdit.toString(), lnEdit.toString(),
                        int.parse(ageEdit.text), newUrl);
                  },
                  child: Text("Save"),
                )
              ],
            )));
  }
}
