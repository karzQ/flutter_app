import "package:flutter/material.dart";
import 'package:menu_app/messenger.dart';
import 'package:menu_app/widgets/scaffold.dart';
import 'model/user.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key, Color color = Colors.lightBlue}) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  User user = User("Toto", "Pepito", 16,
      "https://cdn.discordapp.com/attachments/249629658016907266/841820116043825162/unknown.png");

  Widget build(BuildContext context) {
    return scaffold(
      context,
      user,
      Center(
        child: Column(
          children: [
            // Photo
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://rocknfolk-cdn.respawn.fr/wp-content/uploads/2020/10/ACDC-Highway-to-Hell.jpg"))),
            ),
            // Description
            Text("AC/DC"),
            TextButton(
                onPressed: () {
                  displayPopup();
                },
                child: Text('Afficher popup')),
            Container(
              child: messenger(),
            )
          ],
        ),
      ),
    );
  }

  // Function

  Future displayPopup() {
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext cont) {
          return AlertDialog(
              title: Text("Test"),
              content: Text('Content'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Valider'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Fermer'),
                )
              ]);
        });
  }

  // Utiliser un switch
  void changeAppBarColor() {}

  void modifyUserProperties() {}
}
