import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naman_portfolio_app/features/data/model/MyProjectsModel.dart';

import '../../../core/constants.dart';
import 'components/project_list_item.dart';

class RecentCompanyWidget extends StatelessWidget {

  const RecentCompanyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Text("Latest Projects",
              textAlign: TextAlign.center,
              style: GoogleFonts.heebo(
                color: darkColor,
                fontSize: 18,
              )),
        ),
        ListView.builder(
            padding: const EdgeInsets.only(top: 5),
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return ProjectsListItem(myProjectsModel: myProjectList[index],);
            },
            itemCount: myProjectList.length)
      ],
    );
  }
}
