
import 'package:flutter/material.dart';
import 'package:web_portfolio/Utils/color_constant.dart';

class MyButtons extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback click;
  final double? fontSize;
  final double? height;
  final double? width;
  final double? circular;
  final FontWeight? fontWeight;
  final Color? fontColor;
  final String? prefixIcon;
  final String? postfixIcon;
  final Color? splashColor;
  final bool? enabled;

  const MyButtons(this.text, this.color,
      {Key? key,
      required this.click,
      required this.fontSize,
      this.circular = 5,
      this.fontWeight = FontWeight.w500,
      this.height,
      this.width,
      this.fontColor = blackColor,
      this.prefixIcon,
      this.postfixIcon,
      this.splashColor,
      this.enabled = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      color: enabled == true ? color : greyBgColor,
      child: InkWell(
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        splashColor: splashColor ?? Colors.transparent,
        onTap: enabled == true ? click : noClick,
        enableFeedback: enabled,
        child: Container(
          width: width,
          height: height,
          // padding: EdgeInsets.symmetric(vertical:17.h),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              color: Colors.transparent),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                prefixIcon != null
                    ? Image.asset(prefixIcon!)
                    : const SizedBox(),
                Text(
                  text,
                  style: TextStyle(
                      fontFamily: 'baloo',
                      color: fontColor,
                      fontSize: fontSize,
                      fontWeight: fontWeight,
                      decoration: TextDecoration.none),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  width: 4,
                ),
                postfixIcon != null
                    ? Image.asset(
                        postfixIcon!,
                        color: Colors.white,
                        height: 16,
                        width: 20,
                      )
                    : const SizedBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void noClick() {
    print('click id disabled');
  }
}
