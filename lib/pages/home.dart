import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  Drawer buildDrawer(BuildContext context) {
    var header = DrawerHeader(
      child: Text("Header"),
    );
    var about = AboutListTile(
      child: Text("About Screen"),
      applicationName: "Hero and Drawer Example",
      applicationVersion: "V0.1.0",
      applicationIcon: Icon(Icons.hourglass_empty),
      icon: Icon(Icons.info),
    );

    ListTile buildNavItem(var icon, String label, String route) {
      return ListTile(
        leading: Icon(icon),
        title: Text(label),
        onTap: () {
          setState(() {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed(route);
          });
        },
      );
    }

    var navList = [
      header,
      buildNavItem(Icons.home, "Home", "/"),
      buildNavItem(Icons.settings, "Settings", "/settings"),
      buildNavItem(Icons.account_balance_wallet, "Account", "/account"),
      about
    ];

    ListView listView = ListView(children: navList);

    return Drawer(child: listView);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Drawer App'),
      ),
      body: Container(
        child: Center(
          child: Hero(
            tag: 'kangaroo',
            child: Image.asset('images/kangaroo.jpg'),
          ),
        ),
      ),
      drawer: buildDrawer(context),
    );
  }
}
