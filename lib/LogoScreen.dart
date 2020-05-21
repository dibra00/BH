import 'dart:io';

import 'GameScreen.dart';
import 'main.dart';
import 'package:bustem2/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'MenuScreen.dart';

class logoScreen extends StatefulWidget {
  @override
  _logoScreenState createState() => _logoScreenState();
}

class _logoScreenState extends State<logoScreen> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    var width = queryData.size.width;
    var height = queryData.size.height;
    var winAmount = staticValues.totalReturn();
    staticValues.saveNumber();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Stack(
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          'assets/images/katie-harp-Em96eDRJPD8-unsplash.jpg'),
                      fit: BoxFit.cover))),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'You Won :',
                  style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: 'MTCORSVA',
                      decoration: TextDecoration.none),
                ),
                Text(
                  '\$$winAmount',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: 'MTCORSVA',
                      decoration: TextDecoration.none),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (winAmount > 0)
                            (staticValues
                                .setMoney(staticValues.getMoney() + winAmount));
                        });

                        Route route = MaterialPageRoute(
                            builder: (context) => MenuScreen());
                        Navigator.push(context, route);
                      },
                      child: Container(
                        //color: Colors.black12,
                        child: Center(
                          child: Text(
                            'Play Again',
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(240, 195, 85, 1),
                                fontFamily: 'MTCORSVA',
                                decoration: TextDecoration.none),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black45,
                                spreadRadius: 1.5,
                                offset: Offset(2, 4))
                          ],
                          color: Colors.black,
                        ),
                        margin: EdgeInsets.only(top: 50),
                        height: 70,
                        width: 210,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (winAmount > 0)
                            (staticValues
                                .setMoney(staticValues.getMoney() + winAmount));
                        });
                        exit(0);
                      },
                      child: Container(
                        //color: Colors.black12,
                        child: Center(
                          child: Text(
                            'Quit',
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(240, 195, 85, 1),
                                fontFamily: 'MTCORSVA',
                                decoration: TextDecoration.none),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black45,
                                spreadRadius: 1.5,
                                offset: Offset(2, 4))
                          ],
                          color: Colors.black,
                        ),
                        margin: EdgeInsets.only(top: 50),
                        height: 70,
                        width: 210,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
