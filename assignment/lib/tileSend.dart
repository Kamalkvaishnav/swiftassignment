import 'package:flutter/material.dart';

class TileSend extends StatelessWidget {
  String name;
  String day;
  String lastMessage;
  int unreadMessage;

  TileSend(
      {super.key,
      required this.name,
      required this.lastMessage,
      required this.day,
      required this.unreadMessage});

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
                      'https://t3.ftcdn.net/jpg/02/65/60/80/360_F_265608067_Nth2hs7Ri68NZBgHHhGuWIxaP6Z1m170.jpg'),
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
                            SizedBox(width: 0),
                          ],
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        lastMessage,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(35, 35, 35, 0.5),
                            fontFamily: 'Metropolis',
                            fontSize: 16,
                            letterSpacing: 0,
                            fontWeight: FontWeight.normal,
                            height: 1.25),
                      )
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
                      Container(
                          width: 14,
                          height: 14,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(100),
                              topRight: Radius.circular(100),
                              bottomLeft: Radius.circular(100),
                              bottomRight: Radius.circular(100),
                            ),
                            color: Color.fromRGBO(35, 35, 35, 0.5),
                          ),
                          child: Stack(children: <Widget>[])),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
