// main structure include main page content topbar, bottom tabs
import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
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
    bool _pinned = false;
  bool _snap = false;
  bool _floating = false;
  List pageList = [
    HomePage(),
    DungeonPage(),
    WeaponShop(),
    DungeonPage(),
    WeaponShop()
  ];
  // final String assetName = 'assets/logo.svg';
  _swichTab(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: false,
      //   brightness: Brightness.dark,
      //   title: Text(
      //     'MeToBe',
      //     style: TextStyle(fontSize: 26),
      //   ),
      //   leading: Padding(
      //     padding: const EdgeInsets.only(left: 12.0),
      //     // child: Container(
      //     //   child: SvgPicture.asset(
      //     //     assetName,
      //     //   ),
      //     // )
      //     child: Image(image: AssetImage('assets/logo.png')),
      //   ),
      //   actions: <Widget>[
      //     IconButton(
      //       icon: const Icon(Icons.cast),
      //       tooltip: 'Show Snackbar',
      //       onPressed: () {
      //         ScaffoldMessenger.of(context).showSnackBar(
      //             const SnackBar(content: Text('This is a snackbar')));
      //       },
      //     ),
      //     IconButton(
      //       icon: const Icon(Icons.notifications_none),
      //       tooltip: 'Show Snackbar',
      //       onPressed: () {
      //         ScaffoldMessenger.of(context).showSnackBar(
      //             const SnackBar(content: Text('This is a snackbar')));
      //       },
      //     ),
      //     IconButton(
      //       icon: const Icon(Icons.search),
      //       tooltip: 'Show Snackbar',
      //       onPressed: () {
      //         ScaffoldMessenger.of(context).showSnackBar(
      //             const SnackBar(content: Text('This is a snackbar')));
      //       },
      //     ),
      //     IconButton(
      //       icon: const Icon(Icons.person_outline),
      //       tooltip: 'Show Snackbar',
      //       onPressed: () {
      //         ScaffoldMessenger.of(context).showSnackBar(
      //             const SnackBar(content: Text('This is a snackbar')));
      //       },
      //     ),
      //   ]
      // ),
      // body: this.pageList[this._selectedIndex],
      body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: _pinned,
              snap: _snap,
              floating: _floating,
              expandedHeight: 96.0,
              centerTitle: false,
              brightness: Brightness.dark,
              title: Text(
                'MeToBe',
                style: TextStyle(fontSize: 26),
              ),
              leading: Padding(
                padding: const EdgeInsets.only(left: 12.0),
                // child: Container(
                //   child: SvgPicture.asset(
                //     assetName,
                //   ),
                // )
                child: Image(image: AssetImage('assets/logo.png')),
              ),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.cast),
                  tooltip: 'Show Snackbar',
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('This is a snackbar')));
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.notifications_none),
                  tooltip: 'Show Snackbar',
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('This is a snackbar')));
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.search),
                  tooltip: 'Show Snackbar',
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('This is a snackbar')));
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.person_outline),
                  tooltip: 'Show Snackbar',
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('This is a snackbar')));
                  },
                ),
              ],
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(0.0),
                child: Container(
                  height: 48,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: <Widget>[
                      Container(
                        child: OutlinedButton(
                          onPressed: () {
                            // Respond to button press
                          },
                          child: Text("Corps Base"),
                        )
                      ),
                      Container(
                        child: OutlinedButton(
                          onPressed: () {
                            // Respond to button press
                          },
                          child: Text("Corps Base1"),
                        )
                      ),
                      Container(
                        child: OutlinedButton(
                          onPressed: () {
                            // Respond to button press
                          },
                          child: Text("Corps Base2"),
                        )
                      ),
                      Container(
                        child: OutlinedButton(
                          onPressed: () {
                            // Respond to button press
                          },
                          child: Text("Corps Base3"),
                        )
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: this.pageList[this._selectedIndex],
              ),
            ),
          ],
        ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFF282828),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.60),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.explore_outlined), label: 'Explore'),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.subscriptions_outlined), label: 'Subscriptions'),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_library_outlined), label: 'Library')
        ],
        currentIndex: this._selectedIndex,
        onTap: this._swichTab
      ),
    );
  }

  fontWeight(FontWeight bold) {}
}

class Cotainer {}
