
import 'package:flutter/material.dart';
import 'second_screen.dart'
;import '../const.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hey Kishore\nWe're here for you.",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Icon(
                    Icons.settings,
                    color: settingIconColor,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              margin: EdgeInsets.all(20),
              height: 70,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10.0,
                    offset: Offset(0.0, 0.75),
                  )
                ],
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.add_alert_rounded,
                    color: alertButtonColor,
                  ),
                  Text(
                    "Emergency Assistance",
                    style: TextStyle(color: Colors.black87, fontSize: 20.0),
                  ),
                  Icon(Icons.arrow_forward_ios_sharp),
                ],
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: 5000,
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        physics: AlwaysScrollableScrollPhysics(),
                        shrinkWrap: true,
                        children: [
                          Container(
                            child: Text(
                              "One Click Emergency Assistance",
                              style: TextStyle(fontSize: 16.0, color: Colors.grey),
                            ),
                            margin: EdgeInsets.all(10.0),
                            alignment: Alignment.centerLeft,
                          ),
                          Container(
                            height: 90,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.deepPurpleAccent,
                                  Colors.deepPurpleAccent.withOpacity(0.5),
                                ],
                              ),

                                borderRadius: BorderRadius.circular(15)),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.car_repair,
                                        size: 40,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        "Motor Accident",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios_sharp,
                                        size: 20,
                                        color: Colors.white,
                                      ),

                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Icon(
                                    Icons.car_repair,
                                    size: 110,
                                    color: Colors.white.withOpacity(0.4),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return MedicalEmergency(
                                );
                              }));
                            },
                            child: Container(
                              height: 90,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Colors.blueAccent,
                                      Colors.blueAccent.withOpacity(0.5),
                                    ],
                                  ),

                                  borderRadius: BorderRadius.circular(15)),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Icon(
                                          Icons.add,
                                          size: 40,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          "Medical Emergency",
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 20),
                                        ),
                                        Icon(
                                          Icons.arrow_forward_ios_sharp,
                                          size: 20,
                                          color: Colors.white,
                                        ),

                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Icon(
                                      Icons.add,
                                      size: 110,
                                      color: Colors.white.withOpacity(0.4),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 90,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Colors.orange,
                                    Colors.orange.withOpacity(0.5),
                                  ],
                                ),

                                borderRadius: BorderRadius.circular(15)),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.person,
                                        size: 40,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        "Motor Accident",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios_sharp,
                                        size: 20,
                                        color: Colors.white,
                                      ),

                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Icon(
                                    Icons.person,
                                    size: 110,
                                    color: Colors.white.withOpacity(0.4),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 90,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Colors.greenAccent,
                                    Colors.greenAccent.withOpacity(0.5),
                                  ],
                                ),

                                borderRadius: BorderRadius.circular(15)),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.close,
                                        size: 40,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        "Terrorism",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios_sharp,
                                        size: 20,
                                        color: Colors.white,
                                      ),

                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Icon(
                                    Icons.close,
                                    size: 110,
                                    color: Colors.white.withOpacity(0.4),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
            ),

          ],
        ),
      ),
    );
  }
}
