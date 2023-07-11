import 'package:dio/dio.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ttd_flutter_app/res/constants/api_constants.dart';
import 'package:ttd_flutter_app/utils/errorhandling.dart';
import 'package:ttd_flutter_app/utils/navigation_service.dart';

class apiErrorCodes {
  apiErrorCodes._();
  static const String grievance_success = "success";
  static const String success = "Success";
  static const String status_false = "false";
  static const String status_False = "False";
  static const String status_True = "True";
  static const String status_true = "true";
  static const String SUCCESS = "SUCCESS";
  static const String fail = "FAIL";
  static const String null_value = "null";
  static const String failed = "failed";
  static const String Failure = "Failure";
  static const int unknown = 204;
  static const int invalid = 400;
  static const bool success_true = true;
  static const bool invalid_false = false;
  static const String invalid_user = "Invalid User Access";
  static const String invalid_ptin = "Invalid PTIN";
  static const String No_Records_Found = "No Records Found";
  static const String Invalid_Access = "Invalid Access";
  static const String SUCCESS_code = "200";
  static const String NoRecords_code = "400";
  static const String Session_Expired = "600";
  static const String c_fail = "FAIL";
}

class BaseApiClient {
  //static const String _baseUrl = "http://"

  final appcontext = NavigationService.navigatorKey.currentContext;
  late final Dio _client = Dio(
    BaseOptions(
      baseUrl: ApiConstants.baseUrlTTD,
      connectTimeout:
          Duration(milliseconds: 120000), // connection timeout in milliseconds
      receiveTimeout:
          Duration(milliseconds: 120000), // receive timeout in milliseconds
    ),
  );

  Future<dynamic> postCall(String url, Map<String, dynamic> payload,
      {String contenType = "application/json"}) async {
    try {
      final response = await _client.post(
        url,
        data: payload,
        options: Options(headers: {
          'Content-Type': contenType,
        }),
      );
      print(response.data);
      print("payload $payload");
      return response.data;
    } on DioException catch (exception) {
      if (exception.type == DioExceptionType.connectionTimeout) {
        String errorMessage = "Connection timeout occurred.";
        ErrorHandlingUtils().showErrorDialog(appcontext!, errorMessage);
        print(exception);
      } else if (exception.type == DioExceptionType.receiveTimeout) {
        String errorMessage = "Receive timeout occurred.";
        ErrorHandlingUtils().showErrorDialog(appcontext!, errorMessage);
      } else {
        // Handle other Dio errors
        String errorMessage =
            ErrorHandlingUtils.handleError(exception, appcontext!);
        ErrorHandlingUtils().showErrorDialog(appcontext!, errorMessage);
      }
      return null;
    } catch (e) {
      EasyLoading.dismiss();
      print(e);
    }
    
  }
}
