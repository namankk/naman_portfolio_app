import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/constants.dart';
import '../../../core/responsive.dart';
import '../projects/my_projects.dart';
import 'components/drawer/drawer_widget.dart';
import 'components/footer.dart';
import '../intro/intro_widget.dart';
import 'components/nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SvgPicture.asset("assets/icons/background.svg"),
                Column(
                  children: [
                    if (kIsWeb)
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 15.0),
                        child: Row(
                          children: [
                            Spacer(
                              flex: 1,
                            ),
                            SvgPicture.asset("assets/icons/logo.svg",color: primaryColor),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                              child: ResponsiveText('Naman',
                                  style: GoogleFonts.inter(
                                    fontSize: 21,
                                    color: Colors.black,
                                  )),
                            ),
                            Spacer(flex: 4),
                            Padding(
                              padding: const EdgeInsets.only(right: 21.0),
                              child: ResponsiveText('Home',
                                  style: GoogleFonts.inter(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 21.0),
                              child: ResponsiveText('About',
                                  style: GoogleFonts.inter(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600)),
                            ),
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  foregroundColor: primaryColor,
                                  side: BorderSide(
                                      color: primaryColor, width: 1.0),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 22),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(12.0))),
                              onPressed: () => launchUrl(Uri.parse(
                                  'https://drive.google.com/file/d/1g36-ldsqOepiULx3nc-I42Jzf2ToIROo/view?usp=sharing')),
                              child: ResponsiveText('Contact Me',
                                  style: GoogleFonts.inter(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  )),
                            ),
                            Spacer(
                              flex: 1,
                            )
                          ],
                        ),
                      )
                    else
                      const NavBarWidget(),
                    IntroWidget(size: size),
                  ],
                ),
              ],
            ),
            const RecentCompanyWidget(),
            const FooterWidget()
          ],
        ),
      ),
      drawer: const DrawerWidget(),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
