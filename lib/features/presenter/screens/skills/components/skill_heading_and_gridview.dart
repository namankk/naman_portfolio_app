
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/constants.dart';
import '../../../../../core/responsive.dart';
import '../../../../data/model/my_skills_model.dart';

class SkillHeadingAndGridWidget extends StatelessWidget {
  final String heading;
  final List<MySkillsModel> listOfSkills;

  const SkillHeadingAndGridWidget(
      {super.key, required this.heading, required this.listOfSkills});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: ResponsiveText(heading,
              style: GoogleFonts.poppins(
                fontSize: 38,
                color: Colors.black,
              )),
        ),
        GridView.builder(
          padding: const EdgeInsets.only(top: 5),
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            MySkillsModel mySkillsModel = listOfSkills[index];
            return SkillGridViewTile(mySkillsModel: mySkillsModel);
          },
          itemCount: listOfSkills.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, mainAxisSpacing: 10.0, crossAxisSpacing: 10.0),
        ),
      ],
    );
  }
}

class SkillGridViewTile extends StatelessWidget {
  const SkillGridViewTile({
    super.key,
    required this.mySkillsModel,
  });

  final MySkillsModel mySkillsModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: SvgPicture.asset(
              mySkillsModel.skillIcon,
              height: 35,
              width: 35,
              fit: BoxFit.cover,
            ),
          ),
          ResponsiveText(
            mySkillsModel.skillName,
            style: GoogleFonts.heebo(
                fontWeight: FontWeight.w700,
                color: darkColor,
                height: 0,
                fontSize: 18),
          )
        ],
      ),
    );
  }
}