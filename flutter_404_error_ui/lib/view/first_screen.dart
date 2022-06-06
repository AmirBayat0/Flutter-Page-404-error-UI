import 'package:flutter/material.dart';

///
import '../animation/fade_animation.dart';
import '../utils/my_colors.dart';
import '../utils/my_strings.dart';
import '../view/second_screen.dart';
import '../components/app_bar.dart';
import '../components/bottom_button.dart';
import '../components/my_lottie_widget.dart';
import '../components/top_two_text_error.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  /////////////////////////////////////
  //@CodeWithFlexz on Instagram
  //
  //AmirBayat0 on Github
  //Programming with Flexz on Youtube
  /////////////////////////////////////

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    var leftPadding = 15.0;
    return Scaffold(
      appBar: const MyAppBar(),
      body: Container(
        margin: const EdgeInsets.all(10),
        width: size.width,
        height: size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// 404 TEXT - PAGE NOT FOUND TEXT
            Padding(
              padding: EdgeInsets.only(left: leftPadding),
              child: TopTwoTextError(
                textTheme: textTheme,
              ),
            ),

            /// LOTTIE
            Align(
              alignment: Alignment.center,
              child: FadeAnimation(
                delay: 1.5,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SecondScreen()));
                  },
                  child: MyLottie(
                    size: size,
                    picNum: '1',
                  ),
                ),
              ),
            ),

            /// BOTTOM TEXT
            Padding(
              padding: EdgeInsets.only(left: leftPadding, top: 30),
              child: FadeAnimation(
                delay: 1,
                child: Text(
                  MyStrings.mainErroText,
                  style: textTheme.headline4,
                ),
              ),
            ),

            ///
            Expanded(child: Container()),

            /// Go HOME BUTTON
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: FadeAnimation(
                delay: 0.5,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: BottomButton(
                    size: size,
                    textTheme: textTheme.headline5,
                    btnColor: MyColors.primaryColor,
                    page: const FirstScreen(),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
