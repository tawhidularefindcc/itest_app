import 'package:flutter/material.dart';
import 'package:itest_app/utils/colors.dart';
import 'package:itest_app/utils/dimens.dart';
import 'package:itest_app/utils/shapes.dart';

class ItemQuestions extends StatelessWidget {
  final String? text;
  ItemQuestions(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: dp10),
      child: Container(
        height: dp50,
        padding: const EdgeInsets.symmetric(horizontal: dp10),
        decoration: getAllCurveDec(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text.toString()),
            Container(),
          ],
        ),
      ),
    );
  }
}
