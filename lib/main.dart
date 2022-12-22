import 'dart:async';

import 'package:flutter/material.dart';
//import 'package:pet_store/home.dart';
import 'package:pet_store/login%20with%20validation.dart';


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
          context, MaterialPageRoute(builder: (context) => LoginForm()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        /// set color for screen background
        //color: Colors.red,
        /// set image for screen background
        // decoration: const BoxDecoration(
        //     image: DecorationImage(
        //         fit:BoxFit.cover,
        //         image:AssetImage(
        //            "assets/icons/cat logo.png"))),
        ///set background image from Network
        //decoration: BoxDecoration(
        //   image: DecorationImage(
        //       fit: BoxFit.cover,
        //       image: AssetImage("assets/images/4k-wallpaper.jpg")
        // image: NetworkImage("https://previews.123rf.com/images/lisaanfisa/lisaanfisa1506/lisaanfisa150600026/41666617-pet-shop-background-with-pets-.jpg")
        //      )),

        /// set gradient for screen background
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.topRight,
                colors: [Colors.blue, Colors.purple, Colors.green])),
        child: Center(
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
      ),
    );
  }
}
