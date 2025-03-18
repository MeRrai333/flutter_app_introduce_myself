import 'package:flutter/material.dart';

import 'package:hw_2_1165304620297_methit/person.dart';
import 'package:hw_2_1165304620297_methit/eudcation.dart';
import 'package:hw_2_1165304620297_methit/works.dart';
import 'package:hw_2_1165304620297_methit/hobbys.dart';
import 'package:hw_2_1165304620297_methit/contact.dart';

void main() {
  runApp(const MyApp());
}

/* ----- MyApp Class ----- */
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: DefaultTabController(length: 5, child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Introduce myself | Methit Sompitak",
            style: TextStyle(color: Colors.blue)
          ),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.person, color: Colors.black38,)),
              Tab(icon: Icon(Icons.school, color: Colors.cyan)),
              Tab(icon: Icon(Icons.work_rounded, color: Colors.brown)),
              Tab(icon: Icon(Icons.sports_gymnastics, color: Colors.blueAccent)),
              Tab(icon: Icon(Icons.perm_phone_msg_rounded, color: Colors.blueGrey))
            ],
          ),
        ),
        body: TabBarView(children: [
          /*Container(
            color: Colors.black,
            child: Text("test"),
          ),*/
          Person(),
          Education(),
          Works(),
          Hobbys(),
          Contact()
        ])
      )),
    );
  }
}
/* ----- MyApp Class ----- */