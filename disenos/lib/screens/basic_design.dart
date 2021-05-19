import 'dart:ui';

import 'package:flutter/material.dart';


class BasicDesignScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(image: AssetImage('assets/landscape.jpg')),
          // Titulo y calficación
          Tiitle(),
          //ButtomSection
          ButtonSection(),
          //TextArea
          TextArea()
      ],
    )
   );
  }
}




class Tiitle extends StatelessWidget {
  const Tiitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 35.0, vertical: 25.0),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Imagen
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Santa María', style: TextStyle(fontWeight: FontWeight.bold),),
              Text('Quetzaletenango, Guatemala', style: TextStyle( color: Colors.black54),)
            ],
          ),
          Expanded( child: Container()),
          // 
          Icon( Icons.star, color: Colors.cyan.shade400),
          Text('96')
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.symmetric(horizontal: 65.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButton( icon: Icons.call,text: 'Call'),
          CustomButton( icon: Icons.card_giftcard,text: 'Route'),          
          CustomButton( icon: Icons.share,text: 'Share'),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  
  final IconData icon;
  final String text;

  const CustomButton({
    Key? key,
    required this.icon, 
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(this.icon, color: Colors.lightBlue.shade800, size: 35.0,),
        Text(this.text),
      ]
    );
  }
}

class TextArea extends StatelessWidget {
  const TextArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 35.0),
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Text(' Mucho texto, Mucho texto, Mucho texto, Mucho texto, Mucho texto, Mucho texto, Mucho texto, Mucho texto, Mucho texto, Mucho texto, Mucho texto, Mucho texto, Mucho texto, Mucho texto, Mucho texto, Mucho texto, Mucho texto, Mucho texto, Mucho texto, Mucho texto, Mucho texto, Mucho texto, Mucho texto, Mucho texto, Mucho texto, Mucho texto, Mucho texto, Mucho texto, Mucho texto, Mucho texto, Mucho texto, Mucho texto, Mucho texto, Mucho texto, Mucho texto, Mucho texto, Mucho texto, Mucho texto, Mucho texto, Mucho texto, Mucho texto, Mucho texto, Mucho texto, Mucho texto, Mucho texto, Mucho texto, Mucho texto,  '),
    );
  }
}