import 'package:flutter/material.dart';

class Hobbys extends StatelessWidget{
  const Hobbys({super.key});

  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Text(
              "งานอดิเรก",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 24)
            )
          ),
          this.detailHobbyRow(Icons.album, "ฟังเพลง"),
          this.detailHobbyRow(Icons.piano, "เล่นดนตรี (กีตาร์, คีย์บอร์ด)"),
          this.detailHobbyRow(Icons.auto_stories, "อ่านหนังสือการ์ตูน"),
          this.detailHobbyRow(Icons.hotel_rounded, "งีบหลับ"),
          this.detailHobbyRow(Icons.gamepad, "เล่น Video game"),
          this.detailHobbyRow(Icons.directions_run, "วิ่งจ๊อกกิ้ง"),
          this.detailHobbyRow(Icons.podcasts, "ฟังเรื่องผี"),
        ]
      )
    );
  }

  Widget detailHobbyRow(IconData i, String d){
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Icon(i, size: 48)
          ),
          Expanded(
            flex: 8,
            child: Text(
              d,
              style: TextStyle(fontSize: 22),
              textAlign: TextAlign.left
            )
          )
        ]
      )
    );
  }
}