import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: const Center(
        child: Text(
          "Welcome",
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
