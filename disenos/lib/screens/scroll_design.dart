import 'package:flutter/material.dart';


class ScrollScreen extends StatelessWidget {

  final boxDecoration = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.5,0.5],
      colors: [
        Color(0xff5EE8C5),
        Color(0Xff30BAD6),
      ]
    )
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: boxDecoration,
        child: PageView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
            Page1(),
            Page2()
          ],
        ),
      )
    );
  }
}

class Page1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //Background
        Background(),
        //Contenido principal (MainContent)
        MainContent()
      ],
     );
  }
}

class Background extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff30BAD6),
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: Image(image: AssetImage('assets/scroll-1.png')));
  }
}

class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final formato = TextStyle(fontSize: 60, fontWeight: FontWeight.bold, color: Colors.white);

    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('11°', style: formato),
          Text('Miércoles', style: formato),
          // Text('Espacio en blanco jaja'),
          Expanded(child: Container()),
          Icon(Icons.keyboard_arrow_down, size: 100, color: Colors.white)
        ],
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final boton_design = ElevatedButton(
    style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all(Colors.blue.shade900),
    shape: MaterialStateProperty.all(StadiumBorder()),
  ),
  child: Padding(
    padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
    child: Text(
      'Bienvenidos',
      style: TextStyle(color: Colors.white, fontSize: 20.0),
    ),
  ),
    onPressed: () {},
  );

  @override
  Widget build(BuildContext context) {
        return Container(
          color: Color(0xff30BAD6),
          child: Center(
            child: boton_design,
      ),
    );
  }
}