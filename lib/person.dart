import 'package:flutter/material.dart';

class Person extends StatelessWidget {
  const Person({super.key});

  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Text(
              "ข้อมูลส่วนตัว",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 24)
              ),
            ),
            ClipOval(
              child: SizedBox.fromSize(
                size: Size.fromRadius(128),
                child: Image.asset("assets/images/methit.jpg")
              )
            ),
            this.detailRow(2, "ชื่อ", "นาย เมธิส สมพิทักษ์", 20, 20),
            this.detailRow(2, "อายุ", "22 ปี", 20, 20),
            this.detailRow(2, "วันเกิด", "20 กุมภาพันธ์ พ.ศ. 2545", 20, 20),
            this.detailRow(2, "บ้านเกิด", "ราชบุรี", 20, 20),
            this.detailRow(4, "อาหารที่ชอบ", "หม้อไฟ, อาหารรสจืด", 20, 20),
            this.detailRow(4, "เครื่องดื่มที่ชอบ", "กาแฟสด, นมถั่วเหลือง", 20, 20),
        ]
      ),
    );
  }

  Widget detailRow(int f, String r1, String r2, double fs1, double fs2){
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(20, 10, 10, 20),
      child: Row(
        children: [
          Expanded(
            flex: f, // 2
            child: //Container(color: Colors.blue, child: Text("test"))
            Text(
              r1,
              style: TextStyle(fontSize: fs1)
            ),
          ),
          Expanded(
            flex: 10-f, // 10-2 -> 8
            child: //Container(color: Colors.amber, child: Text("test"))
            Text(
              r2,
              style: TextStyle(fontSize: fs2)
            ),
          ),
        ],
      ),
    );
  }
}