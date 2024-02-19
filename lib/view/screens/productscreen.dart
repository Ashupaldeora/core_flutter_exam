import 'package:core_flutter_exam/contents/banner.dart';
import 'package:core_flutter_exam/contents/website_bar.dart';
import 'package:core_flutter_exam/utils/arrivalsLlist.dart';
import 'package:core_flutter_exam/utils/cart.dart';
import 'package:core_flutter_exam/utils/quantity.dart';
import 'package:core_flutter_exam/utils/total.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/shoessize.dart';

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
        child: pscreen(productshow),
      ),
    );
  }

  Widget pscreen(List Perfect) {
    return Column(
      children: [
        InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: bar(context)),
        Row(
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(50),
                  width: 1000,
                  decoration: BoxDecoration(color: Color(0xfff5f5f5)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            Perfect[0]['name'],
                            style: GoogleFonts.poppins(
                                fontSize: 36, fontWeight: FontWeight.w700),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Image.asset('assets/Icons/fi_heart.png')),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            "${Perfect[0]['price']} WF",
                            style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff000000)),
                          )
                        ],
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_back_ios)),
                            Image.asset(
                              Perfect[0]['image'],
                              height: 400,
                              fit: BoxFit.cover,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_forward_ios)),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            arrivals.length,
                            (index) =>
                                bannercontainers(arrivals[index]['image']),
                          ))
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 30),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Description",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500, fontSize: 16),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset(
                                    'assets/Icons/fi_chevron-up.png'),
                              )
                            ],
                          ),
                          Text(
                            "The Jordan Delta 2 offers a fresh, fearless take on the features you want: durability, comfort and an attitude that's Jordan to the core. We updated design lines and swapped out some components. The 2 still has that clashing combination of supportive and space age-like materials, with lots of different textures and heavy stitching to create a look that's both adventurous and iconic.",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey.shade800,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Divider(
                            height: 1,
                            color: Colors.grey.shade700,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              Text(
                                "Select size",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500, fontSize: 16),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 430,
                                height: 247,
                                child: GridView.builder(
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 6,
                                          mainAxisSpacing: 10,
                                          crossAxisSpacing: 10),
                                  padding: EdgeInsets.all(20),
                                  itemCount: size.length,
                                  itemBuilder: (context, index) {
                                    return sizecontainers(size[index]);
                                  },
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (Perfect[0]['quantity'] > 1) {
                                        Perfect[0]['quantity']--;
                                      }
                                      finalamount = total();
                                    });
                                  },
                                  icon: Icon(
                                    Icons.remove,
                                    color: Colors.black,
                                  )),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child:
                                    quantitycontainer(Perfect[0]['quantity']),
                              ),
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      Perfect[0]['quantity']++;
                                      finalamount = total();
                                    });
                                  },
                                  icon: Icon(
                                    Icons.add,
                                    color: Colors.black,
                                  )),
                              SizedBox(
                                width: 20,
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    cart.add(Perfect[0]);
                                    finalamount = total();
                                  });
                                },
                                child: Container(
                                  height: 44,
                                  width: 135,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Color(0xffd90429),
                                  ),
                                  child: Text(
                                    "Add to cart",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 16,
                                        letterSpacing: -0.5,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
