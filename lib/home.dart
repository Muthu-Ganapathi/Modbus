import 'dart:convert';
import 'dart:js_interop';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:modubus/arrowCus.dart';
import 'package:modubus/commonService.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    intData();
  }
  intData()async{
    final _valueStream =await FirebaseFirestore.instance
        .collection('modbus').doc("modbus_document1").snapshots();
        print("object1");
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
     final _valueStream = FirebaseFirestore.instance
        .collection('modbus').doc("modbus_document1").snapshots();
        Stream<QuerySnapshot> val;

    return Scaffold(
      backgroundColor: PRIMARY_COLOR,
      body: StreamBuilder(
        stream: _valueStream,
        builder: (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
           print("object");
           if (snapshot.hasError) {

            return Text("something is wrong   "+snapshot.error.toString());
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          
          final data1 = snapshot.data!.get("1002");
          final data2 = snapshot.data!.get("2580");
          // Map<String,dynamic> data1=json.decode(json.encode(data));
          // Object.
          // print("$data");
          return SingleChildScrollView(
              child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: size.width * 0.50,
                      child: const Text(
                        "CWSSTOVELLORECORPORATION,11MUNlGPALTlES,5TOWNPANCHAYATSAND944RURAL HABTATIONS!NVELLOREDISTRCTWITHRVERCAUVERYASSOURCE",
                        style:
                            TextStyle(fontSize: 18, color: Colors.white, height: 2),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
                    height: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const ArrowCus(
                          width: 50,
                        ),
                        Container(
                          height: 70,
                          width: 80,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(color: Colors.white, width: 2)),
                          child: const Center(
                            child: Text(
                              "RWPH",
                              style: TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const ArrowCus(
                          width: 50,
                        ),
                        Container(
                          height: 70,
                          width: 70,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(color: Colors.white, width: 2)),
                          child: const Center(
                            child: Text(
                              "WTP",
                              style: TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const ArrowCus(
                          width: 50,
                        ),
                        Stack(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: 120,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    border: Border.all(color: Colors.white, width: 2)),
                                child: Row(children: [
                                  Container(
                                    width: 73,
                                    //      decoration: BoxDecoration(
                                    //   color: Colors.transparent,
                                    //   border: Border.all(color: Colors.white,width: 2)
                                    // ),
                                    child: Column(children: [
                                      Container(
                                        height: 48,
                                        decoration: const BoxDecoration(
                                            color: Colors.transparent,
                                            border: Border(
                                                bottom: BorderSide(
                                                    width: 2, color: Colors.white))),
                                        child: const Center(
                                          child: Text(
                                            "RESERVOIR \n COMP-I",
                                            style: TextStyle(
                                                fontSize: 10, color: Colors.white),
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 48,
                                        child: const Center(
                                          child: Text(
                                            "RESERVOIR \n COMP-II",
                                            style: TextStyle(
                                                fontSize: 10, color: Colors.white),
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                      ),
                                    ]),
                                  ),
                                  Container(
                                    width: 73,
                                    decoration: const BoxDecoration(
                                        color: Colors.transparent,
                                        border: Border(
                                            left:
                                                BorderSide(width: 2, color: Colors.white))),
                                    child: const Center(
                                      child: RotatedBox(
                                          quarterTurns: 45,
                                          child: Text(
                                            "PUMP \n HOUSE",
                                            style: TextStyle(
                                                color: Colors.white, fontSize: 15),
                                            textAlign: TextAlign.center,
                                          )),
                                    ),
                                  ),
                                ]),
                              ),
                              
                            ),
                            Positioned(
                              bottom: 0,
                              left: 40,
                              // width: double.infinity,
                              child: Text(
                                "TWPH",
                                style: TextStyle(color: Colors.white, fontSize: 15),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const ArrowCus(
                          width: 75,
                        ),
                        Stack(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: 120,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    border: Border.all(color: Colors.white, width: 2)),
                                child: Row(children: [
                                  Container(
                                    width: 73,
                                    //      decoration: BoxDecoration(
                                    //   color: Colors.transparent,
                                    //   border: Border.all(color: Colors.white,width: 2)
                                    // ),
                                    child: Column(children: [
                                      Container(
                                        height: 48,
                                        decoration: const BoxDecoration(
                                            color: Colors.transparent,
                                            border: Border(
                                                bottom: BorderSide(
                                                    width: 2, color: Colors.white))),
                                        child: const Center(
                                          child: Text(
                                            "RESERVOIR \n COMP-I",
                                            style: TextStyle(
                                                fontSize: 10, color: Colors.white),
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 48,
                                        child: const Center(
                                          child: Text(
                                            "RESERVOIR \n COMP-II",
                                            style: TextStyle(
                                                fontSize: 10, color: Colors.white),
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                      ),
                                    ]),
                                  ),
                                  Container(
                                    width: 73,
                                    decoration: const BoxDecoration(
                                        color: Colors.transparent,
                                        border: Border(
                                            left:
                                                BorderSide(width: 2, color: Colors.white))),
                                    child: const Center(
                                      child: RotatedBox(
                                          quarterTurns: 45,
                                          child: Text(
                                            "PUMP \n HOUSE",
                                            style: TextStyle(
                                                color: Colors.white, fontSize: 15),
                                            textAlign: TextAlign.center,
                                          )),
                                    ),
                                  ),
                                ]),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              left: 40,
                              // width: double.infinity,
                              child: Text(
                                "BPS - 1",
                                style: TextStyle(color: Colors.white, fontSize: 15),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Stack(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: const ArrowCus(
                                width: 75,
                              ),
                            ),
                             Positioned(
                              top: 40,
                              left: 25,
                              // width: double.infinity,
                              child: Text(
                                // data!=null?data["1002"]:
                                "$data1",
                                style: TextStyle(color: Colors.white, fontSize: 15),
                              ),
                            )
                          ],
                        ),
                        Stack(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: 120,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    border: Border.all(color: Colors.white, width: 2)),
                                child: Row(children: [
                                  Container(
                                    width: 73,
                                    //      decoration: BoxDecoration(
                                    //   color: Colors.transparent,
                                    //   border: Border.all(color: Colors.white,width: 2)
                                    // ),
                                    child: Column(children: [
                                      Container(
                                        height: 48,
                                        decoration: const BoxDecoration(
                                            color: Colors.transparent,
                                            border: Border(
                                                bottom: BorderSide(
                                                    width: 2, color: Colors.white))),
                                        child: const Center(
                                          child: Text(
                                            "RESERVOIR \n COMP-I",
                                            style: TextStyle(
                                                fontSize: 10, color: Colors.white),
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 48,
                                        child: const Center(
                                          child: Text(
                                            "RESERVOIR \n COMP-II",
                                            style: TextStyle(
                                                fontSize: 10, color: Colors.white),
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                      ),
                                    ]),
                                  ),
                                  Container(
                                    width: 73,
                                    decoration: const BoxDecoration(
                                        color: Colors.transparent,
                                        border: Border(
                                            left:
                                                BorderSide(width: 2, color: Colors.white))),
                                    child: const Center(
                                      child: RotatedBox(
                                          quarterTurns: 45,
                                          child: Text(
                                            "PUMP \n HOUSE",
                                            style: TextStyle(
                                                color: Colors.white, fontSize: 15),
                                            textAlign: TextAlign.center,
                                          )),
                                    ),
                                  ),
                                ]),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              left: 40,
                              // width: double.infinity,
                              child: Text(
                                "BPS - 2",
                                style: TextStyle(color: Colors.white, fontSize: 15),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const ArrowCus(
                          width: 75,
                        ),
                        Stack(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: 120,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    border: Border.all(color: Colors.white, width: 2)),
                                child: Row(children: [
                                  Container(
                                    width: 73,
                                    //      decoration: BoxDecoration(
                                    //   color: Colors.transparent,
                                    //   border: Border.all(color: Colors.white,width: 2)
                                    // ),
                                    child: Column(children: [
                                      Container(
                                        height: 48,
                                        decoration: const BoxDecoration(
                                            color: Colors.transparent,
                                            border: Border(
                                                bottom: BorderSide(
                                                    width: 2, color: Colors.white))),
                                        child: const Center(
                                          child: Text(
                                            "RESERVOIR \n COMP-I",
                                            style: TextStyle(
                                                fontSize: 10, color: Colors.white),
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 48,
                                        child: const Center(
                                          child: Text(
                                            "RESERVOIR \n COMP-II",
                                            style: TextStyle(
                                                fontSize: 10, color: Colors.white),
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                      ),
                                    ]),
                                  ),
                                  Container(
                                    width: 73,
                                    decoration: const BoxDecoration(
                                        color: Colors.transparent,
                                        border: Border(
                                            left:
                                                BorderSide(width: 2, color: Colors.white))),
                                    child: const Center(
                                      child: RotatedBox(
                                          quarterTurns: 45,
                                          child: Text(
                                            "PUMP \n HOUSE",
                                            style: TextStyle(
                                                color: Colors.white, fontSize: 15),
                                            textAlign: TextAlign.center,
                                          )),
                                    ),
                                  ),
                                ]),
                              ),
                            ),
                             Positioned(
                              top: 0,
                              left: 40,
                              // width: double.infinity,
                              child: Text(
                                "BPS - 3",
                                style: TextStyle(color: Colors.white, fontSize: 15),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const ArrowCus(
                          width: 75,
                        ),
                        Stack(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: 120,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    border: Border.all(color: Colors.white, width: 2)),
                                child: Row(children: [
                                  Container(
                                    width: 73,
                                    //      decoration: BoxDecoration(
                                    //   color: Colors.transparent,
                                    //   border: Border.all(color: Colors.white,width: 2)
                                    // ),
                                    child: Column(children: [
                                      Container(
                                        height: 48,
                                        decoration: const BoxDecoration(
                                            color: Colors.transparent,
                                            border: Border(
                                                bottom: BorderSide(
                                                    width: 2, color: Colors.white))),
                                        child: const Center(
                                          child: Text(
                                            "RESERVOIR \n COMP-I",
                                            style: TextStyle(
                                                fontSize: 10, color: Colors.white),
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 48,
                                        child: const Center(
                                          child: Text(
                                            "RESERVOIR \n COMP-II",
                                            style: TextStyle(
                                                fontSize: 10, color: Colors.white),
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                      ),
                                    ]),
                                  ),
                                  Container(
                                    width: 73,
                                    decoration: const BoxDecoration(
                                        color: Colors.transparent,
                                        border: Border(
                                            left:
                                                BorderSide(width: 2, color: Colors.white))),
                                    child: const Center(
                                      child: RotatedBox(
                                          quarterTurns: 45,
                                          child: Text(
                                            "PUMP \n HOUSE",
                                            style: TextStyle(
                                                color: Colors.white, fontSize: 15),
                                            textAlign: TextAlign.center,
                                          )),
                                    ),
                                  ),
                                ]),
                              ),
                            ),
                             Positioned(
                              top: 0,
                              left: 40,
                              // width: double.infinity,
                              child: Text(
                                "GSLR",
                                style: TextStyle(color: Colors.white, fontSize: 15),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        SizedBox(
                          height: 100,
                          child: Stack(
                            children: [
                        
                              Align(
                                alignment: Alignment.center,
                                child: const ArrowCus(
                                  width: 75,
                                ),
                              ),
                               Positioned(
                              top: 0,
                              right: 10,
                              // width: double.infinity,
                              child: Text(
                                "$data2",
                                style: TextStyle(color: Colors.white, fontSize: 15),
                              ),
                            )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ));
        }
      ),
    );
  }
}
