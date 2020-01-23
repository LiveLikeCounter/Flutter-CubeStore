import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../core/util.dart';

Widget iconButton(context, String imageName, String position) {
  return Container(
    width: 60,
    height: 60,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [CustomColors.LiniarBlack1, CustomColors.LiniarBlack2],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(60),
      ),
      border: Border.all(
          color: position == 'top'
              ? CustomColors.LiniarBlack1
              : CustomColors.BlackBorder1,
          width: 3),
      boxShadow: [
        if (position == 'top')
          BoxShadow(
              color: Color(0xff3E444A),
              offset: Offset(-5.0, -7.0),
              blurRadius: 30.0,
              spreadRadius: 1.0),
        if (position == 'top')
          BoxShadow(
              color: Color(0xff252A30),
              offset: Offset(5.0, 5.0),
              blurRadius: 30.0,
              spreadRadius: 1.0),
        if (position == 'top')
          BoxShadow(
              color: Color(0xff3D434A),
              offset: Offset(-5.0, -5.0),
              blurRadius: 15.0,
              spreadRadius: 1.0),
        if (position == 'top')
          BoxShadow(
              color: Color(0xff252A2F),
              offset: Offset(5.0, 5.0),
              blurRadius: 15.0,
              spreadRadius: 1.0),
        if (position == 'bottom')
          BoxShadow(
              color: Color(0xff3E4245),
              offset: Offset(-5.0, -5.0),
              blurRadius: 30.0,
              spreadRadius: 1.0),
        if (position == 'bottom')
          BoxShadow(
              color: Color(0xff171A1C),
              offset: Offset(5.0, 5.0),
              blurRadius: 30.0,
              spreadRadius: 1.0),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.all(14.0),
      child: SvgPicture.asset('assets/images/$imageName.svg'),
    ),
  );
}
