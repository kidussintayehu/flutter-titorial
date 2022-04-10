// ignore_for_file: unnecessary_const

import 'dart:js_util';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Column ,Row and Stack demo',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Column ,Row and Stack demo'),
          ),
          body: Center(
            
              child: Column(
                
                children: <Widget>[
            Container(
              height: 250,
              width: 250,
              padding: const EdgeInsets.all(15.0),
              decoration: const BoxDecoration(
                color: Color.fromARGB(115, 211, 205, 205),
              ),
              child: Stack(
                children: [
                  const CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/pic_2.jpg'),
                      radius: 150),
                  Positioned(
                      bottom: 50,
                      right: 50,
                      child: Container(
                          height: 20,
                          width: 40,
                          color: Colors.black.withOpacity(0.5),
                          child: const Text(
                            "Mia B",
                            style: TextStyle(color: Colors.white),
                          )))
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
                height: 200,
                width: 300,
                decoration: const BoxDecoration(
                    image: const DecorationImage(
                  image: const AssetImage("assets/images/pic_1.jpg"),
                  fit: BoxFit.fill,
                )),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // padding: EdgeInsets.all(10),
                            const Icon(
                              Icons.keyboard_arrow_left_rounded,
                              color: Colors.white,
                              size: 30.0,
                            ),

                            Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const [
                                  Icon(
                                    Icons.edit,
                                    color: Colors.white,
                                    size: 25.0,
                                  ),
                                  Icon(
                                    Icons.more_vert,
                                    color: Colors.white,
                                    size: 25.0,
                                  )
                                ]),
                          ],
                        ),
                        const SizedBox(height: 135),
                       const Text(
                        "Ali Connors",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                          
                        ),
                      
                      ],
                      
                    )
                  ],
                )),
          ])),
        ));
  }
}
