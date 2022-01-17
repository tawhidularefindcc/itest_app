import 'package:flutter/material.dart';
import 'package:itest_app/utils/colors.dart';

import 'dimens.dart';

getTopCurve({double topLeft = dp20, double topRight = dp20}) =>
    RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(topLeft),
        topRight: Radius.circular(topRight),
      ),
    );

getAllCurve({double top = dp20, double bottom = dp20}) =>
    RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(top),
        topRight: Radius.circular(top),
        bottomLeft: Radius.circular(bottom),
        bottomRight: Radius.circular(bottom),
      ),
    );

getAllCurveDec({double top = dp10, double bottom = dp10}) => BoxDecoration(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(top),
        topRight: Radius.circular(top),
        bottomLeft: Radius.circular(bottom),
        bottomRight: Radius.circular(bottom),
      ),
      border: const Border(
        top: BorderSide(color: lightGrey),
        bottom: BorderSide(color: lightGrey),
        left: BorderSide(color: lightGrey),
        right: BorderSide(color: lightGrey),
      ),
    );
