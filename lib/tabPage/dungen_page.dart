import 'package:flutter/material.dart';
class DungeonPage extends StatelessWidget {
  const DungeonPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:  Text('Home')
        ),
        body: Text('dungeon page'),
      );
  }
}