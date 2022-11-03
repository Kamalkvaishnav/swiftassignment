import 'package:flutter/material.dart';

class TileNormal extends StatelessWidget {
  String name;
  String day;
  String lastMessage;
  String imageUrl;

  TileNormal(
      {super.key,
      required this.name,
      required this.lastMessage,
      required this.day,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://media1.popsugar-assets.com/files/thumbor/hnVKqXE-xPM5bi3w8RQLqFCDw_E/475x60:1974x1559/fit-in/2048xorig/filters:format_auto-!!-:strip_icc-!!-/2019/09/09/023/n/1922398/9f849ffa5d76e13d154137.01128738_/i/Taylor-Swift.jpg'),
                  maxRadius: 30,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 40,
                      width: 10,
                    ),
                  ],
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(),
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              name,
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                  color: Color.fromRGBO(35, 35, 35, 1),
                                  fontFamily: 'Metropolis',
                                  fontSize: 20,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1),
                            ),
                            SizedBox(width: 5),
                          ],
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        lastMessage,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                            color: Color.fromRGBO(35, 35, 35, 0.5),
                            fontFamily: 'Metropolis',
                            fontSize: 16,
                            letterSpacing: 0,
                            fontWeight: FontWeight.normal,
                            height: 1.25),
                      ),
                    ],
                  ),
                )),
                SizedBox(
                  width: 75,
                ),
                Container(
                  decoration: BoxDecoration(),
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        day,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            color:
                                Color.fromRGBO(35, 35, 35, 0.30000001192092896),
                            fontFamily: 'Metropolis',
                            fontSize: 13,
                            letterSpacing: 0,
                            fontWeight: FontWeight.normal,
                            height: 1),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
