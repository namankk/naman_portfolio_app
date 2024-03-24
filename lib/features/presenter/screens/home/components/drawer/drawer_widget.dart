import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naman_portfolio_app/core/responsive.dart';

import '../../../../../../core/constants.dart';
import '../../../../../../core/navigation.dart';
import '../../../../../data/model/drawer_menu_model.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 50, left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: const BoxDecoration(
                    color: primaryColor, borderRadius: BorderRadius.only()),
                padding: const EdgeInsets.all(10.0),
                child: SvgPicture.asset("assets/icons/logo.svg"),
              ),
              const SizedBox(
                height: 30,
              ),
              ListView.builder(
                  itemBuilder: (context, index) {
                    DrawerMenuModel drawer = listOfDrawerMenu[index];
                    return Container(
                      margin: const EdgeInsets.only(bottom: 40),
                      child: InkWell(
                        onTap: () {
                          navigateTo(context, drawer.redirectionLink);
                        },
                        child: Container(
                          padding: const EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                              color: drawer.isSelected
                                  ? primaryColor
                                  : Colors.grey.shade200,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5.0))),
                          child: Row(
                            children: [
                              Icon(drawer.icons,
                                  color: drawer.isSelected
                                      ? Colors.white
                                      : Colors.grey.shade500),
                              const SizedBox(
                                width: 20,
                              ),
                              ResponsiveText(
                                drawer.title,
                                style: GoogleFonts.heebo(
                                    fontWeight: FontWeight.w700,
                                    color: drawer.isSelected
                                        ? Colors.white
                                        : Colors.grey.shade600,
                                    height: 0,
                                    fontSize: 18),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  shrinkWrap: true,
                  itemCount: listOfDrawerMenu.length - 1),
              SizedBox(height: MediaQuery.sizeOf(context).height / 100 * 20),
              IntrinsicWidth(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 40),
                  child: InkWell(
                    onTap: () {
                      navigateTo(context, listOfDrawerMenu[3].redirectionLink);
                    },
                    child: Container(
                      padding: const EdgeInsets.only(
                          top: 20.0, left: 20.0, bottom: 20.0, right: 50),
                      decoration: const BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(30),
                              topRight: Radius.circular(30))),
                      child: Row(
                        children: [
                          Icon(listOfDrawerMenu[3].icons, color: Colors.white),
                          const SizedBox(
                            width: 20,
                          ),
                          ResponsiveText(
                            listOfDrawerMenu[3].title,
                            style: GoogleFonts.heebo(
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                height: 0,
                                fontSize: 18),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
