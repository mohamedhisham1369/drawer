import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class menuitem {
  final String title;
  final IconData icon;
  const menuitem(this.title, this.icon);
}

class menuitems {
  static const Home = menuitem("Home", Icons.home_filled);
  static const Station = menuitem("Station", Icons.local_gas_station_rounded);
  static const Booking = menuitem("Booking", Icons.calendar_month_outlined);
  static const Analytics = menuitem("Analytics", Icons.pie_chart);
  static const History = menuitem("History", Icons.access_time_filled_rounded);
  static const settings = menuitem("settings", Icons.settings);

  static var all = <menuitem>[
    Home,
    Station,
    Booking,
    Analytics,
    History,
    settings,
  ];
}

class HomeScreen extends StatelessWidget {
  const HomeScreen(
      {required this.currentitem, required this.onselecteditem, super.key});

  final menuitem currentitem;
  final ValueChanged<menuitem> onselecteditem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#2d2d2d"),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              child: Opacity(
                opacity: 0.1,
                child: Image.asset(
                  "images/newmap.png",
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: const Icon(
                            Icons.close,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        Row(
                          children: [
                            Text(
                              "power",
                              style: TextStyle(
                                color: HexColor("#5f52e9"),
                                fontSize: 25,
                              ),
                            ),
                            Text(
                              "hub",
                              style: TextStyle(
                                color: HexColor("#30ffff"),
                                fontSize: 25,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Container(
                          width:
                              50, // Set the width and height to twice the radius
                          height: 50,

                          child: ClipOval(
                            child: Image.network(
                              "https://as1.ftcdn.net/v2/jpg/02/22/10/62/1000_F_222106228_NP5f0gXi3JOCgmaTsEyg7RuyKgwDLGuY.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Ferra ",
                              style: TextStyle(
                                color: HexColor(
                                  "#f7f7f7",
                                ),
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              "Alexandra ",
                              style: TextStyle(
                                color: HexColor(
                                  "#f7f7f7",
                                ),
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),

                    ...menuitems.all.map(buildMenuItem).toList(),

                    // Row(
                    //   children: [
                    //     Icon(
                    //       Icons.home_filled,
                    //       color: HexColor("#30ffff"),
                    //       size: 30,
                    //     ),
                    //     const SizedBox(
                    //       width: 15,
                    //     ),
                    //     Text(
                    //       "Home ",
                    //       style: TextStyle(
                    //         fontSize: 16,
                    //         color: HexColor(
                    //           "#f7f7f7",
                    //         ),
                    //       ),
                    //     ),
                    //     const SizedBox(
                    //       width: 30,
                    //     ),
                    //     Container(
                    //         width: 10,
                    //         height: 10,
                    //         decoration: const BoxDecoration(
                    //             shape: BoxShape.circle, color: Colors.blue)),
                    //   ],
                    // ),
                    // const SizedBox(
                    //   height: 25,
                    // ),
                    // Row(
                    //   children: [
                    //     Icon(
                    //       Icons.local_gas_station_rounded,
                    //       color: HexColor("#929292"),
                    //       size: 30,
                    //     ),
                    //     const SizedBox(
                    //       width: 15,
                    //     ),
                    //     Text(
                    //       "Station   ",
                    //       style: TextStyle(
                    //         fontSize: 16,
                    //         color: HexColor(
                    //           "#8f8f8f",
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    // const SizedBox(
                    //   height: 25,
                    // ),
                    // Row(
                    //   children: [
                    //     Icon(
                    //       Icons.calendar_month_outlined,
                    //       color: HexColor("#929292"),
                    //       size: 30,
                    //     ),
                    //     const SizedBox(
                    //       width: 15,
                    //     ),
                    //     Text(
                    //       "Booking ",
                    //       style: TextStyle(
                    //         fontSize: 16,
                    //         color: HexColor(
                    //           "#8f8f8f",
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    // const SizedBox(
                    //   height: 25,
                    // ),
                    // GestureDetector(
                    //   onTap: () {
                    //     Navigator.of(context).pushReplacement(
                    //         MaterialPageRoute(builder: (ctx) => const Analytics()));
                    //   },
                    //   child: Row(
                    //     children: [
                    //       Icon(
                    //         Icons.pie_chart,
                    //         color: HexColor("#929292"),
                    //         size: 30,
                    //       ),
                    //       const SizedBox(
                    //         width: 15,
                    //       ),
                    //       Text(
                    //         "Analytics ",
                    //         style: TextStyle(
                    //           fontSize: 16,
                    //           color: HexColor(
                    //             "#8f8f8f",
                    //           ),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // const SizedBox(
                    //   height: 25,
                    // ),
                    // GestureDetector(
                    //   onTap: () {
                    //     Navigator.of(context).pushReplacement(MaterialPageRoute(
                    //         builder: (ctx) => const HistoryScreen()));
                    //   },
                    //   child: Row(
                    //     children: [
                    //       Icon(
                    //         Icons.access_time_filled_rounded,
                    //         color: HexColor("#929292"),
                    //         size: 30,
                    //       ),
                    //       const SizedBox(
                    //         width: 15,
                    //       ),
                    //       Text(
                    //         "History ",
                    //         style: TextStyle(
                    //           fontSize: 16,
                    //           color: HexColor(
                    //             "#8f8f8f",
                    //           ),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // const SizedBox(
                    //   height: 25,
                    // ),
                    // Row(
                    //   children: [
                    //     Icon(
                    //       Icons.settings,
                    //       color: HexColor("#929292"),
                    //       size: 30,
                    //     ),
                    //     const SizedBox(
                    //       width: 15,
                    //     ),
                    //     Text(
                    //       "Settings",
                    //       style: TextStyle(
                    //         fontSize: 16,
                    //         color: HexColor(
                    //           "#8f8f8f",
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // ),

                    const Spacer(),
                    Row(
                      children: [
                        Icon(
                          Icons.logout_outlined,
                          color: HexColor("#929292"),
                          size: 30,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Log out",
                          style: TextStyle(
                            fontSize: 16,
                            color: HexColor(
                              "#8f8f8f",
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem(menuitem item) => ListTileTheme(
        selectedColor: Colors.white,
        child: ListTile(
          selected: currentitem == item,
          selectedColor: Colors.black26,
          minLeadingWidth: 20,
          leading: Icon(
            item.icon,
            color: HexColor("#929292"),
            size: 30,
          ),
          title: Text(
            item.title,
            style: TextStyle(
              fontSize: 16,
              color: HexColor(
                "#8f8f8f",
              ),
            ),
          ),
          onTap: () => onselecteditem(item),
        ),
      );
}
