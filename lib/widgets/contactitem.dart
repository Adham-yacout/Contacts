import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Contactitem extends StatelessWidget {
String name;
String phone;
bool isvisible;
Contactitem({ this.name='',this.phone='', this.isvisible=false});
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isvisible,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(25),
        margin: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Name:${name}",
              style: TextStyle(fontSize: 16),
                ),
            Text("Phone:${phone}",style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
