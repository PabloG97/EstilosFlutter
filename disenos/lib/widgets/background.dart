import 'dart:math';

import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  final boxDecoration = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.2,0.8],
      
      colors: [
        Color(0xff2E305F),
        Color(0xff202333),
      ]
    )
  );
 
 
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        //Gradiente de morado
        Container(
          decoration: boxDecoration,
        
        ),
        //Caja Rosada :)

        Positioned(
          top: -25.0,
          child: _PinkBox()
        ),

      ],
    );
  }
}

class _PinkBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      
      angle: -pi/8,
      child: Container(
        width: 250.0,
        height: 250.0,
        decoration: BoxDecoration(
          color: Colors.lightBlue,
          borderRadius: BorderRadius.circular(25),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1),
              Color.fromRGBO(241, 142, 172, 1)
            ]
          )
        ),
      ),
    );
  }
}