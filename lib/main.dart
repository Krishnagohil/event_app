import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Side Menu Bar',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(

        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Nidhi Pandya"),
              accountEmail: Text("nidhi.pandya@sakec.ac.in"),
              currentAccountPicture: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("images/nidhi.jpg"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text("Barcode"),
            ),
            ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text("Calendar"),
            ),
            ListTile(
              leading: Icon(Icons.assignment_turned_in),
              title: Text("Certificates"),
            ),
            ListTile(
              leading: Icon(Icons.subscriptions),
              title: Text("Subscriptions"),
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text("Wishlist"),
            ),
            SizedBox(
              height: 5,
              width: 230,
              child: Divider(
                color: Colors.black,
              ),
            ),
            ListTile(
              leading: Icon(Icons.color_lens),
              title: Text("Themes"),
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text("Help"),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("About"),
            ),
            SizedBox(
              height: 5,
              width: 230,
              child: Divider(
                color: Colors.black,
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("LOG OUT"),
            ),

          ],
        ),
      ),
    );
  }
}
//UserAccountsDrawerHeader(
//accountName: Text("Nidhi Pandya"),
//accountEmail: Text("nidhi.pandya@sakec.ac.in"),
//currentAccountPicture: CircleAvatar(
//radius: 30,
//backgroundImage: AssetImage("images/nidhi.jpg"),
//),
//),