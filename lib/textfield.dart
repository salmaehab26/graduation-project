import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class textfield extends StatelessWidget {
  String hintText;
   textfield({required this.hintText,super.key});

  @override
  Widget build(BuildContext context) {
      return Material(
        elevation: 2,
        shadowColor: Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextField(
          decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
             
                letterSpacing: 2,
                color: Color.fromRGBO(29, 93, 37,1),
                fontWeight: FontWeight.w800,
              ),
              fillColor:Color.fromRGBO(230, 255, 234, 1),
              filled: true,
              border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none)),
        ),
      );
  }
}
