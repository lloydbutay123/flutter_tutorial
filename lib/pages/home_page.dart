import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/drawer.dart';
import 'package:flutter_application_2/pages/login_page.dart';
import 'package:flutter_application_2/utils/constants.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static const String routeName = "/home";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // var myText = "Change my Name";
  // TextEditingController _nameController = TextEditingController();

  var url = "https://jsonplaceholder.typicode.com/photos";
  var data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  fetchData() async {
    var res = await http.get(Uri.parse(url));
    data = jsonDecode(res.body);
    setState(() {});
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome App"),
        backgroundColor: Colors.purple,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        actions: [
          IconButton(
            onPressed: () {
              Constants.prefs.setBool("loggedIn", false);
              Navigator.pushReplacementNamed(context, LoginPage.routeName);
            },
            icon: Icon(Icons.exit_to_app),
          ),
        ],
      ),
      body:
          data == null
              ? const Center(
                child: CircularProgressIndicator(),
              ) // Show loading indicator
              : ListView.builder(
                itemCount:
                    data.length, // Access `length` only when `data` is not null
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(data[index]["title"]),
                    subtitle: Text("ID: ${data[index]["id"]}"),
                    leading: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        // Rounded corners // Optional border
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://images.unsplash.com/photo-1511367461989-f85a21fda167?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8bWFuJTIwaWNvbnxlbnwwfHwwfHx8MA%3D%3D",
                          ),
                          fit: BoxFit.cover, // Proper scaling
                        ),
                      ),
                    ),
                  );
                },
              ),

      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // myText = _nameController.text;
          // setState(() {});
        },
        backgroundColor: Colors.purple,
        child: Icon(Icons.send, color: Colors.white),
      ),
    );
  }
}
