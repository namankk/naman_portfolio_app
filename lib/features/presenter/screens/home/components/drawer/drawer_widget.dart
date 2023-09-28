import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naman_portfolio_app/core/responsive.dart';

import '../../../../../../core/constants.dart';
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
          margin: const EdgeInsets.only(top: 50,left: 10,right: 10),
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
              const SizedBox(height: 30,),
              ListView.builder(itemBuilder: (context,index){

                DrawerMenuModel drawer= listOfDrawerMenu[index];
                return Container(
                  margin: const EdgeInsets.only(bottom: 40),
                  child: InkWell(
                    onTap: (){
                      drawer.isSelected=true;
                    },
                    child: Container(
                        padding: const EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                            color: drawer.isSelected?primaryColor:Colors.grey.shade200,
                            borderRadius: const BorderRadius.all(Radius.circular(5.0))
                        ),
                        child: Row(
                          children: [
                            Icon(drawer.icons,color: drawer.isSelected?Colors.white:Colors.grey.shade500),
                            const SizedBox(width: 20,),
                            ResponsiveText(
                              drawer.title,
                              style: GoogleFonts.heebo(
                                  fontWeight: FontWeight.w700,
                                  color:  drawer.isSelected?Colors.white:Colors.grey.shade600,
                                  height: 0,
                                  fontSize: 18),
                            )],
                        ),
                      ),

                  ),
                );
              },shrinkWrap: true,itemCount: listOfDrawerMenu.length-1),

              SizedBox(height: MediaQuery.sizeOf(context).height/100*20),
              IntrinsicWidth(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 40),
                  child: InkWell(
                    onTap: (){

                    },
                    child: Container(
                      padding: const EdgeInsets.only(top: 20.0,left: 20.0,bottom: 20.0,right: 50),
                      decoration: const BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),topRight: Radius.circular(30))
                      ),
                      child: Row(
                        children: [
                          Icon(listOfDrawerMenu[3].icons,color: Colors.white),
                          const SizedBox(width: 20,),
                          ResponsiveText(
                            listOfDrawerMenu[3].title,
                            style: GoogleFonts.heebo(
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                height: 0,
                                fontSize: 18),
                          )],
                      ),
                    ),
                  ),
                ),
              ),
              // Column(
              //   children: [
              //     Container(
              //       margin: const EdgeInsets.only(top: 60.0, bottom: 20),
              //       child: Row(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           ResponsiveText('Naman',
              //               textAlign: TextAlign.start,
              //               style: GoogleFonts.heebo(
              //                   color: darkColor,
              //                   fontWeight: FontWeight.w700,
              //                   height: 0,
              //                   fontSize: 22)),
              //           ResponsiveText(' Kashyap',
              //               textAlign: TextAlign.start,
              //               style: GoogleFonts.heebo(
              //                   color: primaryColor,
              //                   fontWeight: FontWeight.w700,
              //                   height: 0,
              //                   fontSize: 22)),
              //         ],
              //       ),
              //     ),
              //     const SizedBox(
              //       height: defaultPadding / 4,
              //     ),
              //     Text('Senior Flutter Developer',
              //         style: GoogleFonts.heebo(
              //             color: darkColor,
              //             fontWeight: FontWeight.w500,
              //             height: 0,
              //             fontSize: 19)),
              //     RichText(
              //       text: TextSpan(
              //           text: "5+",
              //           style: GoogleFonts.heebo(
              //               fontWeight: FontWeight.w900,
              //               height: 0,
              //               color: primaryColor,
              //               fontSize: 19),
              //           children: [
              //             TextSpan(
              //                 text: " Year Experience",
              //                 style: GoogleFonts.heebo(
              //                     color: darkColor,
              //                     fontWeight: FontWeight.w500,
              //                     height: 0,
              //                     fontSize: 19))
              //           ]),
              //     ),
              //   ],
              // ),
              // const Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 12.0),
              //   child: Divider(color: Colors.grey),
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 8.0, top: 20, bottom: 10),
              //   child: Text(
              //     "Contact Info",
              //     style: GoogleFonts.heebo(
              //         fontWeight: FontWeight.w700,
              //         color: darkColor,
              //         height: 0,
              //         fontSize: 18),
              //   ),
              // ),
              // const Padding(
              //   padding: EdgeInsets.only(left: 15, right: 15, bottom: 5),
              //   child: Row(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Text(
              //         "Email :",
              //         style: TextStyle(
              //             color: Colors.black, fontWeight: FontWeight.w700),
              //       ),
              //       Text(
              //         "naman.kashyap12@gmail.com",
              //         style: TextStyle(color: Colors.black),
              //       )
              //     ],
              //   ),
              // ),
              // const Padding(
              //   padding: EdgeInsets.only(left: 15, right: 15, bottom: 5),
              //   child: Row(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Text(
              //         "Phone No :",
              //         style: TextStyle(
              //             color: Colors.black, fontWeight: FontWeight.w700),
              //       ),
              //       Text(
              //         "8791411463",
              //         style: TextStyle(color: Colors.black),
              //       )
              //     ],
              //   ),
              // ),
              // const Padding(
              //   padding: EdgeInsets.only(left: 15, right: 15),
              //   child: Row(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Text(
              //         "Location :",
              //         style: TextStyle(
              //             color: Colors.black, fontWeight: FontWeight.w700),
              //       ),
              //       Text(
              //         "India",
              //         style: TextStyle(color: Colors.black),
              //       )
              //     ],
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 8.0, top: 30),
              //   child: Text(
              //     "Skills",
              //     style: GoogleFonts.heebo(
              //         fontWeight: FontWeight.w700,
              //         color: darkColor,
              //         height: 0,
              //         fontSize: 18),
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 8.0, top: 10.0),
              //   child: Row(
              //     children: [
              //       SvgPicture.asset(
              //         "assets/icons/flutter.svg",
              //         height: 15,
              //         width: 15,
              //         fit: BoxFit.cover,
              //       ),
              //       const SizedBox(
              //         width: 5,
              //       ),
              //       const Text(
              //         "Flutter",
              //         style: TextStyle(color: Colors.black),
              //       ),
              //       const Spacer(),
              //       SvgPicture.asset(
              //         "assets/icons/dart.svg",
              //         height: 15,
              //         width: 15,
              //         fit: BoxFit.cover,
              //       ),
              //       const Padding(
              //         padding: EdgeInsets.only(left: 5, right: 15),
              //         child: Text(
              //           "Dart",
              //           style: TextStyle(color: Colors.black),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 8.0, top: 5.0),
              //   child: Row(
              //     children: [
              //       SvgPicture.asset(
              //         "assets/icons/android.svg",
              //         height: 15,
              //         width: 15,
              //         fit: BoxFit.cover,
              //       ),
              //       const SizedBox(
              //         width: 5,
              //       ),
              //       const Text(
              //         "Android",
              //         style: TextStyle(color: Colors.black),
              //       ),
              //       const Spacer(),
              //       SvgPicture.asset(
              //         "assets/icons/ios.svg",
              //         height: 15,
              //         width: 15,
              //         fit: BoxFit.cover,
              //       ),
              //       const SizedBox(
              //         width: 5,
              //       ),
              //       const Padding(
              //         padding: EdgeInsets.only(left: 5, right: 15),
              //         child: Text(
              //           "Ios",
              //           style: TextStyle(color: Colors.black),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 8.0, top: 5.0),
              //   child: Row(
              //     children: [
              //       SvgPicture.asset(
              //         "assets/icons/flutter.svg",
              //         height: 15,
              //         width: 15,
              //         fit: BoxFit.cover,
              //       ),
              //       const SizedBox(
              //         width: 5,
              //       ),
              //       const Text(
              //         "Bloc",
              //         style: TextStyle(color: Colors.black),
              //       ),
              //       const Spacer(),
              //       SvgPicture.asset(
              //         "assets/icons/dart.svg",
              //         height: 15,
              //         width: 15,
              //         fit: BoxFit.cover,
              //       ),
              //       const SizedBox(
              //         width: 5,
              //       ),
              //       const Padding(
              //         padding: EdgeInsets.only(left: 5, right: 15),
              //         child: Text(
              //           "Sqflite",
              //           style: TextStyle(color: Colors.black),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 8.0, top: 5.0),
              //   child: Row(
              //     children: [
              //       SvgPicture.asset(
              //         "assets/icons/flutter.svg",
              //         height: 15,
              //         width: 15,
              //         fit: BoxFit.cover,
              //       ),
              //       const SizedBox(
              //         width: 5,
              //       ),
              //       const Text(
              //         "GetX",
              //         style: TextStyle(color: Colors.black),
              //       ),
              //       const Spacer(),
              //       SvgPicture.asset(
              //         "assets/icons/java.svg",
              //         height: 15,
              //         width: 15,
              //         fit: BoxFit.cover,
              //       ),
              //       const Padding(
              //         padding: EdgeInsets.only(left: 5, right: 15),
              //         child: Text(
              //           "Java",
              //           style: TextStyle(color: Colors.black),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 8.0, top: 5.0),
              //   child: Row(
              //     children: [
              //       SvgPicture.asset(
              //         "assets/icons/firebase.svg",
              //         height: 15,
              //         width: 15,
              //         fit: BoxFit.cover,
              //       ),
              //       const SizedBox(
              //         width: 5,
              //       ),
              //       const Text(
              //         "Firebase",
              //         style: TextStyle(color: Colors.black),
              //       ),
              //       const Spacer(),
              //       SvgPicture.asset(
              //         "assets/icons/git.svg",
              //         height: 15,
              //         width: 15,
              //         fit: BoxFit.cover,
              //       ),
              //       const Padding(
              //         padding: EdgeInsets.only(left: 5, right: 15),
              //         child: Text(
              //           "Git",
              //           style: TextStyle(color: Colors.black),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 8.0, top: 5.0),
              //   child: Row(
              //     children: [
              //       SvgPicture.asset(
              //         "assets/icons/postman.svg",
              //         height: 15,
              //         width: 15,
              //         fit: BoxFit.cover,
              //       ),
              //       const SizedBox(
              //         width: 5,
              //       ),
              //       const Text(
              //         "Postman",
              //         style: TextStyle(color: Colors.black),
              //       ),
              //       const Spacer(),
              //       SvgPicture.asset(
              //         "assets/icons/flutter.svg",
              //         height: 15,
              //         width: 15,
              //         fit: BoxFit.cover,
              //       ),
              //       const Padding(
              //         padding: EdgeInsets.only(left: 5, right: 15),
              //         child: Text(
              //           "Get It",
              //           style: TextStyle(color: Colors.black),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // const Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 25),
              //   child: Divider(color: Colors.grey),
              // ),
              // const Padding(
              //   padding: EdgeInsets.symmetric(vertical: 30),
              //   child: ConnectWithMeWidget(),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
