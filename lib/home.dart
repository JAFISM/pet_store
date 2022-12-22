import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Login Page"),
      ),
      body: Column(
        children: [
          const Text(
            "Login Page",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 30, color: Colors.deepOrange),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_box_sharp),
                  hintText: "Enter Username",
                  labelText: "USERNAME",
                  border: OutlineInputBorder(

                      borderRadius: BorderRadius.circular(30))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
            child: TextField(
              obscureText: true,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.visibility_off),
                  suffixIcon: Icon(Icons.visibility),
                  hintText: "Enter password",
                  labelText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100))),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Fluttertoast.showToast(
                    msg: "please! login your account",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    // timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0);
              },
              child: const Text("Login")),
          const SizedBox(
            height: 10,
          ),
          TextButton(
              onPressed: () {}, child: const Text("Not a User,Register Here"))
        ],
      ),
    );
  }
}
