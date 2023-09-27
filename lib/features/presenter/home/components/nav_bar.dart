import 'package:flutter/material.dart';

import '../../../../core/constants.dart';

class NavBarWidget extends StatelessWidget {
  const NavBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 100,
          width: MediaQuery.sizeOf(context).width,
        ),
        Positioned(
          top: 40,
          left: 10,
          child: IconButton(
            icon: const Icon(
              Icons.menu,
              size: 30,
              color: darkColor,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        )
      ],
    );
  }
}
