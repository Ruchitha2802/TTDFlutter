import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ttd_flutter_app/res/appStrings/english_strings.dart';
import 'package:ttd_flutter_app/res/components/colors/colors.dart';
import 'package:ttd_flutter_app/res/components/custom_alerts/single_button_alert.dart';
import 'package:ttd_flutter_app/res/components/images/image_strings.dart';

class ErrorHandlingUtils {
  static String handleError(dynamic e, BuildContext context) {
    String msg = "";
    if (e is DioException) {
      if (e.type == DioExceptionType.badResponse) {
        final responseBody = e.response?.data;
        if (responseBody != null) {
          final jsonData = json.encode(responseBody);
          msg = getErrorMessage(jsonData);
        }
      } else if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout ||
          e.type == DioExceptionType.sendTimeout) {
        msg = "Connection timed out";
      } else {
        msg = "Server not responding: ${e.message}";
      }
    } else if (e is SocketException) {
      msg = "Something went wrong: ${e.message}";
    } else {
      msg = "Something went wrong: ${e.toString()}";
    }
    return msg;
  }

  static String getErrorMessage(String jsonData) {
    try {
      final parsedJson = json.decode(jsonData);
      return parsedJson['error']['message'];
    } catch (e) {
      return "Something went wrong,Please try again later";
    }
  }

  showErrorDialog(BuildContext context, String errorMessage) {
     EasyLoading.dismiss();
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertWithSingleButton(
          Buttontext: EnglishStrings.ok ,
          Img: ImageStrings.alert_cross,
          descriptions: "$errorMessage",
          imagebg: null,
          onPressed: () {
           Navigator.pop(context);
          },
          title: 'GHMC',
          bgColor: AppColors.Button_red_color,
        );
      },
    );
  }
}
