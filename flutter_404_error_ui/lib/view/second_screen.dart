import 'package:flutter/material.dart';

///
import '../components/app_bar.dart';
import '../components/bottom_button.dart';
import '../components/my_lottie_widget.dart';
import '../components/top_two_text_error.dart';
import '../utils/my_colors.dart';
import '../view/first_screen.dart';
import '../animation/fade_animation.dart';
import '../utils/my_strings.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    var leftPadding = 15.0;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: const MyAppBar(),
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              /// NONE WIDGET
              Positioned(
                bottom: 80,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                      color: MyColors.secondryColor,
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(40))),
                ),
              ),

              /// MAIN SECTION
              Positioned(
                top: 34,
                child: Container(
                  width: size.width,
                  height: size.height / 1.4,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(60))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// TOP TWO TEXT - 404 ERROR AND PAGE NOT FPUND
                      Padding(
                        padding: EdgeInsets.only(left: leftPadding),
                        child: TopTwoTextError(
                          textTheme: textTheme,
                        ),
                      ),

                      /// MAIN TEXT ERROR
                      Padding(
                        padding: EdgeInsets.only(left: leftPadding, top: 20),
                        child: FadeAnimation(
                          delay: 1.5,
                          child: Text(
                            MyStrings.mainErroText,
                            style: textTheme.headline4,
                          ),
                        ),
                      ),

                      /// MIDDLE LOTTIE
                      Align(
                        alignment: Alignment.center,
                        child: FadeAnimation(
                          delay: 1,
                          child: GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const FirstScreen()));
                              },

                              /// LOTTIE
                              child: MyLottie(size: size, picNum: '2')),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              /// BOTTOM SECTION
              Positioned(
                bottom: 0,
                child: Container(
                  width: size.width,
                  height: size.height / 7,
                  decoration: const BoxDecoration(
                      color: MyColors.secondryColor,
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(50))),
                  child: Center(
                    child: FadeAnimation(
                      delay: 0.5,

                      /// BOTTOM BUTTON
                      child: BottomButton(
                        size: size,
                        textTheme:
                            textTheme.headline5?.copyWith(color: Colors.black),
                        btnColor: Colors.white,
                        page: const SecondScreen(),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
