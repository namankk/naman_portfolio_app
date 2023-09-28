import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:naman_portfolio_app/features/presenter/common_widgets/common_widgets.dart';

import '../../intro/intro_widget.dart';
import 'menu_bar_widget.dart';
import 'nav_bar.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return WithBackgroundWidget(
        child: Column(
      children: const [
        if (kIsWeb) MenuBarWidget() else NavBarWidget(),
        IntroWidget(),
      ],
    ));
  }
}
