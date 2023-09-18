import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: secondaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            IntroWidget(size: size),
            RecentCompanyWidget(
              title: "Previous Company",
              listItem: Container(
                margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.all(10.0),
                color: Colors.white,
                child: Column(
                  children: [
                    Text('Making a design system from scratch',
                        style: GoogleFonts.heebo(
                          color: darkColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        children: [
                          Text('12 Feb 2020',
                              style: GoogleFonts.heebo(
                                color: darkColor,
                                fontSize: 16,
                              )),
                          Container(
                            color: lightColor,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            width: 3,
                            height: 20,
                          ),
                          Text('Design, Pattern',
                              style: GoogleFonts.heebo(
                                color: darkColor,
                                fontSize: 16,
                              )),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Text(
                          'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',
                          style: GoogleFonts.heebo(
                            color: darkColor,
                            fontSize: 16,
                          )),
                    )
                  ],
                ),
              ),
            ),
            RecentCompanyWidget(
              title: "Featured worked On",
              listItem: Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.white,
                child: Column(
                  children: [
                    Image.asset("assets/images/task.png"),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text('Making a design system from scratch',
                          style: GoogleFonts.heebo(
                            color: darkColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        children: [
                          Text('12 Feb 2020',
                              style: GoogleFonts.heebo(
                                color: darkColor,
                                fontSize: 16,
                              )),
                          Container(
                            color: lightColor,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            width: 3,
                            height: 20,
                          ),
                          Text('Design, Pattern',
                              style: GoogleFonts.heebo(
                                color: darkColor,
                                fontSize: 16,
                              )),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Text(
                          'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',
                          style: GoogleFonts.heebo(
                            color: darkColor,
                            fontSize: 16,
                          )),
                    ),
                    Container(
                      color: Colors.grey.shade200,
                      margin: EdgeInsets.symmetric(vertical: 5.0),
                      width: size.width,
                      height: 1,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(80),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/icons/github.svg",
                          height: 30, width: 30),
                      SizedBox(
                        width: 30.0,
                      ),
                      SvgPicture.asset("assets/icons/linkedin.svg",
                          height: 30, width: 30),
                      SizedBox(
                        width: 30.0,
                      ),
                      SvgPicture.asset("assets/icons/stack.svg",
                          height: 30, width: 30),
                      SizedBox(
                        width: 30.0,
                      ),
                      SvgPicture.asset("assets/icons/gmail.svg",
                          height: 30, width: 30),
                    ],
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Text('Copyright ©2020 All rights reserved ',
                      style: GoogleFonts.heebo(
                        color: darkColor,
                        fontSize: 14,
                      )),
                ],
              ),
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class RecentCompanyWidget extends StatelessWidget {
  final String title;
  final Widget listItem;

  const RecentCompanyWidget({
    required this.title,
    required this.listItem,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: Text('Previous Company',
              textAlign: TextAlign.center,
              style: GoogleFonts.heebo(
                color: darkColor,
                fontSize: 18,
              )),
        ),
        ListView.builder(
            padding: EdgeInsets.only(top: 5),
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return listItem;
            },
            itemCount: 3)
      ],
    );
  }
}

class IntroWidget extends StatelessWidget {
  const IntroWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: size.width / 4,
          ),
          ImageWidget(),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Text('Hi, I am John,\nSenior Flutter Dev',
                textAlign: TextAlign.center,
                style: GoogleFonts.heebo(
                    color: darkColor,
                    fontWeight: FontWeight.w900,
                    height: 0,
                    fontSize: 35)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',
                textAlign: TextAlign.center,
                style: GoogleFonts.heebo(
                  color: darkColor,
                  fontSize: 16,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: ElevatedButton(
              style: TextButton.styleFrom(
                backgroundColor: primaryColor,
              ),
              onPressed: () {},
              child: Text('Download CV',
                  style: GoogleFonts.heebo(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
            ),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 250,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(200), boxShadow: [
        BoxShadow(color: Colors.grey, blurRadius: 10, offset: Offset(0, 2)),
      ]),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(200),
          child: Image.asset(
            'assets/images/my_profile.jpeg',
            fit: BoxFit.cover,
          )),
    );
  }
}
