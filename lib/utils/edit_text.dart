import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:itest_app/utils/colors.dart';

import 'dimens.dart';

Widget textField(BuildContext context, TextEditingController controller,
    String hint, String suffixIcon, VoidCallback suffixAction) {
  ThemeData themeData = Theme.of(context);
  return Container(
      height: dp50,
      margin: const EdgeInsets.all(10),
      child: TextField(
        controller: controller,
        style: TextStyle(color: themeData.primaryColorDark),
        maxLines: 1,
        obscureText: suffixIcon != null,
        decoration: InputDecoration(
            filled: true,
            isDense: true,
            fillColor: themeData.primaryColor,
            hintText: hint,
            hintStyle: TextStyle(color: themeData.primaryColorDark),
            border: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(dp10))),
            suffixIcon: suffixIcon == null
                ? Container(
                    width: dp0,
                  )
                : buildTextFieldIcon(
                    suffixIcon, suffixAction, themeData.disabledColor)),
      ));
}

Widget textFieldBordered(
    BuildContext context, TextEditingController controller, String hint) {
  ThemeData themeData = Theme.of(context);
  return Container(
      height: 50,
      margin: const EdgeInsets.symmetric(vertical: dp10),
      child: TextField(
        cursorColor: themeData.primaryColorDark,
        controller: controller,
        style: TextStyle(color: themeData.primaryColorDark),
        maxLines: 1,
        decoration: InputDecoration(
          filled: true,
          isDense: true,
          fillColor: themeData.primaryColor,
          hintText: hint,
          hintStyle: themeData.textTheme.subtitle2,
          enabled: true,
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: lightGrey),
              borderRadius: BorderRadius.all(Radius.circular(dp10))),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: lightGrey),
              borderRadius: BorderRadius.all(Radius.circular(dp10))),
        ),
      ));
}

Widget buildTextFieldIcon(String iconPath, VoidCallback action, Color color) {
  return InkWell(
    onTap: action,
    child: Padding(
        padding: const EdgeInsets.all(dp10),
        child: SvgPicture.asset(
          iconPath,
          color: color,
          width: dp20,
          height: dp20,
        )),
  );
}
