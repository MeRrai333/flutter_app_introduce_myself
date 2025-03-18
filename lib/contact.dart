import 'package:flutter/material.dart';

class Contact extends StatelessWidget{
  const Contact({super.key});

  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Text(
              "ติดต่อ",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 24)
            )
          ),
          this.detailContactRow(Icons.local_phone, "094-4099161", 22),
          this.detailContactRow(Icons.email, "1165304620297@mail.rmutt.ac.th", 18),
          this.detailContactRow(Icons.location_city, "ปทุมธานี-กรุงเทพฯ", 22),
        ]
      )
    );
  }
  Widget detailContactRow(IconData i, String d, double fd){
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
      child:  Row(
        children: [
          Expanded(flex: 2, child: Icon(i, size: 48)),
          Expanded(flex: 8, child: Text(
            d,
            style: TextStyle(fontSize: fd),
            textAlign: TextAlign.left,
          )),
        ]
      )
    );
  }
}