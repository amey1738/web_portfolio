import 'package:flutter/material.dart';
import 'package:web_portfolio/Utils/color_constant.dart';
import 'package:web_portfolio/Widgets/my_text.dart';

class CallToAction extends StatelessWidget {
  final String title;
  const CallToAction({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 60,vertical: 15),
      child: MyText(text: title, fontName: 'fontName', fontSize: 18, color: Colors.white,),
      decoration: BoxDecoration(
        color: appBlue,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
