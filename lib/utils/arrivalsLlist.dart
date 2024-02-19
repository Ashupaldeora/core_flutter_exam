import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

List arrivals = [
  {
    'image': 'assets/images/Rectangle 19.png',
    'name': 'Adiddas Beluga',
    'price': 35000
  },
  {
    'image': 'assets/images/Rectangle 24.png',
    'name': 'Nike Zoom',
    'price': 35000
  },
  {
    'image': 'assets/images/Rectangle 25.png',
    'name': 'Nike Air Jordan XT',
    'price': 35000
  },
  {
    'image': 'assets/images/Rectangle 26.png',
    'name': 'Nike Wobler',
    'price': 35000
  }
];

Widget arrivalcontainers(String path, int price, String name) {
  return Container(
    margin: EdgeInsets.only(left: 30),
    height: 414,
    width: 329,
    decoration: BoxDecoration(),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            height: 308,
            width: 329,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xfff5f5f5),
            ),
            child: Image.asset(path)),
        SizedBox(
          height: 10,
        ),
        Text(
          name,
          style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 10,
        ),
        Text('${price}RWF',
            style: GoogleFonts.poppins(
                fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey))
      ],
    ),
  );
}
