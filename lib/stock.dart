// import 'dart:html';

import 'package:flutter/material.dart';

class Aminu extends StatefulWidget {
  const Aminu({Key? key}) : super(key: key);

  @override
  _AminuState createState() => _AminuState();
}

class _AminuState extends State<Aminu> {
  @override
  Widget build(BuildContext context) {
    // return Column(
    //   children: [
    //     Container(
    //       child: Text("Wahab Ibraheem Iyanda",
    //           style: TextStyle(color: Colors.red)),
    //     ),
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          child: Stack(
              fit: StackFit.passthrough,
              // ignore: deprecated_member_use
              overflow: Overflow.visible,
              children: <Widget>[
            Positioned(
                top: 30,
                right: 10,
                left: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Account Dashboard",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "125/18/1/0043",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "Wahab Ibraheem Iyanda",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                      ),
                    ),
                  ],
                )
                // child: Container(
                //   height: 100,
                //   width: 300,
                //   color: Colors.blue,
                //   child: Row(children: [
                //     Icon(
                //       Icons.person,
                //       size: 50,
                //     ),
                //     Padding(
                //       padding: const EdgeInsets.fromLTRB(200, 0, 0, 0),
                //       child: Column(
                //         // crossAxisAlignment: CrossAxisAlignment,
                //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //         children: [
                //           Text(
                //             'Part 3',
                //             style: TextStyle(color: Colors.red, fontSize: 20),
                //           ),
                //           Text(
                //             'Level',
                //             style: TextStyle(color: Colors.red, fontSize: 20),
                //           )
                //         ],
                //       ),
                //     ),
                //   ]),
                // ),
                ),
            Positioned(
              top: 130,
              right: 10,
              left: 10,
              child: Container(
                height: 100,
                width: 300,
                color: Colors.blue,
                child: Row(children: [
                  Icon(
                    Icons.person,
                    size: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(200, 0, 0, 0),
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Part 3',
                          style: TextStyle(color: Colors.red, fontSize: 20),
                        ),
                        Text(
                          'Level',
                          style: TextStyle(color: Colors.red, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ]),
              ),
            ),
            Positioned(
                top: 260,
                right: 10,
                left: 10,
                child: Container(
                  height: 100,
                  width: 300,
                  color: Colors.orange,
                  child: Row(children: [
                    Icon(
                      Icons.class_,
                      size: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Computer Science',
                            style: TextStyle(color: Colors.red, fontSize: 20),
                          ),
                          Text(
                            'Programme',
                            style: TextStyle(color: Colors.red, fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ]),
                )),
            Positioned(
                top: 380,
                right: 10,
                left: 10,
                child: Container(
                  height: 100,
                  width: 300,
                  color: Colors.orange,
                  child: Row(children: [
                    Icon(
                      Icons.mark_as_unread_rounded,
                      size: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(120, 0, 0, 0),
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            '2020/2021',
                            style: TextStyle(color: Colors.red, fontSize: 20),
                          ),
                          Text(
                            'Current Session',
                            style: TextStyle(color: Colors.red, fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ]),
                )),
          ])),
    );
    //   ],
    // );
  }
}
