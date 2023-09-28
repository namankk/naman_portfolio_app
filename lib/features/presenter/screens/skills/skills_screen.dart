import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naman_portfolio_app/core/constants.dart';
import 'package:naman_portfolio_app/core/responsive.dart';

import '../../common_widgets/common_widgets.dart';
import '../home/components/menu_bar_widget.dart';
import '../home/components/nav_bar.dart';
import 'components/small_and_large_screen_views.dart';

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            WithBackgroundWidget(
              child: Column(
                children: [
                  if (kIsWeb) const MenuBarWidget() else const NavBarWidget(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ResponsiveText("<",
                            style: GoogleFonts.poppins(
                              fontSize: 48,
                              color: primaryColor,
                            )),
                        const HeadingWidget(
                            firstWord: "Technical", secondWord: " Skills"),
                        ResponsiveText("/>",
                            style: GoogleFonts.poppins(
                              fontSize: 48,
                              color: primaryColor,
                            )),
                      ],
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(
                          left: MediaQuery.sizeOf(context).width / 100 * 10,
                          right: MediaQuery.sizeOf(context).width / 100 * 10,
                          bottom: MediaQuery.sizeOf(context).width / 100 * 10),
                      child: const ResponsiveWiget(
                        mobile: SmallScreenViewWidget(),
                        web: LargeScreenViewWidget(),
                      ))
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


