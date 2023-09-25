import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/constants.dart';

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
          const ImageWidget(),
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
              onPressed: () => launchUrl(Uri.parse(
                  'https://drive.google.com/file/d/1g36-ldsqOepiULx3nc-I42Jzf2ToIROo/view?usp=sharing')),
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
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(200),
          boxShadow: const [
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
