import 'package:flutter/material.dart';

class ResponsiveWiget extends StatelessWidget {
  final Widget mobile;
  final Widget web;
  const ResponsiveWiget({super.key,required this.mobile,required this.web});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    if(size.width>=900){
      return web;
    }else{
      return mobile;
    }
  }
}

class ResponsiveText extends StatelessWidget {
  const ResponsiveText(
  this.text,
  {
    this.textAlign = TextAlign.left,
    this.maxLine=1,
    this.style = const TextStyle(fontSize: 14),
    Key? key
  }) : super(key: key);

  final String text;
  final TextStyle style;
  final TextAlign textAlign;
  final int maxLine;

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: textAlign,
      softWrap: true,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLine,
      text: TextSpan(
        text: text,
        style: style,
      ),
    );
  }
}
