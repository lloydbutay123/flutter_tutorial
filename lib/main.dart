import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyWidget()));
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome App"),
        backgroundColor: Colors.purple,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
      ),
      body: Container(
        color: Colors.purple,
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              width: 100,
              height: 100,
              color: Colors.yellow,
            ),
            Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
            Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              width: 100,
              height: 100,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
