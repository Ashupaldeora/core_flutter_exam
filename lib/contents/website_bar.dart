import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget bar(BuildContext context) {
  return Container(
    height: 90,
    decoration: BoxDecoration(
        color: Color(0xffFDFBFB),
        border:
            Border(bottom: BorderSide(width: 1, color: Colors.grey.shade700))),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Image.asset('assets/images/sc icon.png'),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('/arrival');
            },
            child: Text(
              "New Arrival",
              style: GoogleFonts.poppins(
                  fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            "Men",
            style:
                GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            "Women",
            style:
                GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            "Kids",
            style:
                GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ]),
        Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/cart');
                  },
                  icon: Image.asset('assets/Icons/fi_shopping-cart.png')),
              SizedBox(
                width: 10,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/Icons/fi_heart.png')),
              SizedBox(
                width: 10,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/Icons/fi_user.png')),
              SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
