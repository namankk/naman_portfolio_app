import 'package:flutter/material.dart';

import '../features/presenter/screens/about_me/about_me.dart';
import '../features/presenter/screens/connect_with_me/connect_with_me_screen.dart';
import '../features/presenter/screens/home/home_screen.dart';
import '../features/presenter/screens/skills/skills_screen.dart';
import 'constants.dart';

void navigateTo(BuildContext context, String routeName) {
  switch (routeName) {
    case ClassNameConstants.home:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const HomeScreen()));
      break;
    case ClassNameConstants.about:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const AboutMe()));
      break;
    case ClassNameConstants.skills:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const SkillsScreen()));
      break;
    case ClassNameConstants.contactMe:
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const ConnectWithMeScreen()));
  }
}
