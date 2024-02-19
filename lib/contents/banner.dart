import 'package:core_flutter_exam/utils/bannerlist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget banner(double width) {
  return Container(
    height: 656,
    width: width,
    decoration: BoxDecoration(
      color: Color(0xffFDFBFB),
    ),
    child: Stack(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20, top: 40),
                  child: Text(
                    "Puma\nRunning Sx",
                    style: GoogleFonts.baskervville(
                        fontWeight: FontWeight.w600, fontSize: 72, height: 1.2),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "The shoe that moved mountains for eternity and still does so\nwith a swift touch of modernism",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "62, 000RWF",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700, fontSize: 24),
                ),
                SizedBox(
                  height: 70,
                ),
                Container(
                  height: 44,
                  width: 135,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xffd90429),
                  ),
                  child: Text(
                    "Add to Cart",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 340),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 500,
                  width: 500,
                  child: Container(
                    height: 464,
                    width: 464,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xffEFEEF5),
                              Color(0xffF3E7E9),
                            ])),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 550,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: List.generate(bannerL.length,
                        (index) => bannercontainers(bannerL[index])),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      Positioned(
          top: 50,
          left: 720,
          child: Image.asset('assets/images/home banner.png'))
    ]),
  );
}

Widget bannercontainers(String imagepath) {
  return Container(
    margin: EdgeInsets.only(right: 10),
    height: 60,
    width: 76,
    alignment: Alignment.center,
    decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xffEFEEF5),
              Color(0xffF3E7E9),
            ]),
        borderRadius: BorderRadius.circular(10)),
    child: Image.asset(
      imagepath,
    ),
  );
}
