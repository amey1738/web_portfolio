import 'package:flutter/material.dart';
import 'package:web_portfolio/Widgets/my_text.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 80,
            width: 150,
          ),
          SizedBox(width: 20,),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              NavBarItem(title: 'Home'),
              NavBarItem(title: 'Projects'),
              NavBarItem(title: 'About'),
              NavBarItem(title: 'Contact'),
              SizedBox(width: 20,)
            ],
          )
        ],
      ),
    );
  }
}


class NavBarItem extends StatelessWidget {
  final String title;
  const NavBarItem({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12,left: 10),
      child: MyText(text: title, fontName: 'fontName', fontSize: 18),
    );
  }
}

