import 'package:flutter/material.dart';

import '../../../core/constants.dart';
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
      backgroundColor: secondaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const NavBarWidget(),
            IntroWidget(size: size),
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





