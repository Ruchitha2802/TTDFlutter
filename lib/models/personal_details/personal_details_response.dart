class pensionerBasicDetailsResponse {
  int? status;
  String? messageType;
  String? message;
  ReponseData? reponseData;

  pensionerBasicDetailsResponse(
      {this.status, this.messageType, this.message, this.reponseData});

  pensionerBasicDetailsResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    messageType = json['messageType'];
    message = json['message'];
    reponseData = json['reponseData'] != null
        ? new ReponseData.fromJson(json['reponseData'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['messageType'] = this.messageType;
    data['message'] = this.message;
    if (this.reponseData != null) {
      data['reponseData'] = this.reponseData!.toJson();
    }
    return data;
  }
}

class ReponseData {
  CommunicationDetails? communicationDetails;
  PersonalDetails? personalDetails;
  BankDetails? bankDetails;

  ReponseData(
      {this.communicationDetails, this.personalDetails, this.bankDetails});

  ReponseData.fromJson(Map<String, dynamic> json) {
    communicationDetails = json['Communication Details'] != null
        ? new CommunicationDetails.fromJson(json['Communication Details'])
        : null;
    personalDetails = json['Personal Details'] != null
        ? new PersonalDetails.fromJson(json['Personal Details'])
        : null;
    bankDetails = json['Bank Details'] != null
        ? new BankDetails.fromJson(json['Bank Details'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.communicationDetails != null) {
      data['Communication Details'] = this.communicationDetails!.toJson();
    }
    if (this.personalDetails != null) {
      data['Personal Details'] = this.personalDetails!.toJson();
    }
    if (this.bankDetails != null) {
      data['Bank Details'] = this.bankDetails!.toJson();
    }
    return data;
  }
}

class CommunicationDetails {
  String? ppoNo;
  String? permCareOf;
  String? permHouseFlatNo;
  String? permAddrLane1;
  String? permAddrLane2;
  String? permVillageTownCity;
  int? permAddrPincode;
  int? permState;
  int? permDistrict;
  int? permMandal;
  String? permNearestAirport;
  String? permNearestRailwayStation;
  String? permContactNumber;
  String? permAddSameAsPresentFlag;
  String? comCareOf;
  String? comHouseFlatNo;
  String? comAddrLane1;
  String? comAddrLane2;
  String? comVillageTownCity;
  int? comAddrPincode;
  int? comState;
  int? comDistrict;
  int? comMandal;
  String? comNearestAirport;
  String? comNearestRailwayStation;
  String? comContactNumber;
  String? email;
  String? mobileNo;

  CommunicationDetails(
      {this.ppoNo,
      this.permCareOf,
      this.permHouseFlatNo,
      this.permAddrLane1,
      this.permAddrLane2,
      this.permVillageTownCity,
      this.permAddrPincode,
      this.permState,
      this.permDistrict,
      this.permMandal,
      this.permNearestAirport,
      this.permNearestRailwayStation,
      this.permContactNumber,
      this.permAddSameAsPresentFlag,
      this.comCareOf,
      this.comHouseFlatNo,
      this.comAddrLane1,
      this.comAddrLane2,
      this.comVillageTownCity,
      this.comAddrPincode,
      this.comState,
      this.comDistrict,
      this.comMandal,
      this.comNearestAirport,
      this.comNearestRailwayStation,
      this.comContactNumber,
      this.email,
      this.mobileNo});

  CommunicationDetails.fromJson(Map<String, dynamic> json) {
    ppoNo = json['ppoNo'];
    permCareOf = json['permCareOf'];
    permHouseFlatNo = json['permHouseFlatNo'];
    permAddrLane1 = json['permAddrLane1'];
    permAddrLane2 = json['permAddrLane2'];
    permVillageTownCity = json['permVillageTownCity'];
    permAddrPincode = json['permAddrPincode'];
    permState = json['permState'];
    permDistrict = json['permDistrict'];
    permMandal = json['permMandal'];
    permNearestAirport = json['permNearestAirport'];
    permNearestRailwayStation = json['permNearestRailwayStation'];
    permContactNumber = json['permContactNumber'];
    permAddSameAsPresentFlag = json['permAddSameAsPresentFlag'];
    comCareOf = json['comCareOf'];
    comHouseFlatNo = json['comHouseFlatNo'];
    comAddrLane1 = json['comAddrLane1'];
    comAddrLane2 = json['comAddrLane2'];
    comVillageTownCity = json['comVillageTownCity'];
    comAddrPincode = json['comAddrPincode'];
    comState = json['comState'];
    comDistrict = json['comDistrict'];
    comMandal = json['comMandal'];
    comNearestAirport = json['comNearestAirport'];
    comNearestRailwayStation = json['comNearestRailwayStation'];
    comContactNumber = json['comContactNumber'];
    email = json['email'];
    mobileNo = json['mobileNo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ppoNo'] = this.ppoNo;
    data['permCareOf'] = this.permCareOf;
    data['permHouseFlatNo'] = this.permHouseFlatNo;
    data['permAddrLane1'] = this.permAddrLane1;
    data['permAddrLane2'] = this.permAddrLane2;
    data['permVillageTownCity'] = this.permVillageTownCity;
    data['permAddrPincode'] = this.permAddrPincode;
    data['permState'] = this.permState;
    data['permDistrict'] = this.permDistrict;
    data['permMandal'] = this.permMandal;
    data['permNearestAirport'] = this.permNearestAirport;
    data['permNearestRailwayStation'] = this.permNearestRailwayStation;
    data['permContactNumber'] = this.permContactNumber;
    data['permAddSameAsPresentFlag'] = this.permAddSameAsPresentFlag;
    data['comCareOf'] = this.comCareOf;
    data['comHouseFlatNo'] = this.comHouseFlatNo;
    data['comAddrLane1'] = this.comAddrLane1;
    data['comAddrLane2'] = this.comAddrLane2;
    data['comVillageTownCity'] = this.comVillageTownCity;
    data['comAddrPincode'] = this.comAddrPincode;
    data['comState'] = this.comState;
    data['comDistrict'] = this.comDistrict;
    data['comMandal'] = this.comMandal;
    data['comNearestAirport'] = this.comNearestAirport;
    data['comNearestRailwayStation'] = this.comNearestRailwayStation;
    data['comContactNumber'] = this.comContactNumber;
    data['email'] = this.email;
    data['mobileNo'] = this.mobileNo;
    return data;
  }
}

class PersonalDetails {
  String? ppoNo;
  String? pensionerName;
  String? pensionerType;
  int? pensionerTypeId;
  String? pensionerTypeName;
  String? retiredAs;
  String? retirementDate;
  String? title;
  String? gender;
  String? dob;
  String? pensionerSurname;
  String? maritalStatusId;
  int? religionId;
  String? sinceDate;
  String? phyChallenged;
  int? communityId;
  String? mobileNo;
  String? empId;
  String? pensionerSubTypeName;

  PersonalDetails(
      {this.ppoNo,
      this.pensionerName,
      this.pensionerType,
      this.pensionerTypeId,
      this.pensionerTypeName,
      this.retiredAs,
      this.retirementDate,
      this.title,
      this.gender,
      this.dob,
      this.pensionerSurname,
      this.maritalStatusId,
      this.religionId,
      this.sinceDate,
      this.phyChallenged,
      this.communityId,
      this.mobileNo,
      this.empId,
      this.pensionerSubTypeName});

  PersonalDetails.fromJson(Map<String, dynamic> json) {
    ppoNo = json['ppoNo'];
    pensionerName = json['pensionerName'];
    pensionerType = json['pensionerType'];
    pensionerTypeId = json['pensionerTypeId'];
    pensionerTypeName = json['pensionerTypeName'];
    retiredAs = json['retiredAs'];
    retirementDate = json['retirementDate'];
    title = json['title'];
    gender = json['gender'];
    dob = json['dob'];
    pensionerSurname = json['pensionerSurname'];
    maritalStatusId = json['maritalStatusId'];
    religionId = json['religionId'];
    sinceDate = json['sinceDate'];
    phyChallenged = json['phyChallenged'];
    communityId = json['communityId'];
    mobileNo = json['mobileNo'];
    empId = json['empId'];
    pensionerSubTypeName = json['pensionerSubTypeName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ppoNo'] = this.ppoNo;
    data['pensionerName'] = this.pensionerName;
    data['pensionerType'] = this.pensionerType;
    data['pensionerTypeId'] = this.pensionerTypeId;
    data['pensionerTypeName'] = this.pensionerTypeName;
    data['retiredAs'] = this.retiredAs;
    data['retirementDate'] = this.retirementDate;
    data['title'] = this.title;
    data['gender'] = this.gender;
    data['dob'] = this.dob;
    data['pensionerSurname'] = this.pensionerSurname;
    data['maritalStatusId'] = this.maritalStatusId;
    data['religionId'] = this.religionId;
    data['sinceDate'] = this.sinceDate;
    data['phyChallenged'] = this.phyChallenged;
    data['communityId'] = this.communityId;
    data['mobileNo'] = this.mobileNo;
    data['empId'] = this.empId;
    data['pensionerSubTypeName'] = this.pensionerSubTypeName;
    return data;
  }
}

class BankDetails {
  String? ppoNo;
  String? bankPayeeName;
  String? bankIfscCode;
  String? bankAccountNumber;
  String? bankJointAccountFlag;
  String? bankName;
  String? bankBranchName;
  String? bankCity;
  String? bankCountry;
  String? bankSuppDocDesc;
  String? bankSuppDoc;
  String? bankUploadDocName;
  String? mobileNo;
  String? bankDocViewPath;

  BankDetails(
      {this.ppoNo,
      this.bankPayeeName,
      this.bankIfscCode,
      this.bankAccountNumber,
      this.bankJointAccountFlag,
      this.bankName,
      this.bankBranchName,
      this.bankCity,
      this.bankCountry,
      this.bankSuppDocDesc,
      this.bankSuppDoc,
      this.bankUploadDocName,
      this.mobileNo,
      this.bankDocViewPath});

  BankDetails.fromJson(Map<String, dynamic> json) {
    ppoNo = json['ppoNo'];
    bankPayeeName = json['bankPayeeName'];
    bankIfscCode = json['bankIfscCode'];
    bankAccountNumber = json['bankAccountNumber'];
    bankJointAccountFlag = json['bankJointAccountFlag'];
    bankName = json['bankName'];
    bankBranchName = json['bankBranchName'];
    bankCity = json['bankCity'];
    bankCountry = json['bankCountry'];
    bankSuppDocDesc = json['bankSuppDocDesc'];
    bankSuppDoc = json['bankSuppDoc'];
    bankUploadDocName = json['bankUploadDocName'];
    mobileNo = json['mobileNo'];
    bankDocViewPath = json['bankDocViewPath'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ppoNo'] = this.ppoNo;
    data['bankPayeeName'] = this.bankPayeeName;
    data['bankIfscCode'] = this.bankIfscCode;
    data['bankAccountNumber'] = this.bankAccountNumber;
    data['bankJointAccountFlag'] = this.bankJointAccountFlag;
    data['bankName'] = this.bankName;
    data['bankBranchName'] = this.bankBranchName;
    data['bankCity'] = this.bankCity;
    data['bankCountry'] = this.bankCountry;
    data['bankSuppDocDesc'] = this.bankSuppDocDesc;
    data['bankSuppDoc'] = this.bankSuppDoc;
    data['bankUploadDocName'] = this.bankUploadDocName;
    data['mobileNo'] = this.mobileNo;
    data['bankDocViewPath'] = this.bankDocViewPath;
    return data;
  }
}
