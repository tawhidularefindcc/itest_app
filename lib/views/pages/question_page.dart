import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itest_app/utils/custom_buttons.dart';
import 'package:itest_app/utils/dimens.dart';
import 'package:itest_app/values/theme_colors.dart';
import 'package:itest_app/views/pages/next_page.dart';
import 'package:itest_app/views/widgets/item_question_widget.dart';

class QuestionPage extends StatelessWidget {
  const QuestionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  color: ThemeColors.baseThemeColor,
                  padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Question 5',
                              style:
                                  TextStyle(color: ThemeColors.whiteTextColor)),
                          Container(
                            height: 40,
                            width: 70,
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              border: const Border(
                                top: BorderSide(
                                    color: ThemeColors.whiteTextColor),
                                bottom: BorderSide(
                                    color: ThemeColors.whiteTextColor),
                                left: BorderSide(
                                    color: ThemeColors.whiteTextColor),
                                right: BorderSide(
                                    color: ThemeColors.whiteTextColor),
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Icon(Icons.timelapse,
                                    color: ThemeColors.whiteTextColor),
                                Text('3:26',
                                    style: TextStyle(
                                        color: ThemeColors.whiteTextColor)),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 20,
                          itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 48,
                              horizontal: 2,
                            ),
                            child: Container(
                              width: 20,
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 4.5,
            left: 16,
            right: 16,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  height: MediaQuery.of(context).size.height / 1.5,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.all(20),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const Text(
                          'The information to be communicated\n  in a data communication system is\n                         known as',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: dp20),
                        ItemQuestions('Medium'),
                        ItemQuestions('Transmission'),
                        ItemQuestions('Message'),
                        ItemQuestions('Protocol'),
                        buttonRounded(
                          context,
                          'Next',
                          () => Get.to(
                            () => const NextPage(),
                            transition: Transition.rightToLeft,
                            duration: const Duration(milliseconds: 300),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
