import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(theme: ThemeData(useMaterial3: true), home: const HomePage()),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var myText = "Change my Name";
  TextEditingController _nameController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome App"),
        backgroundColor: Colors.purple,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Card(
              child: Column(
                children: <Widget>[
                  Image.network(
                    "https://images.unsplash.com/photo-1639506523002-83d6fbfb72fe?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fGNvbXB1dGVyJTIwd2l0aCUyMHB1cnBsZXxlbnwwfHwwfHx8MA%3D%3D",
                  ),
                  SizedBox(height: 20),
                  Text(
                    myText,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter your name",
                        labelText: "Name",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("John Lloyd Butay"),
              accountEmail: Text("lloyd.butay@asianlink.ai"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://plus.unsplash.com/premium_photo-1738590017220-5820f49608cc?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Z3V5JTIwaWNvbnxlbnwwfHwwfHx8MA%3D%3D",
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('John Lloyd Butay'),
              subtitle: Text("Full stack Developer"),
              trailing: Icon(Icons.edit),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Email'),
              subtitle: Text("lloyd.butay@asianlink.ai"),
              trailing: Icon(Icons.edit),
              onTap: () {},
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _nameController.text;
          setState(() {});
        },
        backgroundColor: Colors.purple,
        child: Icon(Icons.send, color: Colors.white),
      ),
    );
  }
}
