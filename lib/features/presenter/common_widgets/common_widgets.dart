import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constants.dart';
import '../../../core/responsive.dart';

class HeadingWidget extends StatelessWidget {
  final String firstWord;
  final String secondWord;


  const HeadingWidget({super.key, required this.firstWord, required this.secondWord});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ResponsiveText(firstWord,style: GoogleFonts.poppins(
          fontSize: 48,
          color: primaryColor,
        )),
        ResponsiveText(secondWord,
            style: GoogleFonts.poppins(
              fontSize: 48,
              color: Colors.black,
            )),
      ],
    );
  }
}
class WithBackgroundWidget extends StatelessWidget {
  final Widget child;

  const WithBackgroundWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [SvgPicture.asset("assets/icons/background.svg"), child],
    );
  }
}
