import 'package:flutter/material.dart';

class Works extends StatelessWidget{
  const Works({super.key});

  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Text(
              "ประวัติการทำงาน",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 24)
            )
          ),
          this.detailWorkRow("ห้างหุ้นส่วนจำกัด สตาร์เซอร์กิต (ฝึกงานระดับ ปวช.)", "\t\t\t\tProgrammer เขียนโปรแกรมระบบสมองกลฝังตัวและออกแบบวงจรอิเล็กทรอนิกส์"),
          this.detailWorkRow("ห้างหุ้นส่วนจำกัด สตาร์เซอร์กิต (ฝึกงานระดับ ปวส.)", "\t\t\t\tProgrammer เขียนโปรแกรมระบบสมองกลฝังตัวและออกแบบวงจรอิเล็กทรอนิกส์"),
          this.detailWorkRow("บริษัท บางกอก เว็บ โซลูชั่น จำกัด (ฝึกงานรัดับ ป.ตรี)", "\t\t\t\tSystem analyst ตรวจสอบเอกสารการบำรุงรักษาเว็บแอปพลิเคชั่นและทดสอบระบบการทำงาน")
        ]
      )
    );
  }

  Widget detailWorkRow(String h, String d){
    return Container(
      margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            child: Text(
              h,
              style: TextStyle(fontSize: 24)
            )
          ),
          Container(
            width: double.infinity,
            child: Text(
              d,
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.left
            )
          ),
        ]
      )
    );    
  }
}