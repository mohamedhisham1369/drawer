// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:hexcolor/hexcolor.dart';

import '../Widgets/myTextformfeild.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("History"),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            // Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=> HomeScreen()));
            ZoomDrawer.of(context)!.toggle();
            
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 20),
          child: Column(
            children: [
              DefaultFormField(
                type: TextInputType.text,
                validation: (value) {
                  return null;
                },
                label: 'Search Transcations',
                prefixIcon: Icons.search,
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "August",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // Dismissible(
              //   key: UniqueKey(),
              //   background: Container(
              //     alignment: Alignment.centerRight,
              //     padding: const EdgeInsets.only(left: 16.0),
              //     child: CircleAvatar(
              //       backgroundColor: HexColor("#302c20"),
              //       child: Icon(
              //         Icons.delete,
              //         color: HexColor("#eb9548"),
              //       ),
              //     ),
              //   ),
              //   child: Container(
              //     height: 120,
              //     decoration: BoxDecoration(
              //       color: HexColor("#212121"),
              //       borderRadius: BorderRadius.circular(16),
              //     ),
              //     child: Row(
              //       children: [
              //         Container(
              //           decoration: BoxDecoration(
              //             color: HexColor("#212121"),
              //             borderRadius: BorderRadius.circular(16),
              //             border: Border.all(
              //               color: HexColor("#2e2e2e"), // Color of the frame
              //               width: 2.0, // Width of the frame
              //             ),
              //           ),
              //           margin: const EdgeInsets.only(
              //             left: 15,
              //             top: 20,
              //             bottom: 20,
              //           ),
              //           width: 80,
              //           height: 130,
              //           child: Column(
              //             crossAxisAlignment: CrossAxisAlignment.center,
              //             mainAxisAlignment: MainAxisAlignment.center,
              //             children: [
              //               const Text(
              //                 "18",
              //                 style: TextStyle(
              //                   color: Colors.white,
              //                   fontSize: 30,
              //                 ),
              //                 textAlign: TextAlign.center,
              //               ),
              //               Text(
              //                 "wed",
              //                 style: TextStyle(
              //                   color: Colors.white.withOpacity(0.5),
              //                   fontSize: 20,
              //                 ),
              //                 textAlign: TextAlign.center,
              //               )
              //             ],
              //           ),
              //         ),
              //         const SizedBox(
              //           width: 10,
              //         ),
              //         Expanded(
              //           child: Column(
              //             mainAxisAlignment: MainAxisAlignment.center,
              //             children: [
              //               Row(
              //                 children: [
              //                   Image.asset(
              //                     "images/car.png",
              //                     color: Colors.blue,
              //                     width: 40,
              //                     height: 40,
              //                   ),
              //                   const SizedBox(
              //                     width: 5,
              //                   ),
              //                   Expanded(
              //                     child: Column(
              //                       crossAxisAlignment:
              //                           CrossAxisAlignment.start,
              //                       children: [
              //                         Text(
              //                           "charger station",
              //                           style: TextStyle(
              //                               color: HexColor("#4f4f4f"),
              //                               fontSize: 16),
              //                           textAlign: TextAlign.center,
              //                         ),
              //                         Text(
              //                           "Tesla station,Maryna gate",
              //                           maxLines: 1,
              //                           style: TextStyle(
              //                             color: HexColor("#bbbbbb"),
              //                             fontSize: 16,
              //                             overflow: TextOverflow.ellipsis,
              //                           ),
              //                           overflow: TextOverflow.ellipsis,
              //                           textAlign: TextAlign.center,
              //                         ),
              //                       ],
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //               Row(
              //                 children: [
              //                   Column(
              //                     crossAxisAlignment: CrossAxisAlignment.start,
              //                     children: [
              //                       Text(
              //                         "Time",
              //                         style: TextStyle(
              //                             color: HexColor("#454545"),
              //                             fontSize: 16),
              //                         textAlign: TextAlign.center,
              //                       ),
              //                       const Text(
              //                         "19.00pm",
              //                         style: TextStyle(
              //                             color: Colors.white, fontSize: 16),
              //                         textAlign: TextAlign.center,
              //                       ),
              //                     ],
              //                   ),
              //                   const SizedBox(
              //                     width: 12,
              //                   ),
              //                   Column(
              //                     crossAxisAlignment: CrossAxisAlignment.start,
              //                     children: [
              //                       Text(
              //                         "cost",
              //                         style: TextStyle(
              //                             color: HexColor("#454545"),
              //                             fontSize: 16),
              //                         textAlign: TextAlign.center,
              //                       ),
              //                       const Text(
              //                         "€27.5",
              //                         style: TextStyle(
              //                             color: Colors.white, fontSize: 16),
              //                         textAlign: TextAlign.center,
              //                       ),
              //                     ],
              //                   ),
              //                   const SizedBox(
              //                     width: 12,
              //                   ),
              //                   Column(
              //                     crossAxisAlignment: CrossAxisAlignment.start,
              //                     children: [
              //                       Text(
              //                         "power",
              //                         style: TextStyle(
              //                             color: HexColor("#454545"),
              //                             fontSize: 16),
              //                         textAlign: TextAlign.center,
              //                       ),
              //                       const Text(
              //                         "40km",
              //                         style: TextStyle(
              //                             color: Colors.white, fontSize: 16),
              //                         textAlign: TextAlign.center,
              //                       ),
              //                     ],
              //                   ),
              //                 ],
              //               ),
              //             ],
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
             
              Dismissible(
                key: UniqueKey(),
                background: Container(
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.only(left: 16.0),
                  child: CircleAvatar(
                    backgroundColor: HexColor("#302c20"),
                    child: Icon(
                      Icons.delete,
                      color: HexColor("#eb9548"),
                    ),
                  ),
                ),
            
                child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                    color: HexColor("#212121"),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: HexColor("#212121"),
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: HexColor("#2e2e2e"), // Color of the frame
                            width: 2.0, // Width of the frame
                          ),
                        ),
                        margin: const EdgeInsets.only(
                          left: 15,
                          top: 20,
                          bottom: 20,
                        ),
                        width: 80,
                        height: 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "20",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "wed",
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                                fontSize: 19,
                              ),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "images/car.png",
                                  color: Colors.blue,
                                  width: 40,
                                  height: 30,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "charger station",
                                        style: TextStyle(
                                            color: HexColor("#4f4f4f"),
                                            fontSize: 16),
                                        textAlign: TextAlign.center,
                                      ),
                                      Text(
                                        "Tesla station,Maryna gate",
                                        maxLines: 1,
                                        style: TextStyle(
                                          color: HexColor("#bbbbbb"),
                                          fontSize: 16,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Time",
                                      style: TextStyle(
                                          color: HexColor("#454545"),
                                          fontSize: 16),
                                      textAlign: TextAlign.center,
                                    ),
                                    const Text(
                                      "19.00pm",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "cost",
                                      style: TextStyle(
                                          color: HexColor("#454545"),
                                          fontSize: 16),
                                      textAlign: TextAlign.center,
                                    ),
                                    const Text(
                                      "€27.5",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "power",
                                      style: TextStyle(
                                          color: HexColor("#454545"),
                                          fontSize: 16),
                                      textAlign: TextAlign.center,
                                    ),
                                    const Text(
                                      "40km",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            
              const SizedBox(
                height: 20,
              ),
              // Dismissible(
              //   key: UniqueKey(),
              //   background: Container(
              //     alignment: Alignment.centerRight,
              //     padding: const EdgeInsets.only(left: 16.0),
              //     child: CircleAvatar(
              //       backgroundColor: HexColor("#302c20"),
              //       child: Icon(
              //         Icons.delete,
              //         color: HexColor("#eb9548"),
              //       ),
              //     ),
              //   ),
              //   child: Container(
              //     height: 130,
              //     decoration: BoxDecoration(
              //       color: HexColor("#212121"),
              //       borderRadius: BorderRadius.circular(16),
              //     ),
              //     child: Row(
              //       children: [
              //         Container(
              //           decoration: BoxDecoration(
              //             color: HexColor("#212121"),
              //             borderRadius: BorderRadius.circular(16),
              //             border: Border.all(
              //               color: HexColor("#2e2e2e"), // Color of the frame
              //               width: 2.0, // Width of the frame
              //             ),
              //           ),
              //           margin: const EdgeInsets.only(
              //             left: 15,
              //             top: 20,
              //             bottom: 20,
              //           ),
              //           width: 80,
              //           height: 130,
              //           child: Column(
              //             crossAxisAlignment: CrossAxisAlignment.center,
              //             mainAxisAlignment: MainAxisAlignment.center,
              //             children: [
              //               const Text(
              //                 "18",
              //                 style: TextStyle(
              //                   color: Colors.white,
              //                   fontSize: 30,
              //                 ),
              //                 textAlign: TextAlign.center,
              //               ),
              //               Text(
              //                 "wed",
              //                 style: TextStyle(
              //                   color: Colors.white.withOpacity(0.5),
              //                   fontSize: 20,
              //                 ),
              //                 textAlign: TextAlign.center,
              //               )
              //             ],
              //           ),
              //         ),
              //         const SizedBox(
              //           width: 10,
              //         ),
              //         Expanded(
              //           child: Column(
              //             mainAxisAlignment: MainAxisAlignment.center,
              //             children: [
              //               Row(
              //                 children: [
              //                   Image.asset(
              //                     "images/car.png",
              //                     color: Colors.blue,
              //                     width: 40,
              //                     height: 40,
              //                   ),
              //                   const SizedBox(
              //                     width: 5,
              //                   ),
              //                   Expanded(
              //                     child: Column(
              //                       crossAxisAlignment:
              //                           CrossAxisAlignment.start,
              //                       children: [
              //                         Text(
              //                           "charger station",
              //                           style: TextStyle(
              //                               color: HexColor("#393939"),
              //                               fontSize: 16),
              //                           textAlign: TextAlign.center,
              //                         ),
              //                         Text(
              //                           "Tesla station,Maryna gate",
              //                           maxLines: 1,
              //                           style: TextStyle(
              //                             color: HexColor("#bbbbbb"),
              //                             fontSize: 16,
              //                             overflow: TextOverflow.ellipsis,
              //                           ),
              //                           overflow: TextOverflow.ellipsis,
              //                           textAlign: TextAlign.center,
              //                         ),
              //                       ],
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //               Row(
              //                 children: [
              //                   Column(
              //                     crossAxisAlignment: CrossAxisAlignment.start,
              //                     children: [
              //                       Text(
              //                         "Time",
              //                         style: TextStyle(
              //                             color: HexColor("#7e7e7e"),
              //                             fontSize: 16),
              //                         textAlign: TextAlign.center,
              //                       ),
              //                       const Text(
              //                         "19.00pm",
              //                         style: TextStyle(
              //                             color: Colors.white, fontSize: 16),
              //                         textAlign: TextAlign.center,
              //                       ),
              //                     ],
              //                   ),
              //                   const SizedBox(
              //                     width: 12,
              //                   ),
              //                   Column(
              //                     crossAxisAlignment: CrossAxisAlignment.start,
              //                     children: [
              //                       Text(
              //                         "cost",
              //                         style: TextStyle(
              //                             color: HexColor("#7e7e7e"),
              //                             fontSize: 16),
              //                         textAlign: TextAlign.center,
              //                       ),
              //                       const Text(
              //                         "€27.5",
              //                         style: TextStyle(
              //                             color: Colors.white, fontSize: 16),
              //                         textAlign: TextAlign.center,
              //                       ),
              //                     ],
              //                   ),
              //                   const SizedBox(
              //                     width: 12,
              //                   ),
              //                   Column(
              //                     crossAxisAlignment: CrossAxisAlignment.start,
              //                     children: [
              //                       Text(
              //                         "power",
              //                         style: TextStyle(
              //                             color: HexColor("#7e7e7e"),
              //                             fontSize: 16),
              //                         textAlign: TextAlign.center,
              //                       ),
              //                       const Text(
              //                         "40km",
              //                         style: TextStyle(
              //                             color: Colors.white, fontSize: 16),
              //                         textAlign: TextAlign.center,
              //                       ),
              //                     ],
              //                   ),
              //                 ],
              //               ),
              //             ],
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
           
     Dismissible(
                key: UniqueKey(),
                background: Container(
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.only(left: 16.0),
                  child: CircleAvatar(
                    backgroundColor: HexColor("#302c20"),
                    child: Icon(
                      Icons.delete,
                      color: HexColor("#eb9548"),
                    ),
                  ),
                ),
                child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                    color: HexColor("#212121"),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: HexColor("#212121"),
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: HexColor("#2e2e2e"), // Color of the frame
                            width: 2.0, // Width of the frame
                          ),
                        ),
                        margin: const EdgeInsets.only(
                          left: 15,
                          top: 20,
                          bottom: 20,
                        ),
                        width: 80,
                        height: 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "20",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "wed",
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                                fontSize: 19,
                              ),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "images/car.png",
                                  color: Colors.blue,
                                  width: 40,
                                  height: 30,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "charger station",
                                        style: TextStyle(
                                            color: HexColor("#4f4f4f"),
                                            fontSize: 16),
                                        textAlign: TextAlign.center,
                                      ),
                                      Text(
                                        "Tesla station,Maryna gate",
                                        maxLines: 1,
                                        style: TextStyle(
                                          color: HexColor("#bbbbbb"),
                                          fontSize: 16,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Time",
                                      style: TextStyle(
                                          color: HexColor("#454545"),
                                          fontSize: 16),
                                      textAlign: TextAlign.center,
                                    ),
                                    const Text(
                                      "19.00pm",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "cost",
                                      style: TextStyle(
                                          color: HexColor("#454545"),
                                          fontSize: 16),
                                      textAlign: TextAlign.center,
                                    ),
                                    const Text(
                                      "€27.5",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "power",
                                      style: TextStyle(
                                          color: HexColor("#454545"),
                                          fontSize: 16),
                                      textAlign: TextAlign.center,
                                    ),
                                    const Text(
                                      "40km",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            
              const Padding(
                padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "July",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
             
                  Dismissible(
                key: UniqueKey(),
                background: Container(
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.only(left: 16.0),
                  child: CircleAvatar(
                    backgroundColor: HexColor("#302c20"),
                    child: Icon(
                      Icons.delete,
                      color: HexColor("#eb9548"),
                    ),
                  ),
                ),
                child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                    color: HexColor("#212121"),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: HexColor("#212121"),
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: HexColor("#2e2e2e"), // Color of the frame
                            width: 2.0, // Width of the frame
                          ),
                        ),
                        margin: const EdgeInsets.only(
                          left: 15,
                          top: 20,
                          bottom: 20,
                        ),
                        width: 80,
                        height: 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "20",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "wed",
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                                fontSize: 19,
                              ),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "images/car.png",
                                  color: Colors.blue,
                                  width: 40,
                                  height: 30,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "charger station",
                                        style: TextStyle(
                                            color: HexColor("#4f4f4f"),
                                            fontSize: 16),
                                        textAlign: TextAlign.center,
                                      ),
                                      Text(
                                        "Tesla station,Maryna gate",
                                        maxLines: 1,
                                        style: TextStyle(
                                          color: HexColor("#bbbbbb"),
                                          fontSize: 16,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Time",
                                      style: TextStyle(
                                          color: HexColor("#454545"),
                                          fontSize: 16),
                                      textAlign: TextAlign.center,
                                    ),
                                    const Text(
                                      "19.00pm",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "cost",
                                      style: TextStyle(
                                          color: HexColor("#454545"),
                                          fontSize: 16),
                                      textAlign: TextAlign.center,
                                    ),
                                    const Text(
                                      "€27.5",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "power",
                                      style: TextStyle(
                                          color: HexColor("#454545"),
                                          fontSize: 16),
                                      textAlign: TextAlign.center,
                                    ),
                                    const Text(
                                      "40km",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            
               ],
          ),
        ),
      ),
    );
  }
}
