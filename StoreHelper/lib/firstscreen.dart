import 'package:flutter/material.dart';
import 'package:storehelper/user.dart';
 
void main() => runApp(TouringGramScreen());
 
class TouringGramScreen extends StatefulWidget {
    final User user;
  final int curtab;
  const TouringGramScreen({Key key, this.user, this.curtab}) : super(key: key);
  @override
  _TouringGramScreenState createState() => _TouringGramScreenState();
}

class _TouringGramScreenState extends State<TouringGramScreen> {
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