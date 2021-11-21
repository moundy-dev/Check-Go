import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Vetement_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage('image/vetements.png'),
          fit: BoxFit.fitWidth,
          alignment: FractionalOffset.topCenter,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
        ),
      ),

    );
  }
}