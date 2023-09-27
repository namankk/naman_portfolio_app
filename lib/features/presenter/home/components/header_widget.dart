import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../intro/intro_widget.dart';
import 'menu_bar_widget.dart';
import 'nav_bar.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset("assets/icons/background.svg"),
        Column(
          children: const [
            if (kIsWeb) MenuBarWidget() else NavBarWidget(),
            IntroWidget(),
          ],
        ),
      ],
    );
  }
}
