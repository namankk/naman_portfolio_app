import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naman_portfolio_app/core/constants.dart';
import 'package:naman_portfolio_app/core/responsive.dart';
import 'package:naman_portfolio_app/features/presenter/screens/home/components/footer.dart';

import '../../common_widgets/common_widgets.dart';
import '../home/components/menu_bar_widget.dart';
import '../home/components/nav_bar.dart';
import 'components/contact_form.dart';

class ConnectWithMeScreen extends StatelessWidget {
  const ConnectWithMeScreen({super.key});

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
                  if (kIsWeb) MenuBarWidget() else NavBarWidget(),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    child: HeadingWidget(
                        firstWord: "Let's Discuss Your",
                        secondWord: " Project"),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal:
                            MediaQuery.sizeOf(context).width / 100 * 20),
                    child: ResponsiveText(
                        "Let’s make something new, different and more meaningful or make thing more visual or conceptual",
                        maxLine: 5,
                        style: GoogleFonts.inter(
                          fontSize: 24,
                          color: darkColor,
                        ),
                        textAlign: TextAlign.center),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Center(
                        child: SizedBox(
                            width: MediaQuery.sizeOf(context).width * .8,
                            child: ContactForm())),
                  ),
                ],
              ),
            ),
            const FooterWidget()
            // FooterWidget()
          ],
        ),
      ),
    );
  }
}
