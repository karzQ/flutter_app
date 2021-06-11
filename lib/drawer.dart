import 'package:flutter/material.dart';

class drawer extends StatefulWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  _drawerState createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width / 2,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Accueil'),
          Text('Profil'),
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Button')
          )
        ],
      ),
    );
  }
}
