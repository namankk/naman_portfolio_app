import 'package:flutter/material.dart';

import '../projects/my_projects.dart';
import 'components/drawer/drawer_widget.dart';
import 'components/footer.dart';
import 'components/header_widget.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderWidget(),
            RecentCompanyWidget(),
            FooterWidget()
          ],
        ),
      ),
      drawer: DrawerWidget(),
    );
  }
}
