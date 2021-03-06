import 'package:flutter/material.dart';
import 'package:storehelper/cartpage.dart';
import 'package:storehelper/user.dart';
import 'package:storehelper/mainscreen.dart';

import 'firstscreen.dart';
import 'secondscreen.dart';


class MyDrawer extends StatefulWidget {
  final User user;

  const MyDrawer({Key key, this.user}) : super(key: key);
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        UserAccountsDrawerHeader(
          accountEmail: Text(widget.user.email),
          currentAccountPicture: CircleAvatar(
            backgroundImage: AssetImage(
              "assets/images/camera.png",
            ),
          ),
          accountName: Text(widget.user.name),
        ),
        ListTile(
            title: Text("Dashboard"),
            onTap: () {
              Navigator.pop(context);
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (content) => MainScreen(
                            user: widget.user,
                          )));
            }),
        ListTile(
            title: Text("TouringGram"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.pop(context);

              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (content) => TouringGramScreen(
                            user: widget.user,curtab: 0,
                          )));
            }),
        ListTile(
            title: Text("Preloved"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.pop(context);

              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (content) => PrelovedScreen(
                            user: widget.user,curtab: 0,
                          )));
            }),
        ListTile(
            title: Text("My Tour"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (content) => CartPage(
                            user: widget.user,curtab: 0,
                          )));
            }),
        ListTile(
            title: Text("Messaging"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.pop(context);
            }),
        ListTile(
            title: Text("My Profile"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.pop(context);
            }),
        ListTile(
            title: Text("Logout"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.pop(context);
            })
      ],
    ));
  }
}