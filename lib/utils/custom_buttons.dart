import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';
import 'dimens.dart';

Widget buttonOnlyIcon(
    BuildContext context, Icon icon, VoidCallback onPressCallback,
    {String iconPath = "", double size = dp20, bool isColorDark = false}) {
  return IconButton(
    onPressed: onPressCallback,
    icon: iconPath.isNotEmpty
        ? Image.asset(
            iconPath,
            width: size,
            height: size,
            color: isColorDark
                ? Theme.of(context).primaryColorDark
                : Theme.of(context).primaryColor,
          )
        : icon,
  );
}

Widget buttonRounded(
    BuildContext context, String text, VoidCallback onPressCallback,
    {double width = dp0}) {
  double buttonWidth = width == 0 ? Get.width : width;
  return Container(
      margin: const EdgeInsets.symmetric(vertical: dp10),
      height: dp50,
      width: buttonWidth,
      child: ElevatedButton(
          child:
              Text(text, style: const TextStyle(color: white, fontSize: dp18)),
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(deepBlue),
              backgroundColor: MaterialStateProperty.all<Color>(deepBlue),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(dp10)),
                      side: BorderSide(color: deepBlue)))),
          onPressed: onPressCallback));
}

Widget buttonRoundedWithIcon(
  BuildContext context,
  String text,
  String iconPath,
  VoidCallback onPressCallback, {
  Color color = Colors.white,
}) {
  return Container(
      margin: EdgeInsets.all(dp10),
      height: dp50,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton.icon(
        icon: SvgPicture.asset(
          iconPath,
          width: dp30,
          height: dp30,
        ),
        label: Text(
          text,
          style: GoogleFonts.lato(
              color: color, fontSize: dp20, fontWeight: FontWeight.bold),
        ),
        onPressed: onPressCallback,
        style: ElevatedButton.styleFrom(
          primary: deepBlue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ));
}

Widget buttonText(BuildContext context, String text, VoidCallback action) {
  return Container(
    //alignment: Alignment.center,
    child: TextButton(
      onPressed: action,
      child: Text(
        text,
        style: TextStyle(
          color: Theme.of(context).accentColor,
          fontSize: dp18,
        ),
      ),
    ),
  );
}

Widget buttonOnlyIconWithRoundBackground(BuildContext context, String iconPath,
    bool isSelected, VoidCallback onPressCallback) {
  var theme = Theme.of(context);
  return MaterialButton(
    onPressed: onPressCallback,
    color: isSelected ? theme.accentColor : theme.primaryColor,
    height: dp30,
    child: Image.asset(
      iconPath,
      width: dp25,
      height: dp25,
    ),
    padding: const EdgeInsets.all(10),
    shape: const CircleBorder(),
  );
}

Widget buttonOutline(BuildContext context, String text, String iconPath,
    bool isSelected, VoidCallback onPressCallback,
    {double width = 0}) {
  double buttonWidth = width == 0 ? Get.width : width;
  Widget iconView = Container();
  if (iconPath != null && iconPath.isNotEmpty) {
    iconView = Padding(
      padding: const EdgeInsets.all(5.0),
      child: Image.asset(
        iconPath,
        width: dp16,
        height: dp16,
        color: isSelected
            ? Theme.of(context).primaryColor
            : Theme.of(context).primaryColorDark,
      ),
    );
  }

  return Container(
    margin: const EdgeInsets.all(5),
    height: dp40,
    width: buttonWidth,
    child: OutlinedButton(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          iconView,
          Text(
            text,
            style: GoogleFonts.lato(
                color: isSelected
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).primaryColorDark,
                fontSize: dp16),
          ),
        ],
      ),
      onPressed: onPressCallback,
      //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0),),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
        return isSelected
            ? Theme.of(context).primaryColorDark
            : Theme.of(context).primaryColor;
      }), shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
        return RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(dp20));
      })),
    ),
  );
}
