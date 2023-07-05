class PensionerBasicDetailsPayload {
  String? appType;
  String? confirmMpin;
  String? ipAddress;
  String? mobileNo;
  String? mpin;
  String? otpCode;
  int? pensionerDetailsId;
  String? pensionerTypeId;
  String? ppoNo;

  PensionerBasicDetailsPayload(
      {this.appType,
      this.confirmMpin,
      this.ipAddress,
      this.mobileNo,
      this.mpin,
      this.otpCode,
      this.pensionerDetailsId,
      this.pensionerTypeId,
      this.ppoNo});

  PensionerBasicDetailsPayload.fromJson(Map<String, dynamic> json) {
    appType = json['appType'];
    confirmMpin = json['confirmMpin'];
    ipAddress = json['ipAddress'];
    mobileNo = json['mobileNo'];
    mpin = json['mpin'];
    otpCode = json['otpCode'];
    pensionerDetailsId = json['pensionerDetailsId'];
    pensionerTypeId = json['pensionerTypeId'];
    ppoNo = json['ppoNo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['appType'] = this.appType;
    data['confirmMpin'] = this.confirmMpin;
    data['ipAddress'] = this.ipAddress;
    data['mobileNo'] = this.mobileNo;
    data['mpin'] = this.mpin;
    data['otpCode'] = this.otpCode;
    data['pensionerDetailsId'] = this.pensionerDetailsId;
    data['pensionerTypeId'] = this.pensionerTypeId;
    data['ppoNo'] = this.ppoNo;
    return data;
  }
}
