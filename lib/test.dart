import 'package:desgin/History/History.dart';
import 'package:desgin/analytics/analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import 'home/homescreen.dart';

class TestDrawer extends StatefulWidget {
  const TestDrawer({super.key});

  @override
  State<TestDrawer> createState() => _DrawerState();
}

class _DrawerState extends State<TestDrawer> {
  menuitem currentindex = menuitems.Home;
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      drawerShadowsBackgroundColor: Colors.black,
      menuScreenWidth: double.infinity,
      menuScreen: Builder(
        builder: (context) => HomeScreen(
            currentitem: currentindex,
            onselecteditem: (item) {
              setState(() {
                currentindex = item;

                ZoomDrawer.of(context)!.close();
                
              });
            }),
      ),
      mainScreen: getscreen(),
      mainScreenTapClose:true,
      duration: Duration(milliseconds:600 ),
      reverseDuration: Duration(milliseconds:600 ),
      
    );
  }

  Widget getscreen() {
    switch (currentindex) {
      case menuitems.Analytics:
        return Analytics();
      case menuitems.History:
        return HistoryScreen();

      default:
        return HistoryScreen();
    }
  }
}
