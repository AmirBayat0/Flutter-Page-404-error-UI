import 'package:flutter/material.dart';
import 'package:flutter_404_error_ui/animation/fade_animation.dart';

import '../utils/my_strings.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(55);

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return FadeAnimation(
      delay: 3,
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          MyStrings.logoText,
          style: textTheme.headline1,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.close,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
