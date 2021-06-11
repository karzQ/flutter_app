import 'package:flutter/material.dart';

class messenger extends StatefulWidget {
  const messenger({Key? key}) : super(key: key);

  @override
  _messengerState createState() => _messengerState();
}

class _messengerState extends State<messenger> {
  var messengerList = ["Hello", "I'm Gunther"];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 268,
      width: MediaQuery.of(context).size.width,
      color: Colors.grey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              child: Column(children: [for (var i in messengerList) Text(i)])),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              width: MediaQuery.of(context).size.width - 20,
              height: 45,
              child: TextField(
                  onSubmitted: (String value) {
                    setState(() {
                      messengerList.insert(messengerList.length, value);
                    });
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Type your message',
                  )),
            ),
          ]),
        ],
      ),
    );
  }
}
