import 'package:flutter/material.dart';

class TileUnread extends StatelessWidget {
  String name;
  String day;
  String lastMessage;
  int unreadMessage;

  TileUnread(
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
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDtapweVDgQOxuMEe7ytajfU1Y3LLhgr9U8Q&usqp=CAU'),
                  maxRadius: 30,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(93, 126, 242, 1),
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(10, 10)),
                        )),
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
                            SizedBox(width: 50),
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
                  width: 60,
                ),
                Container(
                  decoration: BoxDecoration(),
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                          child: Stack(children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                    width: 25,
                                    height: 25,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(100),
                                        topRight: Radius.circular(100),
                                        bottomLeft: Radius.circular(100),
                                        bottomRight: Radius.circular(100),
                                      ),
                                      color: Color.fromRGBO(93, 126, 242, 1),
                                    ),
                                    child: Stack(children: const <Widget>[]))),
                            Positioned(
                                top: 5,
                                left: 8,
                                child: Text(
                                  unreadMessage.toString(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color.fromRGBO(250, 250, 250, 1),
                                      fontFamily: 'Metropolis',
                                      fontSize: 15,
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                )),
                          ])),
                      SizedBox(height: 10),
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
                      const SizedBox(height: 10),
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
