import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:student_table_task/presentation/styles/colors.dart';

ThemeData appTheme = ThemeData(
  fontFamily: 'cairo',
  scaffoldBackgroundColor: AppColor.white,
  appBarTheme: const AppBarTheme(
    elevation: 4.0,
    color: AppColor.red,
    centerTitle: true,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: AppColor.red,
      statusBarIconBrightness: Brightness.light,
    ),
  ),
);
