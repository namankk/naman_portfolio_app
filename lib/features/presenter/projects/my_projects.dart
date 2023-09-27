import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naman_portfolio_app/core/responsive.dart';
import 'package:naman_portfolio_app/features/data/model/MyProjectsModel.dart';

import '../../../core/constants.dart';
import 'components/project_list_item.dart';

class RecentCompanyWidget extends StatelessWidget {
  const RecentCompanyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width / 100 * 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ResponsiveText("My",
                    style: GoogleFonts.poppins(
                      fontSize: 48,
                      color: primaryColor,
                    )),
                ResponsiveText(" Projects",
                    style: GoogleFonts.poppins(
                      fontSize: 48,
                      color: Colors.black,
                    )),
              ],
            ),
          ),
          ResponsiveWiget(
              mobile: ListView.builder(
                  padding: const EdgeInsets.only(top: 5),
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ProjectsListItem(
                      myProjectsModel: myProjectList[index],
                    );
                  },
                  itemCount: myProjectList.length),
              web: GridView.builder(
                padding: const EdgeInsets.only(top: 5),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ProjectsListItem(
                    myProjectsModel: myProjectList[index],
                  );
                },
                itemCount: myProjectList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 7/8,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0
                ),
              ))
        ],
      ),
    );
  }
}
