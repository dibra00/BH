import 'package:bustem2/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';


class table extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);

    var width = staticValues.getWidth();
    var height = staticValues.getHeight();
    var deskH_t = height * 0.15; //top height
    var deskH_b = height *0.25; //bottom height
    var deskW_l = width *0.08; //left width
    var deskW_r = width *0.08; //right width
    return Container(
      color: Colors.black,
      child: Stack(
        children: <Widget>[
          Center(
              child: Container(
            margin: EdgeInsets.only(
                top: deskH_t, right: deskW_r, left: deskW_l, bottom: deskH_b),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(255, 200, 0, 0.1),
                  offset: Offset(0, 3),
                  blurRadius: 6,
                  spreadRadius: 9,
                )
              ],
              borderRadius: BorderRadius.all(Radius.elliptical(150, 200)),
            ),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.elliptical(150, 200)),
                  image: DecorationImage(
                      image: AssetImage(
                          'assets/images/katie-harp-Em96eDRJPD8-unsplash.jpg'),
                      fit: BoxFit.cover)),
            ),
          )),
          Container(
            margin: EdgeInsets.only(
                top: deskH_t + 6,
                right: deskW_r + 24,
                left: deskW_l + 24,
                bottom: deskH_b + 24),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.elliptical(130, 200)),
                color: Colors.black,
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.5),
                      offset: Offset(0, 0),
                      blurRadius: 3,
                      spreadRadius: 0)
                ]),
          ),
          Container(
            margin: EdgeInsets.only(
                top: deskH_t + 6,
                right: deskW_r + 27,
                left: deskW_l + 27,
                bottom: deskH_b + 27.5),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/poker-table.jpg'),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.all(Radius.elliptical(130, 200)),
            ),
          ),
        ],
      ),
    );
  }
}

