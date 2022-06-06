import 'package:flutter/material.dart';

import '../utils/my_strings.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    Key? key,
    required this.size,
    required this.textTheme,
    required this.btnColor,
    required this.page,
  }) : super(key: key);

  final Size size;
  final TextStyle? textTheme;
  final Color btnColor;
  final Widget page;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: size.width / 1.2,
      height: size.height / 14,
      color: btnColor,
      onPressed: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Text(
        MyStrings.goHomeText,
        style: textTheme,
      ),
    );
  }
}
