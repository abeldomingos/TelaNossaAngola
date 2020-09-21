import 'package:flutter/material.dart';

//class principal just StatelessW, tranformada.
class Principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('NOSSA ANGOLA'),
          // automaticallyImplyLeading: false,
          centerTitle: true,
        ),
        body: Card(
          child: Column(
            children: <Widget>[
              Image.asset('assets/angola.png', height: 210),
              Text(
                'SEJA BEM VINDO',
                style: TextStyle(fontSize: 20.0),
              ),
              Text(
                'NOSSA ANGOLA',
                style: TextStyle(fontSize: 40.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
