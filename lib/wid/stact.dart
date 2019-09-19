import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
        return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
              child: Container(
                color: Colors.blue,
            height: 50,
          )
          ),
          
          Expanded(
              flex: 6,
              child: Container(
                color: Colors.white,
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Container(
                      color: Colors.white,
                      height: 800,
                      width: 500,
                    ),
                    Container(
                      color: Colors.red,
                      height: 800,
                      width: 300,
                    ),
                    Container(
                      color: Colors.black,
                      height: 450,
                      width: 200,
                    ),
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(100))
                      ),
                    ),
                  ],
                ),
              )),
              
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.blueAccent,
                height: 50,
              ))
        ],
      ),
    );
  }
}