import 'package:flutter/material.dart';

import '../animation/fade_animation.dart';
import '../utils/my_strings.dart';

class TopTwoTextError extends StatelessWidget {
  const TopTwoTextError({
    Key? key,
    required this.textTheme,
  }) : super(key: key);

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// 404 TEXT
        FadeAnimation(
          delay: 2.5,
          child: Text(
            MyStrings.error404Text,
            style: textTheme.headline2,
          ),
        ),

        /// PAGE NOT FOUND TEXT
        FadeAnimation(
          delay: 2.0,
          child: Text(
            MyStrings.errorText,
            style: textTheme.headline3,
          ),
        ),
      ],
    );
  }
}
