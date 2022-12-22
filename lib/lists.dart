import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class L_ist extends StatefulWidget {
  @override
  State<L_ist> createState() => _L_istState();
}

class _L_istState extends State<L_ist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Pet Store'),
      ),
      body: ListView(
        children: [
              Card(
                shadowColor: Colors.red,
                color: Colors.lightGreenAccent,
                child: ListTile(
                  title: Text("Pet Store 1"),
                  subtitle: Text("Description"),
                  leading:CircleAvatar(
                      backgroundImage: NetworkImage ('https://images.pexels.com/photos/1108099/pexels-photo-1108099.jpeg')),
                  trailing:Wrap(
                    children: [
                      Icon(Icons.message),
                      SizedBox(width: 20,),
                      Icon(Icons.phone)
                    ],
                  ),
                  ),
              ),
              Card(
                child: ListTile(
                  title: Text("Pet Store 2"),
                  subtitle: Text("Description"),
                  leading: Icon(Icons.ac_unit),
                  trailing: Icon(Icons.phone),),
              ),
              ListTile(
                title: Text("Pet Store 3"),
                subtitle: Text("Description"),
                leading: Icon(Icons.ac_unit),
                trailing: Icon(Icons.phone),),
              ListTile(
                title: Text("Pet Store 4"),
                subtitle: Text("Description"),
                leading: Icon(Icons.ac_unit),
                trailing: Icon(Icons.phone),),
              ListTile(
                title: Text("Pet Store 5"),
                subtitle: Text("Description"),
                leading: Icon(Icons.ac_unit),
                trailing: Icon(Icons.phone),),
              // Text("Pet Store 2"),
              // Text("Pet Store 3"),
              // Text("Pet Store 4"),
              // Text("Pet Store 5"),
            ],
      ),
    );
  }
}