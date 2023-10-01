import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naman_portfolio_app/core/constants.dart';
import 'package:naman_portfolio_app/core/responsive.dart';

import '../../common_widgets/common_widgets.dart';
import '../home/components/menu_bar_widget.dart';
import '../home/components/nav_bar.dart';

class ConnectWithMeScreen extends StatelessWidget {
  const ConnectWithMeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> myList=[Padding(
      padding: const EdgeInsets.only(left: 20.0,right: 60.0,top: 2.0,bottom: 2.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ResponsiveText("Call me"),
          SizedBox(height: 20,),
          ResponsiveText("+91-8791411463"),
        ],
      ),
    ),Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ResponsiveText("Call me"),
        SizedBox(height: 20,),
        ResponsiveText("+91-8791411463"),
      ],
    )];
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            WithBackgroundWidget(
              child: Column(
                children:  [
                  if (kIsWeb) MenuBarWidget() else NavBarWidget(),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    child: HeadingWidget(firstWord: "Let's Discuss Your", secondWord: " Project"),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).width/100*20),
                    child: ResponsiveText("Let’s make something new, different and more meaningful or make thing more visual or conceptual",
                        maxLine: 5,style: GoogleFonts.inter(
                          fontSize: 16,
                          color: darkColor,
                        ),textAlign: TextAlign.center),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).width/100*10,vertical:MediaQuery.sizeOf(context).width/100*5 ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade300,
                                  spreadRadius: 1,
                                    blurRadius: 5,
                                  offset: const Offset(0, 5),
                                ),

                              ]
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: myList,
                          ),
                        ),
                        ResponsiveText("asasas"),
                      ],
                    ),
                  ),
                  Align(alignment: Alignment.centerRight,child: CommonButtonWidget(onTap: (){}, buttonText: "Submit Message"))
                ],
              ),
            )
            // FooterWidget()
          ],
        ),
      ),
    );
  }
}
