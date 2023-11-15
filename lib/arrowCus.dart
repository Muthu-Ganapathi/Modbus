import 'package:flutter/material.dart';


class ArrowCus extends StatelessWidget {
  final double width;
const ArrowCus({ Key? key, this.width=100 }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Stack(
                        children: [
                           Container(
                        height: 30,
                        width: width,
                        color: Colors.transparent,
                        child: Center(
                          child: Container(
                            height: 2.5,
                            width: double.infinity,
                            color: Colors.white,
                          ),
                        ),
                      ),
                          Positioned(
                            top: 3,
                            right: -7,
                            child: Container(
                              // color: Colors.amber,
                              child: Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Colors.white,
                                // size: 30,
                              ),
                            ),
                          ),
                        ],
                      );
  }
}