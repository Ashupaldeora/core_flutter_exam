import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

List categories = ['Nike', 'Jordan', 'Adidas', 'Fila', 'Gucci', 'Balenciaga'];

Widget categorycheck(String name) {
  return Row(
    children: [
      Container(
        height: 14,
        width: 14,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.grey, width: 1)),
      ),
      SizedBox(
        width: 5,
      ),
      Text(
        name,
        style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),
      )
    ],
  );
}

double val1 = 20000;
double val2 = 100000;
