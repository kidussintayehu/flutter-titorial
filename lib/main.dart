import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = [
      Colors.indigo,
      Colors.black,
      Colors.green,
      Colors.lightBlue,
      Colors.indigo,
      Colors.black,
      Colors.green,
      Colors.lightBlue,
      Colors.indigo,
      Colors.black,
      Colors.green,
      Colors.lightBlue,
      Colors.indigo,
      Colors.black,
      Colors.green,
      Colors.lightBlue,
      Colors.indigo,
      Colors.black,
      Colors.green,
      Colors.lightBlue
    ];
    final raduis = [200.0, 160.0, 120.0, 80.0, 40.0];
    const title = 'Horizontal List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: Container(
          height: 500,
          width: double.infinity,
          color: const Color.fromARGB(255, 105, 213, 237),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for (int i = 0; i < 20; i++)
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                        width: 200,
                        height: 200,
                        // padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                        color: color[i],
                        child: Stack(
                            alignment: Alignment.center,
                            children: <Widget>[
                              Positioned(
                                // top: 100,
                                // bottom: 10,

                                child: Container(
                                  // margin: const EdgeInsets.only(bottom: 25.0),
                                  width: raduis[0],
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white),
                                ),
                              ),
                              Container(
                                width: raduis[1],
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle, color: Colors.blue),
                              ),
                              Container(
                                width: raduis[2],
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black),
                              ),
                              Container(
                                width: raduis[3],
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.yellow),
                              ),
                              Container(
                                width: raduis[4],
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle, color: Colors.red),
                                //     child: const Icon(
                                // Icons.add,
                                // color: Colors.white,
                                // )
                              ),
                              const Icon(
                                Icons.add,
                                color: Colors.white,
                              )
                            ])),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
