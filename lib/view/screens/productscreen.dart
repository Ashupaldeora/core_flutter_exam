import 'package:core_flutter_exam/contents/website_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class productscreen extends StatefulWidget {
  const productscreen({super.key});

  @override
  State<productscreen> createState() => _productscreenState();
}

class _productscreenState extends State<productscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            bar(context),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(50),
                      height: 635,
                      width: 800,
                      decoration: BoxDecoration(color: Colors.yellow),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Jordan Delata 2",
                                style: GoogleFonts.poppins(
                                    fontSize: 36, fontWeight: FontWeight.w700),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon:
                                      Image.asset('assets/Icons/fi_heart.png')),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                "78, 000RWF",
                                style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff000000)),
                              )
                            ],
                          ),
                          Row(
                            children: [],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        height: 635,
                        decoration: BoxDecoration(color: Colors.pink),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
