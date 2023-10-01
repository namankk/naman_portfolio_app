import 'package:flutter/material.dart';

import '../../connect_with_me/components/connect_with_me.dart';


class FooterWidget extends StatelessWidget {
  const FooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(80),
      child: const Column(
        children: [
          ConnectWithMeWidget(),
          SizedBox(
            height: 15.0,
          ),
        ],
      ),
    );
  }
}
