import 'package:core_flutter_exam/contents/website_bar.dart';
import 'package:core_flutter_exam/utils/arrivalsLlist.dart';
import 'package:core_flutter_exam/utils/category.dart';
import 'package:core_flutter_exam/utils/productList.dart';
import 'package:core_flutter_exam/utils/shoessize.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class arrivalscreen extends StatefulWidget {
  const arrivalscreen({super.key});

  @override
  State<arrivalscreen> createState() => _arrivalscreenState();
}

class _arrivalscreenState extends State<arrivalscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: bar(context)),
            Divider(
              height: 1,
              color: Colors.grey,
            ),
            //price filter
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 400,
                  padding: EdgeInsets.only(left: 50, top: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Brands",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600, fontSize: 16),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: List.generate(categories.length,
                              (index) => categorycheck(categories[index])),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 50, top: 20, bottom: 20),
                        child: Divider(
                          height: 1,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Price Range",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          trackHeight: 2,
                          rangeTrackShape: RectangularRangeSliderTrackShape(),
                          rangeThumbShape: RoundRangeSliderThumbShape(
                            enabledThumbRadius: 7,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 50),
                          child: RangeSlider(
                            min: 20000,
                            max: 100000,
                            activeColor: Colors.black,
                            values: RangeValues(val1, val2),
                            onChanged: (value) {
                              setState(() {
                                val1 = value.start;
                                val2 = value.end;
                              });
                            },
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 50,
                          ),
                          Text(
                            "${val1.toStringAsFixed(0)}WRF",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            "${val2.toStringAsFixed(0)}WRF",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 50, top: 30),
                        child: Divider(
                          height: 1,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Size",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 400,
                            width: 230,
                            child: GridView.builder(
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 4,
                                      mainAxisSpacing: 10,
                                      crossAxisSpacing: 10),
                              itemCount: size.length,
                              itemBuilder: (context, index) {
                                return sizecontainers(size[index]);
                              },
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),

                //products
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text(
                            "The new arrivals",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600, fontSize: 24),
                          ),
                        ),
                      ]),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                          height: 1300,
                          width: 1100,
                          child: GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    crossAxisSpacing: 10,
                                    mainAxisSpacing: 70),
                            itemCount: products.length,
                            itemBuilder: (context, index) {
                              return (products[index]['price'] >= val1 &&
                                      products[index]['price'] <= val2)
                                  ? arrivalcontainers(
                                      products[index]['image'],
                                      products[index]['price'],
                                      products[index]['name'])
                                  : null;
                            },
                          )),
                      // Row(
                      //   children: List.generate(
                      //       3,
                      //       (index) => (products1[index]['price'] >= val1 &&
                      //               products1[index]['price'] <= val2)
                      //           ? arrivalcontainers(
                      //               products1[index]['image'],
                      //               products1[index]['price'],
                      //               products1[index]['name'])
                      //           : Container()),
                      // ),
                      // Row(
                      //   children: List.generate(
                      //       3,
                      //       (index) => (products2[index]['price'] >= val1 &&
                      //               products2[index]['price'] <= val2)
                      //           ? arrivalcontainers(
                      //               products2[index]['image'],
                      //               products2[index]['price'],
                      //               products2[index]['name'])
                      //           : Container()),
                      // ),
                      // Row(
                      //   children: List.generate(
                      //       3,
                      //       (index) => (products3[index]['price'] >= val1 &&
                      //               products3[index]['price'] <= val2)
                      //           ? arrivalcontainers(
                      //               products3[index]['image'],
                      //               products3[index]['price'],
                      //               products3[index]['name'])
                      //           : Container()),
                      // ),

                      SizedBox(
                        height: 50,
                      ),

                      Container(
                        height: 150,
                        width: 1080,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset('assets/images/Group 37.png'),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Image.asset('assets/images/Group 22.png'),
                                ],
                              ),
                            ),
                            Text(
                              "Copyright 2021 © Sneaker City ltd",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500, fontSize: 14),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
