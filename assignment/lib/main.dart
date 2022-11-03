import 'dart:ffi';

import 'package:assignment/tileNormal.dart';
import 'package:assignment/tileSend.dart';
import 'package:assignment/tileUnread.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Swift Assignment',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Welcome Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Column(children: [
      SizedBox(height: 35),
      Padding(
        padding: const EdgeInsets.fromLTRB(20,0,22,0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
                onPressed: () {},
                child: const Text(
                  'Edit',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color.fromRGBO(93, 126, 242, 1),
                      fontFamily: 'Metropolis',
                      fontSize: 20,
                      letterSpacing: 0.37400001287460327,
                      fontWeight: FontWeight.normal,
                      height: 2.05),
                )),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)),
                  primary: Color.fromRGBO(93, 126, 242, 1),
                  onPrimary: Color.fromARGB(255, 255, 255, 255),
                ),
                onPressed: (() {}),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Row(
                    children: const [
                      Icon(Icons.add),
                      Text('New', style: TextStyle(fontSize: 18))
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(41, 0, 0, 0),
        child: Row(
          children: [
            Container(
                width: 163.5,
                height: 40,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(60, 63, 60, 1),
                    borderRadius: BorderRadius.circular(100)),
                child: Stack(children: const <Widget>[
                  Positioned(
                      top: 11,
                      left: 40.75,
                      child: Text(
                        'Edit Existing',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontFamily: 'Inter',
                            fontSize: 14,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1.2857142857142858),
                      )),
                ])),
            Container(
                width: 163.5,
                height: 40,
                child: Stack(children: const <Widget>[
                  Positioned(
                      top: 11,
                      left: 52.25,
                      child: Text(
                        'Add new',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(23, 24, 26, 1),
                            fontFamily: 'Inter',
                            fontSize: 14,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1.2857142857142858),
                      )),
                ]))
          ],
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Container(
        decoration: BoxDecoration(
            color: Color.fromARGB(168, 231, 229, 229),
            borderRadius: BorderRadius.circular(30)),
        child: Column(
          children: [
            TileUnread(
                name: 'Gyllinton',
                lastMessage: 'I dont know what you..',
                day: '3:00 pm',
                unreadMessage: 3),
            TileSend(
                name: 'Mark',
                lastMessage: 'You: Where are you?.',
                day: '9:00 am',
                unreadMessage: 1),
            TileNormal(
                name: 'Imogen',
                lastMessage: 'You are awesome........',
                day: 'Friday',
                imageUrl: 'https://avatars.githubusercontent.com/u/353790?v=4'),
            Divider(
              color: Color.fromARGB(255, 195, 195, 195),
            ),
          ],
        ),
      ),
      TileSend(
          name: 'Mark',
          lastMessage: 'You: Where are you..',
          day: '8:00 am',
          unreadMessage: 3),
      TileNormal(
          name: 'Emily',
          lastMessage: 'I dont know what you',
          day: '3:00 pm',
          imageUrl: 'https://avatars.githubusercontent.com/u/353790?v=4'),
      TileUnread(
          name: 'Monica',
          lastMessage: 'Okay you were there.....',
          day: '3:00 pm',
          unreadMessage: 2),
      TileNormal(
          name: 'Alice',
          lastMessage: 'I dont know what to',
          day: '3:00 pm',
          imageUrl: 'https://avatars.githubusercontent.com/u/353790?v=4'),
    ])));
  }
}
