import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../projects/my_projects.dart';
import 'components/drawer/drawer_widget.dart';
import 'components/footer.dart';
import '../intro/intro_widget.dart';
import 'components/menu_bar_widget.dart';
import 'components/nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SvgPicture.asset("assets/icons/background.svg"),
                Column(
                  children: const [
                    if (kIsWeb) MenuBarWidget() else NavBarWidget(),
                    IntroWidget(),
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
    );
  }
}
