import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naman_portfolio_app/core/utils.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/constants.dart';
import '../../../core/responsive.dart';

class IntroWidget extends StatelessWidget {
  const IntroWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ResponsiveWiget(
      mobile: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const ImageWidget(),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Column(
                children: [
                  Wrap(
                    children: [
                      ResponsiveText('Hi, I am',
                          textAlign: TextAlign.start,
                          style: GoogleFonts.heebo(
                              color: darkColor,
                              fontWeight: FontWeight.w900,
                              height: 0,
                              fontSize: 35)),
                      ResponsiveText(' Naman',
                          textAlign: TextAlign.start,
                          style: GoogleFonts.heebo(
                              color: primaryColor,
                              fontWeight: FontWeight.w900,
                              height: 0,
                              fontSize: 35)),
                    ],
                  ),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.start,
                    children: [
                      ResponsiveText('Senior Flutter ',
                          textAlign: TextAlign.start,
                          maxLine: 2,
                          style: GoogleFonts.heebo(
                              color: primaryColor,
                              fontWeight: FontWeight.w900,
                              height: 0,
                              fontSize: 35)),
                      ResponsiveText('Developer',
                          textAlign: TextAlign.start,
                          style: GoogleFonts.heebo(
                              color: darkColor,
                              fontWeight: FontWeight.w900,
                              height: 0,
                              fontSize: 35)),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 18.0),
              child: ResponsiveText(
                  "I'm passionate about building high-quality, user-friendly mobile apps. I have a deep understanding of the Flutter framework and its capabilities, and I'm always looking for new ways to use it to create innovative and engaging apps.",
                  textAlign: TextAlign.center,
                  maxLine: 4,
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
                    padding: EdgeInsets.all(24),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0))
                ),
                onPressed: () => launchUrl(Uri.parse(
                    'https://drive.google.com/file/d/1g36-ldsqOepiULx3nc-I42Jzf2ToIROo/view?usp=sharing')),
                child: ResponsiveText('Download CV',
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      color: Colors.white,
                    )),
              ),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
      web: Container(
        padding: const EdgeInsets.only(top: 10,left: 40,right: 40,bottom: 100),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: Utils().getDefaultPadding(context),
            ),
            Expanded(
             flex: 3,
             child: Padding(
               padding: const EdgeInsets.only(top: 80),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Wrap(
                     crossAxisAlignment: WrapCrossAlignment.start,
                     children: [
                       ResponsiveText('Hi, ',
                           textAlign: TextAlign.start,
                           style: GoogleFonts.heebo(
                               color: darkColor,
                               fontWeight: FontWeight.w900,
                               height: 0,
                               fontSize: 35)),
                       Wrap(
                         children: [
                           ResponsiveText('I am',
                               textAlign: TextAlign.start,
                               style: GoogleFonts.heebo(
                                   color: darkColor,
                                   fontWeight: FontWeight.w900,
                                   height: 0,
                                   fontSize: 35)),
                           ResponsiveText(' Naman',
                               textAlign: TextAlign.start,
                               style: GoogleFonts.heebo(
                                   color: primaryColor,
                                   fontWeight: FontWeight.w900,
                                   height: 0,
                                   fontSize: 35)),
                         ],
                       ),
                       Wrap(
                         crossAxisAlignment: WrapCrossAlignment.start,
                         children: [
                           ResponsiveText('Senior Flutter ',
                               textAlign: TextAlign.start,
                               maxLine: 2,
                               style: GoogleFonts.heebo(
                                   color: primaryColor,
                                   fontWeight: FontWeight.w900,
                                   height: 0,
                                   fontSize: 35)),
                           ResponsiveText('Developer',
                               textAlign: TextAlign.start,
                               style: GoogleFonts.heebo(
                                   color: darkColor,
                                   fontWeight: FontWeight.w900,
                                   height: 0,
                                   fontSize: 35)),
                         ],
                       )
                     ],
                   ),
                   Padding(
                     padding: const EdgeInsets.only(top: 30,bottom: 30),
                     child: ResponsiveText(
                         "I'm passionate about building high-quality, user-friendly mobile apps. I have a deep understanding of the Flutter framework and its capabilities, and I'm always looking for new ways to use it to create innovative and engaging apps.",
                         textAlign: TextAlign.start,
                         maxLine: 4,
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
                         padding: EdgeInsets.all(24),
                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0))
                       ),
                       onPressed: () => launchUrl(Uri.parse(
                           'https://drive.google.com/file/d/1g36-ldsqOepiULx3nc-I42Jzf2ToIROo/view?usp=sharing')),
                       child: ResponsiveText('Download CV',
                           style: GoogleFonts.inter(
                               fontSize: 16,
                               color: Colors.white,
                               )),
                     ),
                   ),
                 ],
               ),
             ),
           ),
            const Spacer(flex: 1,),
            const ImageWidget(),
            Container(
              width: Utils().getDefaultPadding(context),
            ),

          ],
        ),
      )
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
      height: 380,
      width: 380,
      child: Stack(
        children: [
          Positioned(
            bottom: 35,
            left: 70,
            child: Container(
              height: 290,
              width: 260,
              decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(2.0)
              ),
              child: Row(
                children: [
                  Container(
                    height: 290,
                    width: 1,
                    color: Colors.black,
                    margin: EdgeInsets.only(left: 8.0),
                  ),
                  Spacer(),
                  Container(
                    height: 290,
                    width: 1,
                    color: Colors.black,
                    margin: EdgeInsets.only(right: 8.0),

                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 5,
            left: 40,
            child: Container(
              height: 290,
              width: 260,
              decoration: BoxDecoration(
                  border: Border.all(width: 3,color: Colors.black),
                borderRadius: BorderRadius.circular(2.0)
              ),
            ),
          ),

          Positioned(
            right: 0,
            top: 1,
            child: Image.asset(
              height: 350,
              width: 350,
              'assets/images/my_image.png',
            ),
          )
        ],
      ),
    );
  }
}
