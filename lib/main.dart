import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'chart-page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: const Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String dropdownValue = '1Month';
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.all(15.0),
        height: screenSize.height * 1,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40.0),
          color: Colors.white,
        ),
        child: Column(
          children: [
            SizedBox(
              height: screenSize.height * 0.02,
            ),
            SizedBox(
              height: screenSize.height * 0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      height: screenSize.height * 0.1,
                      width: screenSize.width * 0.1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0),
                          image: const DecorationImage(
                            image: AssetImage('images/menu.png'),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      height: screenSize.height * 0.12,
                      width: screenSize.width * 0.12,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: screenSize.height * 0.10,
                          width: screenSize.width * 0.10,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/boy.png'),
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border:
                            Border.all(width: 1, color: Colors.grey.shade600),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "12.670,90",
                    style: TextStyle(
                      color: Colors.indigo.shade900,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  RotatedBox(
                    quarterTurns: 1,
                    child: Text(
                      "USD",
                      style: TextStyle(
                        color: Colors.indigo.shade900,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "\$9839.25",
                    style: TextStyle(
                      color: Colors.indigo.shade900,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: screenSize.width * 0.02,
                  ),
                  const Text(
                    "+8.5%",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: screenSize.height * 0.05,
            ),
            Container(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "May 26-July 26",
                    style: TextStyle(
                      color: Colors.indigo.shade900,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 8),
                    width: screenSize.width * 0.3,
                    height: screenSize.height * 0.05,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: Colors.grey.shade600),
                    ),
                    child: DropdownButton<String>(
                      value: dropdownValue,
                      icon: const Padding(
                        padding: EdgeInsets.only(left: 30.0),
                        child: Icon(Icons.arrow_drop_down_outlined),
                      ),
                      elevation: 16,
                      style: const TextStyle(color: Colors.deepPurple),
                      underline: Container(
                        height: 0,
                        color: Colors.transparent,
                      ),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      },
                      items: <String>[
                        '1Month',
                        '2Month',
                        '3Month',
                        '4Month',
                        '5Month',
                        '6Month',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenSize.height * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.blue.shade800,
                        // image: const DecorationImage(
                        //   image: AssetImage('images/uparrow1.png'),
                        // ),
                      ),
                      child: const Icon(
                        Icons.arrow_circle_up_outlined,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                            width: 70,
                            child: Text(
                              "Spent",
                              style: TextStyle(
                                color: Colors.indigo.shade900,
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                            width: 70,
                            child: Text(
                              "\$1,460",
                              style: TextStyle(
                                color: Colors.indigo.shade900,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.blue.withOpacity(0.7),
                        // image: const DecorationImage(
                        //   image: AssetImage('images/downarrow1.png'),
                        // ),
                      ),
                      child: const Icon(
                        Icons.arrow_circle_down_outlined,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                            width: 70,
                            child: Text(
                              "Earned",
                              style: TextStyle(
                                color: Colors.indigo.shade900,
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                            width: 70,
                            child: Text(
                              "\$2,730",
                              style: TextStyle(
                                color: Colors.indigo.shade900,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: screenSize.height * 0.04,
            ),
            const Chart(),
            SizedBox(
              height: screenSize.height * 0.01,
            ),
            // Container(
            //   margin: const EdgeInsets.only(
            //       left: 30, top: 100, right: 30, bottom: 50),
            //   height: 70,
            //   width: 70,
            //   decoration: BoxDecoration(
            //     color: Colors.white,
            //     borderRadius: const BorderRadius.only(
            //         topLeft: Radius.circular(10),
            //         topRight: Radius.circular(10),
            //         bottomLeft: Radius.circular(10),
            //         bottomRight: Radius.circular(10)),
            //     boxShadow: [
            //       BoxShadow(
            //         color: Colors.grey.withOpacity(0.5),
            //         spreadRadius: 5,
            //         blurRadius: 7,
            //         offset: const Offset(0, 3), // changes position of shadow
            //       ),
            //     ],
            //   ),
            // )

            Stack(
              children: [
                Column(
                  children: [
                    Center(
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(70),
                            color: Colors.grey.shade400),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: NeumorphicButton(
                            onPressed: () {
                              print("onClick");
                            },
                            style: NeumorphicStyle(
                              shape: NeumorphicShape.concave,
                              boxShape: NeumorphicBoxShape.circle(),
                              depth: 20,
                            ),
                            padding: const EdgeInsets.all(12.0),
                            child: Icon(
                              Icons.home,
                              // color: _iconsColor(context),
                            ),
                          ),
                          // Container(
                          //   height: 50,
                          //   width: 50,
                          //   decoration: BoxDecoration(
                          //     borderRadius: BorderRadius.circular(50.0),
                          //     color: Colors.blue.shade800,
                          //   ),
                          //   child: const Icon(
                          //     Icons.home_outlined,
                          //     color: Colors.white,
                          //   ),
                          // ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color: Colors.blue.withOpacity(0.7),
                            // image: const DecorationImage(
                            //   image: AssetImage('images/contactform.png'),
                            //   fit: BoxFit.fill,
                            // ),
                          ),
                          child: const Icon(
                            Icons.contact_page_outlined,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color: Colors.blue.withOpacity(0.7),
                            // image: const DecorationImage(
                            //   image: AssetImage('images/person1.png'),
                            //   fit: BoxFit.fill,
                            // ),
                          ),
                          child: const Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
