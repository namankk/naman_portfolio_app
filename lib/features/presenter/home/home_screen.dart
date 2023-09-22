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
            const NavBarWidget(),
            IntroWidget(size: size),
            RecentCompanyWidget(
              title: "Previous Company",
              listItem: Container(
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(10.0),
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
                            margin: const EdgeInsets.symmetric(horizontal: 5.0),
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
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Text(
                          "I'm passionate about building high-quality, user-friendly mobile apps. I have a deep understanding of the Flutter framework and its capabilities, and I'm always looking for new ways to use it to create innovative and engaging apps.",
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
            const FooterWidget()
          ],
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    margin: EdgeInsets.only(top: 60.0, bottom: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),

                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'assets/images/drawer_pic.jpeg',
                          fit: BoxFit.fitHeight,
                        )),
                  ),
                  Text('Naman Kashyap',
                      style: GoogleFonts.heebo(
                          color: darkColor,
                          fontWeight: FontWeight.w800,
                          height: 0,
                          fontSize: 22)),
                  const SizedBox(
                    height: defaultPadding / 4,
                  ),
                  Text('Senior Flutter Developer',
                      style: GoogleFonts.heebo(
                          color: darkColor,
                          fontWeight: FontWeight.w500,
                          height: 0,
                          fontSize: 19)),
                  RichText(
                    text: TextSpan(
                        text: "5+",
                        style: GoogleFonts.heebo(
                            fontWeight: FontWeight.w900,
                            height: 0,
                            color: primaryColor,
                            fontSize: 19),
                        children: [
                          TextSpan(
                              text: " Year Experience",
                              style: GoogleFonts.heebo(
                                  color: darkColor,
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                  fontSize: 19))
                        ]),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: Divider(color: Colors.grey),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 20, bottom: 10),
                child: Text(
                  "Contact Info",
                  style: GoogleFonts.heebo(
                      fontWeight: FontWeight.w700,
                      color: darkColor,
                      height: 0,
                      fontSize: 18),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, right: 15, bottom: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Email :",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "naman.kashyap12@gmail.com",
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, right: 15, bottom: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Phone No :",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "8791411463",
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Location :",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "India",
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 30),
                child: Text(
                  "Skills",
                  style: GoogleFonts.heebo(
                      fontWeight: FontWeight.w700,
                      color: darkColor,
                      height: 0,
                      fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 10.0),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/flutter.svg",
                      height: 15,
                      width: 15,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      "Flutter",
                      style: TextStyle(color: Colors.black),
                    ),
                    Spacer(),
                    SvgPicture.asset(
                      "assets/icons/dart.svg",
                      height: 15,
                      width: 15,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5, right: 15),
                      child: Text(
                        "Dart",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 5.0),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/android.svg",
                      height: 15,
                      width: 15,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Android",
                      style: TextStyle(color: Colors.black),
                    ),
                    Spacer(),
                    SvgPicture.asset(
                      "assets/icons/ios.svg",
                      height: 15,
                      width: 15,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5, right: 15),
                      child: Text(
                        "Ios",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 5.0),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/flutter.svg",
                      height: 15,
                      width: 15,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Bloc",
                      style: TextStyle(color: Colors.black),
                    ),
                    Spacer(),
                    SvgPicture.asset(
                      "assets/icons/dart.svg",
                      height: 15,
                      width: 15,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5, right: 15),
                      child: Text(
                        "Sqflite",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 5.0),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/flutter.svg",
                      height: 15,
                      width: 15,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "GetX",
                      style: TextStyle(color: Colors.black),
                    ),
                    Spacer(),
                    SvgPicture.asset(
                      "assets/icons/java.svg",
                      height: 15,
                      width: 15,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5, right: 15),
                      child: Text(
                        "Java",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 5.0),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/firebase.svg",
                      height: 15,
                      width: 15,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Firebase",
                      style: TextStyle(color: Colors.black),
                    ),
                    Spacer(),
                    SvgPicture.asset(
                      "assets/icons/git.svg",
                      height: 15,
                      width: 15,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5, right: 15),
                      child: Text(
                        "Git",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 5.0),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/postman.svg",
                      height: 15,
                      width: 15,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Postman",
                      style: TextStyle(color: Colors.black),
                    ),
                    Spacer(),
                    SvgPicture.asset(
                      "assets/icons/flutter.svg",
                      height: 15,
                      width: 15,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5, right: 15),
                      child: Text(
                        "Get It",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 25),
                child: Divider(color: Colors.grey),
              ),
              const Spacer(),
              const ConnectWithMeWidget(),
              const Spacer(flex: 3),
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class NavBarWidget extends StatelessWidget {
  const NavBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.sizeOf(context).width / 3,
          color: Colors.white,
          width: MediaQuery.sizeOf(context).width,
        ),
        Positioned(
          top: 40,
          left: 10,
          child: IconButton(
            icon: Icon(
              Icons.menu,
              size: 30,
              color: darkColor,
            ),
            onPressed: () {
              print("object");
              Scaffold.of(context).openDrawer();
            },
          ),
        )
      ],
    );
  }
}

class FooterWidget extends StatelessWidget {
  const FooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(80),
      child: const Column(
        children: [
          ConnectWithMeWidget(),
          SizedBox(
            height: 15.0,
          ),
        ],
      ),
    );
  }
}

class ConnectWithMeWidget extends StatelessWidget {
  const ConnectWithMeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset("assets/icons/github.svg", height: 30, width: 30),
        SizedBox(
          width: 30.0,
        ),
        SvgPicture.asset("assets/icons/linkedin.svg", height: 30, width: 30),
        SizedBox(
          width: 30.0,
        ),
        SvgPicture.asset("assets/icons/stack.svg", height: 30, width: 30),
        SizedBox(
          width: 30.0,
        ),
        SvgPicture.asset("assets/icons/gmail.svg", height: 30, width: 30),
      ],
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
          ImageWidget(),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Text('Hi, I am Naman,\nSenior Flutter Dev',
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
                "I'm passionate about building high-quality, user-friendly mobile apps. I have a deep understanding of the Flutter framework and its capabilities, and I'm always looking for new ways to use it to create innovative and engaging apps.",
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
