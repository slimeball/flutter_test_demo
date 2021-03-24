import 'package:flutter/material.dart';
class WeaponShop extends StatefulWidget {
  WeaponShop({Key key}) : super(key: key);

  @override
  _WeaponShopState createState() => _WeaponShopState();
}

class _WeaponShopState extends State<WeaponShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:  Text('Home')
      ),
       body: Text('weapon shop'),
    );
  }
}