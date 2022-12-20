import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pet_store/home.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.red),
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}
class _SplashScreenState extends State {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Home()));
    });
  }
        @override
        Widget build(BuildContext context)
    {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/icons/cat logo.png"),
              const Text(
                "Pet Store",
                style: TextStyle(fontSize: 40, color: Colors.amber),
              )
              //Image(
              //image: AssetImage("assets/icons/cat logo.png"),
              // height: 200,
              // width: 200,
              //),
            ],
          ),
        ),
      );
    }
  }
