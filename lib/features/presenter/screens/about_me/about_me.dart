import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naman_portfolio_app/core/responsive.dart';
import 'package:naman_portfolio_app/features/data/local_data/about_me_data.dart';

import '../../../../core/constants.dart';
import '../../common_widgets/common_widgets.dart';
import '../home/components/menu_bar_widget.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            WithBackgroundWidget(
              child: Column(
                children: [
                  MenuBarWidget(),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    child: HeadingWidget(firstWord: "About", secondWord: " Me"),
                  ),
                  AboutMeContentWidget()
                ],
              ),
            )
            // FooterWidget()
          ],
        ),
      ),
    );
  }
}

class AboutMeContentWidget extends StatelessWidget {
  const AboutMeContentWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          right: MediaQuery.sizeOf(context).width / 100 * 10,
          left: MediaQuery.sizeOf(context).width / 100 * 10,
          bottom: MediaQuery.sizeOf(context).width / 100 * 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ResponsiveText(AboutMeData.descTitle,
              style: GoogleFonts.poppins(
                fontSize: 29,
                color: primaryColor,
              ),
              maxLine: 101),
          ResponsiveText(AboutMeData.desc,
              style: GoogleFonts.poppins(
                fontSize: 22,
                color: darkColor,
              ),
              maxLine: 101)
        ],
      ),
    );
  }
}
