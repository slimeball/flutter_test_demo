// main structure include main page content topbar, bottom tabs
import 'package:flutter/material.dart';
import 'tabPage/home_page.dart';
import 'tabPage/dungen_page.dart';
import './subPage/weapon_shop.dart';

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _selectedIndex = 0;
  List pageList = [
    HomePage(),
    DungeonPage(),
    WeaponShop(),
    DungeonPage(),
    WeaponShop()
  ];
  _swichTab(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Town')),
      body: this.pageList[this._selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.dangerous), label: 'Dungeon'),
            BottomNavigationBarItem(icon: Icon(Icons.post_add), label: 'Posts'),
            BottomNavigationBarItem(
                icon: Icon(Icons.dangerous), label: 'Friends'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings')
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: this._selectedIndex,
          onTap: this._swichTab),
      drawer: Drawer(
        child: Column(children: <Widget>[
          DrawerHeader(child: Text('Role Status')),
          Row(children: <Widget>[
            Expanded(
              child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: Text(
                    'Level',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  )),
            ),
            Expanded(
              child: Text('31'),
            ),
          ])
        ]),
      ),
    );
  }
}
