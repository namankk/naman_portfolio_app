import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class ConnectWithMeWidget extends StatelessWidget {
  const ConnectWithMeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max  ,
      children: [
        InkWell(onTap: ()=>launchUrl(Uri.parse(
        'https://github.com/namankk')),
            child: SvgPicture.asset("assets/icons/github.svg", height: 30, width: 30)),
        const SizedBox(
          width: 30.0,
        ),
        InkWell(
            onTap: ()=>launchUrl(Uri.parse(
                'https://www.linkedin.com/in/naman-kashyap-flutter-developer/')),
            child: SvgPicture.asset("assets/icons/linkedin.svg", height: 30, width: 30)),
        const SizedBox(
          width: 30.0,
        ),
        InkWell(
            onTap: ()=>launchUrl(Uri.parse(
                'https://stackoverflow.com/users/8555008/naman-kashyap')),
            child: SvgPicture.asset("assets/icons/stack.svg", height: 30, width: 30)),
        const SizedBox(
          width: 30.0,
        ),
        InkWell(
            onTap: ()async{
              String? encodeQueryParameters(Map<String, String> params) {
                return params.entries
                    .map((MapEntry<String, String> e) =>
                '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                    .join('&');
              }

              final Uri emailLaunchUri = Uri(
                scheme: 'mailto',
                path: 'naman.kashyap@gmail.com',
                query: encodeQueryParameters(<String, String>{
                  'subject': 'Example Subject & Symbols are allowed!',
                }),
              );
              canLaunchUrl(emailLaunchUri).then((value) => print(value));
              launchUrl(emailLaunchUri);
            },
            child: SvgPicture.asset("assets/icons/gmail.svg", height: 30, width: 30)),
      ],
    );
  }
}
