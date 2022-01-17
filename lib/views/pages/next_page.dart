import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itest_app/utils/custom_buttons.dart';
import 'package:itest_app/utils/dimens.dart';

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: dp40),
              child: buttonRounded(context, 'Back', () => Get.back()),
            ),
          ],
        ),
      ),
    );
  }
}
