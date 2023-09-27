import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/constants.dart';
import '../../../../../core/responsive.dart';
import '../../../connect_with_me/connect_with_me.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Container(
                    margin: const EdgeInsets.only(top: 60.0, bottom: 20),

                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ResponsiveText('Naman',
                          textAlign: TextAlign.start,
                          style: GoogleFonts.heebo(
                              color: darkColor,
                              fontWeight: FontWeight.w700,
                              height: 0,
                              fontSize: 22)),
                      ResponsiveText(' Kashyap',
                          textAlign: TextAlign.start,
                          style: GoogleFonts.heebo(
                              color: primaryColor,
                              fontWeight: FontWeight.w700,
                              height: 0,
                              fontSize: 22)),
                    ],
                  ),
                ),

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
            const Padding(
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
            const Padding(
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
            const Padding(
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
                  const Spacer(),
                  SvgPicture.asset(
                    "assets/icons/dart.svg",
                    height: 15,
                    width: 15,
                    fit: BoxFit.cover,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 5, right: 15),
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
                  const Text(
                    "Android",
                    style: TextStyle(color: Colors.black),
                  ),
                  const Spacer(),
                  SvgPicture.asset(
                    "assets/icons/ios.svg",
                    height: 15,
                    width: 15,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 5, right: 15),
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
                  const Text(
                    "Bloc",
                    style: TextStyle(color: Colors.black),
                  ),
                  const Spacer(),
                  SvgPicture.asset(
                    "assets/icons/dart.svg",
                    height: 15,
                    width: 15,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 5, right: 15),
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
                  const Text(
                    "GetX",
                    style: TextStyle(color: Colors.black),
                  ),
                  const Spacer(),
                  SvgPicture.asset(
                    "assets/icons/java.svg",
                    height: 15,
                    width: 15,
                    fit: BoxFit.cover,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 5, right: 15),
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
                  const Text(
                    "Firebase",
                    style: TextStyle(color: Colors.black),
                  ),
                  const Spacer(),
                  SvgPicture.asset(
                    "assets/icons/git.svg",
                    height: 15,
                    width: 15,
                    fit: BoxFit.cover,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 5, right: 15),
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
                  const Text(
                    "Postman",
                    style: TextStyle(color: Colors.black),
                  ),
                  const Spacer(),
                  SvgPicture.asset(
                    "assets/icons/flutter.svg",
                    height: 15,
                    width: 15,
                    fit: BoxFit.cover,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 5, right: 15),
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
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 30),
              child: ConnectWithMeWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
