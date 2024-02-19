import 'package:core_flutter_exam/contents/website_bar.dart';
import 'package:core_flutter_exam/utils/cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/quantity.dart';
import '../../utils/total.dart';

class cartscreen extends StatefulWidget {
  const cartscreen({super.key});

  @override
  State<cartscreen> createState() => _cartscreenState();
}

class _cartscreenState extends State<cartscreen> {
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
              child: Container(
                height: 600,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Your shopping cart',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500, fontSize: 24),
                        ),
                        Column(
                          children: List.generate(
                              cart.length,
                              (index) => cartcontainers(
                                  cart[index]['image'],
                                  cart[index]['price'],
                                  cart[index]['name'],
                                  cart[index]['quantity'],
                                  index)),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 500,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Order summary",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: Colors.grey.shade800),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Sub total",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                          color: Colors.grey.shade800),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "Delivery fee ",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                          color: Colors.grey.shade800),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "${finalamount}RFW",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                          color: Colors.black),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      (cart.isNotEmpty) ? "500RWF" : "0RWF",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                          color: Colors.black),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Divider(
                              height: 1,
                              color: Colors.grey.shade400,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  (cart.isNotEmpty)
                                      ? "${finalamount + 500}RFW"
                                      : "0RWF",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Container(
                              height: 44,
                              width: 217,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xffd90429),
                              ),
                              child: Text(
                                "Proceed to checkout",
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Divider(
                height: 10,
                color: Colors.grey.shade400,
              ),
            ),
            // SizedBox(
            //   height: 50,
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/images/Group 37.png'),
                  Spacer(),
                  Image.asset('assets/images/Group 22.png'),
                  Spacer(),
                  Text(
                    "Copyright  2021 © Sneaker City ltd",
                    style: GoogleFonts.poppins(
                        color: Colors.grey.shade800,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget cartcontainers(
      String image, int price, String name, int quantity, int index) {
    return Container(
      height: 128,
      width: 880,
      margin: EdgeInsets.only(top: 30),
      decoration: BoxDecoration(color: Color(0xfff5f5f5)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          children: [
            Container(
              height: 80,
              width: 96,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(8)),
              child: Image.asset(image),
            ),
            SizedBox(
              width: 20,
            ),
            Text.rich(
              TextSpan(children: [
                TextSpan(
                  text: "$name\n",
                  style: GoogleFonts.poppins(
                      fontSize: 16, fontWeight: FontWeight.w400),
                ),
                TextSpan(
                  text: "${price}RWF",
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey.shade700),
                )
              ]),
            ),
            SizedBox(
              width: 180,
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        if (cart[index]['quantity'] > 1) {
                          cart[index]['quantity']--;
                        } else {
                          cart.removeAt(index);
                        }
                        finalamount = total();
                      });
                    },
                    icon: Icon(
                      Icons.remove,
                      color: Colors.black,
                    )),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: quantitycontainer(quantity),
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        cart[index]['quantity']++;
                        finalamount = total();
                      });
                    },
                    icon: Icon(
                      Icons.add,
                      color: Colors.black,
                    )),
              ],
            ),
            Spacer(),
            Text(
              "${price}RWF",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
