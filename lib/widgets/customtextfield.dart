import 'package:flutter/material.dart';

class Customtextfield extends StatelessWidget {
String texthint;
IconData usedicon;
TextEditingController controller;
Customtextfield({required this.texthint,
  required this.usedicon,
required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: TextField(
controller: controller,
  decoration: InputDecoration(
      fillColor: Colors.white,
      filled: true,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
    hintText: texthint ,
    hintStyle: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 17,

    ),
    suffixIcon: Icon(usedicon,color: Colors.blue),
  ),
      ),
    );
  }
}
