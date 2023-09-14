import 'package:flutter/material.dart';

class Elevatedbtncustom extends StatelessWidget {
String label;
Color btncolor;
VoidCallback onpressed;
Elevatedbtncustom({required this.label,required this.btncolor,required this.onpressed});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(

        onPressed: onpressed,
        child: Text(label,style: TextStyle(
          color: Colors.black,
          fontSize: 20
        ),),
    style: ElevatedButton.styleFrom(
      backgroundColor: btncolor,
      padding: EdgeInsets.all(12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),)
    ;
  }
}
