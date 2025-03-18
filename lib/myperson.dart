import 'package:flutter/material.dart';

class MyPerson extends StatelessWidget {
  const MyPerson({super.key});

  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      child: Column(
        children: [
          const Text(
            "นายเมธิส สมพิทักษ์\n116530462029-7\n",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24),  
          ),
          Image.asset("assets/images/methit.jpg")
        ]
      ),
    );
  }
}