import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:hexcolor/hexcolor.dart';

class Analytics extends StatelessWidget {
  const Analytics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Analytics"),
        leading: IconButton(
          onPressed: () {
            ZoomDrawer.of(context)!.toggle();
          },
          icon: const Icon(Icons.menu_outlined),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Opacity(
              opacity: 0.7,
              child: Image.asset(
                "images/OIP (1).png",
                fit: BoxFit.cover,
                width: double.infinity,
                 height: 200,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: const Text(
                      "Tesla Model S",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 8, top: 8, right: 8, bottom: 5),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: HexColor("#2d2d2d"),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        margin: const EdgeInsets.only(
                          left: 10,
                          bottom: 20,
                        ),
                        width: 100,
                        height: 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Avg trip",
                              style: TextStyle(
                                  color: HexColor("#5a5a5a"), fontSize: 15),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "70 km",
                              style: TextStyle(
                                  color: HexColor("#f4f4f4"), fontSize: 18),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: HexColor("#2d2d2d"),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        margin: const EdgeInsets.only(
                          left: 10,
                          bottom: 20,
                        ),
                        width: 100,
                        height: 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Spend",
                              style: TextStyle(
                                  color: HexColor("#5a5a5a"), fontSize: 15),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "€250",
                              style: TextStyle(
                                  color: HexColor("#f4f4f4"), fontSize: 18),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: HexColor("#2d2d2d"),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    margin: const EdgeInsets.only(
                      left: 10,
                      bottom: 20,
                    ),
                    width: 200,
                    height: 220,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15.0, left: 15, right: 8),
                          child: Text(
                            "Avg.consuming",
                            style: TextStyle(
                                color: HexColor("#5a5a5a"), fontSize: 15),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15.0, left: 15, right: 8),
                          child: Text(
                            "70 km",
                            style: TextStyle(
                                color: HexColor("#f4f4f4"), fontSize: 18),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Expanded(
                          child: Image.asset(
                            "images/chart.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: const Text(
                      "Stats",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Center(
              child: Container(
                width: 320,
                height: 200,
                decoration: BoxDecoration(
                  color: HexColor("#2d2d2d"),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        for (int i = 15; i <= 21; i++)
                          Column(
                            children: [
                              Container(
                                width: 20,
                                height: 100,
                                color: Colors.blue,
                              ),
                              Container(
                                width: 30,
                                height: 2, // Height of the line
                                color: Colors.black,
                              ),
                              Text('$i',
                                  style: const TextStyle(
                                      fontSize: 12, color: Colors.white)),
                            ],
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
