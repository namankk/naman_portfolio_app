import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naman_portfolio_app/features/data/model/MyProjectsModel.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/constants.dart';

class ProjectsListItem extends StatelessWidget {
  final MyProjectsModel myProjectsModel;

  const ProjectsListItem({super.key, required this.myProjectsModel});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Container(
      padding: const EdgeInsets.all(10.0),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(myProjectsModel.projectImage),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(myProjectsModel.projectTitle,
                style: GoogleFonts.heebo(
                  color: darkColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
                myProjectsModel.projectDesc,maxLines: 4,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.heebo(
                  color: darkColor,
                  fontSize: 16,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              children: [
                Text('PlayStore Link -',
                    style: GoogleFonts.heebo(
                      color: darkColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    )),
                TextButton(
                  onPressed: () {
                    launchUrl(Uri.parse(myProjectsModel.projectLink));
                  },
                  child: Text("Go To Play Store",
                      style: GoogleFonts.heebo(
                        color: Colors.blue,
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      )),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.grey.shade200,
            margin: const EdgeInsets.symmetric(vertical: 5.0),
            width: size.width,
            height: 1,
          ),
        ],
      ),
    );
  }
}
