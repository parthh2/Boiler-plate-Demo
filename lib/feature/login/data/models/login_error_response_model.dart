class LoginErrorResponseModel {
  String? type;
  String? title;
  int? status;
  String? traceId;

  LoginErrorResponseModel({
    this.type,
    this.title,
    this.status,
    this.traceId,
  });

  LoginErrorResponseModel.fromJson(Map<String, dynamic> json) {
    type = json['type'] ?? '';
    title = json['title'] ?? '';
    status = json['status'] ?? 0;
    traceId = json['traceId'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = type;
    data['title'] = title;
    data['status'] = status;
    data['traceId'] = traceId;
    return data;
  }
}
