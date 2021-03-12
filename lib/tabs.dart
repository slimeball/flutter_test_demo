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
  List pageList = [HomePage(), DungeonPage(), WeaponShop(), DungeonPage(), WeaponShop()];
  _swichTab(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: this.pageList[this._selectedIndex],
        bottomNavigationBar:
            BottomNavigationBar(items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
      BottomNavigationBarItem(icon: Icon(Icons.dangerous), label: 'Dungeon'),
      BottomNavigationBarItem(icon: Icon(Icons.post_add), label: 'Posts'),
      BottomNavigationBarItem(icon: Icon(Icons.dangerous), label: 'Friends'),
      BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings')
    ], type: BottomNavigationBarType.fixed, currentIndex: this._selectedIndex, onTap: this._swichTab));
  }
}
