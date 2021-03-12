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
      Container(
          child: OutlinedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) {
            return WeaponShop();
          }));
        },
        child: Text("Weapon Shop"),
      )),
      Container(
          child: OutlinedButton(
        onPressed: () {
          // Respond to button press
        },
        child: Text("Potion Shop"),
      )),
      Container(
          child: OutlinedButton(
        onPressed: () {
          // Respond to button press
        },
        child: Text("Magic Shop"),
      )),
      Container(
          child: OutlinedButton(
        onPressed: () {
          // Respond to button press
        },
        child: Text("Corps Base"),
      )),
    ];
    return _buttonList;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(title: Text('Town')),
        body: GridView.count(
          crossAxisCount: 2,
          children: this._getButtonList(),
        ),
      ),
    );
  }
}
