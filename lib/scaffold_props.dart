import 'dart:html';

import 'package:flutter/material.dart';

class ScaffoldPropsScreen extends StatefulWidget {
  const ScaffoldPropsScreen({Key? key}) : super(key: key);

  @override
  State<ScaffoldPropsScreen> createState() => _ScaffoldPropsScreenState();
}

class _ScaffoldPropsScreenState extends State<ScaffoldPropsScreen> {
  int bottomNavBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    // final colors = [Colors.green, Colors.red, Colors.yellow];
    final image = [
      "images/bOvf94dPRxWu0u3QsPjF_tree.jpg",
      "images/istockphoto-1181366400-612x612.jpg",
      "images/istockphoto-517188688-612x612.jpg",
      "images/natural-beauty.jpg",
      "images/Rainforest_Fatu_Hiva.jpg"
    ];
    final bodyColor = bottomNavBarIndex == 0
        ? Colors.red
        : bottomNavBarIndex == 1
            ? Colors.yellow
            : Colors.green;
    List<Widget> _pages = <Widget>[
      GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          childAspectRatio: 1,
        ),
        itemCount: 21,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: Image.asset(
              image[index % 5],
              width: 75,
              height: 75,
              fit: BoxFit.cover,
            ),
           
          );
        },
      ),
      GridView.count(
          // gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          // maxCrossAxisExtent: 200,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          childAspectRatio: 1,
          crossAxisCount: 2,
          children: List.generate(10, ((index) {
            return Container(
                height: 100,
                width: 200,
                // padding: const EdgeInsets.all(8),
                child: Stack(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/pic_1.jpg',
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      width: double.infinity,
                      height: 50,
                      color: Colors.black.withOpacity(0.35),
                      margin: const EdgeInsets.only(top: 89.0),
                      padding: EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Column(
                            
                            children: [
                              Text("Ethiopia",
                              style: TextStyle(color: Colors.white),),
                              Text("Addis Ababa",
                              style: TextStyle(color: Colors.white),),
                            ],
                          ),
                          SizedBox(width: 120),
                          Icon(
                            Icons.star,
                            color: Colors.white,
                          )
                          // const SizedBox(width: 16),
                        ],
                      ),
                    )
                  ],
                ));
          }))),
      GridView.count(
          crossAxisCount: 1,
          children: List.generate(10, ((index) {
            return Container(
              height: 100,
              width: 200,
              child: Image.asset(
                image[index % 5],
                width: 75,
                height: 75,
                fit: BoxFit.cover,
              ),
            );
          }))),
    ];
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Telegram")),
        body: _pages.elementAt(bottomNavBarIndex),
        drawer: Drawer(
          child: Column(
            children: [
              Container(
                height: 200,
                color: Colors.blue,
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(35),
                          child: Image.asset(
                            "images/pic_1.jpg",
                            width: 75,
                            height: 75,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    Expanded(child: SizedBox()),
                    Text("kidus sintayehu"),
                    Text("+1234567890"),
                  ],
                ),
              ),
              Row(
                children: [
                  Icon(Icons.phone),
                  SizedBox(width: 16),
                  Text("phone settings"),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.location_city),
                  SizedBox(width: 16),
                  Text("location settings"),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.settings),
                  SizedBox(width: 16),
                  Text("settings"),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.logout),
                  SizedBox(width: 16),
                  Text("log out"),
                ],
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: bottomNavBarIndex,
          onTap: (int index) {
            setState(() {
              bottomNavBarIndex = index;
            });
          },
          // ignore: prefer_const_literals_to_create_immutables
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.phone),
              label: "Phone",
            ),
          ],
        ),
      ),
    );
  }
}
