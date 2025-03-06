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
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          alignment: Alignment.center,
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.purple,
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(colors: [Colors.purple, Colors.pink]),
            boxShadow: [BoxShadow(color: Colors.purple, blurRadius: 5)],
          ),
          child: Text(
            "I am a box",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
