import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Classify transaction', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white)),
            SizedBox(height: 10.0),
            Text('Classify this transaction into a particular category', style: TextStyle(fontSize: 17.0, color: Colors.white)),
          ],
        ),
      ),    
    );
  }
}