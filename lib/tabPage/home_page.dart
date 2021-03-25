// main page
import 'package:flutter/material.dart';
import '../subPage/weapon_shop.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> _getButtonList() {
    List<Widget> _buttonList = [
      Stack(
        children: <Widget>[
          Container(
            child: Image(
              width: MediaQuery.of(context).size.width,
              image: NetworkImage('https://i.ytimg.com/vi/yrKLRI2GrJM/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLDP-XO0zaKUda59K908hY5VvUb06Q'),
            ),
          ),
          Positioned(
            right: 5.0,
            bottom: 5.0,
            child: Container(
              decoration: new BoxDecoration (
                borderRadius: new BorderRadius.all(new Radius.circular(2.0)),
                color: const Color(0xFF282828).withOpacity(0.8)
              ),
              padding: new EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
              child: Text("1:00:01",
                style: TextStyle(fontSize: 14, color: Colors.white)
              ),
            )
          ),
        ]
      ),
    ];
    return _buttonList;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Column(
          children: this._getButtonList(),
        ),
      ),
    );
  }
}
