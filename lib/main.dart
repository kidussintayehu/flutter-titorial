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
              children: [
                for (int i = 0; i < 20; i++)
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    width: 200,
                    height: 200,
                    padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                    color: color[i],
                    // child: Container(),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
