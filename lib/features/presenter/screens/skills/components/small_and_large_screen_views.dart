import 'package:flutter/material.dart';
import 'package:naman_portfolio_app/features/presenter/screens/skills/components/skill_heading_and_gridview.dart';

import '../../../../../core/constants.dart';
import '../../../../data/model/my_skills_model.dart';

class LargeScreenViewWidget extends StatelessWidget {
  const LargeScreenViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: SkillHeadingAndGridWidget(
              heading: StringConstants.frontEnd,
              listOfSkills: listOfFrontEndSkills),
        ),
        SizedBox(
          width:
          MediaQuery.sizeOf(context).width / 100 * 10,
        ),
        Expanded(
            child: Column(
              children: [
                SizedBox(
                  height:  MediaQuery.sizeOf(context).width /
                      100 *
                      30,
                  child: SkillHeadingAndGridWidget(
                      heading: StringConstants.platforms,
                      listOfSkills: listOfPlatformsSkills),
                ),
                SizedBox(
                  height:  MediaQuery.sizeOf(context).width /
                      100 *
                      50,
                  child: SkillHeadingAndGridWidget(
                      heading: StringConstants.developmentTools,
                      listOfSkills: listOfDeveloperSkills),
                ),
              ],
            )),
      ],
    );
  }
}

class SmallScreenViewWidget extends StatelessWidget {
  const SmallScreenViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        SkillHeadingAndGridWidget(
            heading: StringConstants.frontEnd,
            listOfSkills: listOfFrontEndSkills),
        SizedBox(
          height:
          MediaQuery.sizeOf(context).width / 100 * 10,
        ),
        SkillHeadingAndGridWidget(
            heading: StringConstants.platforms,
            listOfSkills: listOfPlatformsSkills),
        SizedBox(
          height:
          MediaQuery.sizeOf(context).width / 100 * 10,
        ),
        SkillHeadingAndGridWidget(
            heading: StringConstants.developmentTools,
            listOfSkills: listOfDeveloperSkills),
        SizedBox(
          height:
          MediaQuery.sizeOf(context).width / 100 * 10,
        ),
      ],
    );
  }
}