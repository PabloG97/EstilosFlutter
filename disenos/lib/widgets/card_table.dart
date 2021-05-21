import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
            _SingleCard(color: Colors.lightBlue.shade300, icon: Icons.wallet_giftcard, text: 'Wallet', ),
            _SingleCard(color: Colors.lightGreen.shade300, icon: Icons.sports_football_rounded, text: 'Sports', ),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(color: Colors.lightGreen.shade300, icon: Icons.sports_football_rounded, text: 'Sports', ),
            _SingleCard(color: Colors.pink.shade100, icon: Icons.pregnant_woman_outlined, text: 'Woman', ),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(color: Colors.lightBlue.shade300, icon: Icons.wallet_giftcard, text: 'Wallet', ),
            _SingleCard(color: Colors.lightGreen.shade300, icon: Icons.sports_football_rounded, text: 'Sports', ),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(color: Colors.lightGreen.shade300, icon: Icons.sports_football_rounded, text: 'Sports', ),
            _SingleCard(color: Colors.pink.shade100, icon: Icons.pregnant_woman_outlined, text: 'Woman', ),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(color: Colors.lightBlue.shade300, icon: Icons.wallet_giftcard, text: 'Wallet', ),
            _SingleCard(color: Colors.lightGreen.shade300, icon: Icons.sports_football_rounded, text: 'Sports', ),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(color: Colors.lightGreen.shade300, icon: Icons.sports_football_rounded, text: 'Sports', ),
            _SingleCard(color: Colors.pink.shade100, icon: Icons.pregnant_woman_outlined, text: 'Woman', ),
          ]
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {

  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard({Key? key,
  required this.icon, 
  required this.color,
  required this.text
  }) : super(key: key);
  
 // final decoration2 = 


  @override
  Widget build(BuildContext context) {
    
    final boxDecoration = BoxDecoration(
      color: Color.fromRGBO(62, 66, 107, 0.7),
      borderRadius: BorderRadius.circular(15),
    );


    return Container(
      margin: EdgeInsets.all(15.0),
      child: ClipRRect(
        
        borderRadius: BorderRadius.circular(15),
        child: BackdropFilter(
          
          filter: ImageFilter.blur( sigmaX: 5, sigmaY: 5 ),
          child: Container(
            
            height: 180.0,
            decoration: boxDecoration,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: color,
                  child: Icon(icon, size: 35, color: Colors.white,),
                  radius: 30,
                ),
                SizedBox(height: 15,),
                Text(text, style: TextStyle(color: color, fontSize: 15))
              ],
            ),
          ),
        ),
      ),
    );
  }
}