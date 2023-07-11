import 'package:ttd_flutter_app/data/base_api_client.dart';
import 'package:ttd_flutter_app/models/personal_details/personal_details_payload.dart';
import 'package:ttd_flutter_app/models/personal_details/personal_details_response.dart';
import 'package:ttd_flutter_app/res/constants/api_constants.dart';

class PersonalDeatilsRepo {
  final _baseClient = BaseApiClient();
  Future<pensionerBasicDetailsResponse> getPersonalDetails(
      PensionerBasicDetailsPayload payload) async {
    final response = await _baseClient.postCall(
        ApiConstants.endpoint_pensionerBasicDetails, payload.toJson());

    return pensionerBasicDetailsResponse.fromJson(response);
  }
}
