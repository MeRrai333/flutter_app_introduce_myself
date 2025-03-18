import 'package:flutter/material.dart';

class Education extends StatelessWidget{
  const Education({super.key});

  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Text(
              "การศึกษา",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 24)
            ),
          ),
          this.detailEducationRow("assets/images/education4.jpg", "ปัจจุบัน", "มหาวิทยาลัยเทคโนโลยีราชมงคลธัญบุรี", 22),
          this.detailEducationRow("assets/images/education3.jpg", "ระดับปวส.", "วิทยาลัยเทคนิคมีนบุรี", 22),
          this.detailEducationRow("assets/images/education3.jpg", "ระดับปวช.", "วิทยาลัยเทคนิคมีนบุรี", 22),
          this.detailEducationRow("assets/images/education2.jpg", "ระดับมัธยมตอนต้น", "โรงเรียนมีนประสาทวิทยา", 22),
          this.detailEducationRow("assets/images/education1.png", "ระดับประถมศึกษา", "โรงเรียนดรุณาราชบุรี", 22)
        ],
      ),
    ); 
  }
  
  Widget detailEducationRow(String img, String h, String sn, double fs){
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            child: Text(
              h,
              style: TextStyle(fontSize: 22),
              textAlign: TextAlign.left,
            ),
          ),
          Image.asset(img),
          Text(
            sn,
            style: TextStyle(fontSize: fs),
            textAlign: TextAlign.center,
          )
        ]
      ),
    );
  }
}