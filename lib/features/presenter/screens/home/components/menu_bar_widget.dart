import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naman_portfolio_app/core/navigation.dart';

import '../../../../../core/constants.dart';
import '../../../../../core/responsive.dart';
import '../../../../data/model/drawer_menu_model.dart';

class MenuBarWidget extends StatelessWidget {
  const MenuBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> menuBarWidgets = listOfDrawerMenu
        .map((drawerMenu) => drawerMenu.title == "Contact Me"
            ? OutlinedButton(
                style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: primaryColor,
                    side: const BorderSide(color: primaryColor, width: 1.0),
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 22),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0))),
                onPressed: () =>
                    navigateTo(context, drawerMenu.redirectionLink),
                child: ResponsiveText(drawerMenu.title,
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    )),
              )
            : Padding(
                padding: const EdgeInsets.only(right: 21.0),
                child: TextButton(
                  onPressed: () {
                    navigateTo(context, drawerMenu.redirectionLink);
                  },
                  child: ResponsiveText(drawerMenu.title,
                      style: GoogleFonts.inter(
                          fontSize: 16,
                          color: drawerMenu.isSelected
                              ? primaryColor
                              : Colors.black,
                          fontWeight: FontWeight.w600)),
                ),
              ))
        .toList();

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          const Spacer(
            flex: 1,
          ),
          SvgPicture.asset("assets/icons/logo.svg"),
          const Spacer(flex: 4),
          Row(children: menuBarWidgets),
          const Spacer(
            flex: 1,
          )
        ],
      ),
    );
  }
}
