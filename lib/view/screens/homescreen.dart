import 'package:core_flutter_exam/contents/banner.dart';
import 'package:core_flutter_exam/contents/website_bar.dart';
import 'package:core_flutter_exam/utils/arrivalsLlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            bar(context),
            banner(width),
            SizedBox(
              height: 70,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Text(
                    "All the new arrivals",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700, fontSize: 24),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Row(
                children: List.generate(
                    arrivals.length,
                    (index) => arrivalcontainers(arrivals[index]['image'],
                        arrivals[index]['price'], arrivals[index]['name'])),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Image.asset('assets/images/Group 35.png')],
            ),
            SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/Group 30.png'),
              ],
            ),
            SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 150, right: 150, top: 100),
              child: Divider(
                height: 1,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Container(
              height: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/Group 29.png'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
