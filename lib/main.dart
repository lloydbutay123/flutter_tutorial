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
        child: Container(color: Colors.yellow, height: 100, width: 100),
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
        onPressed: () {},
        backgroundColor: Colors.purple,
        child: Icon(Icons.edit, color: Colors.white),
      ),
    );
  }
}
