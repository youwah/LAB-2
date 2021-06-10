import 'package:flutter/material.dart';
import 'package:storehelper/user.dart';
 
void main() => runApp(PrelovedScreen());
 
class PrelovedScreen extends StatefulWidget {
   final User user;
  final int curtab;
  const PrelovedScreen({Key key, this.user, this.curtab}) : super(key: key);
  @override

  _PrelovedScreenState createState() => _PrelovedScreenState();
}

class _PrelovedScreenState extends State<PrelovedScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}