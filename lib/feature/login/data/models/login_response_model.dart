class LoginResponseModel {
  String? id;
  String? email;
  String? userName;
  String? token;
  String? name;
  String? lastName;
  bool? ok;

  LoginResponseModel({
    this.id,
    this.email,
    this.userName,
    this.token,
    this.name,
    this.lastName,
    this.ok,
  });

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    userName = json['userName'];
    token = json['token'];
    name = json['name'];
    lastName = json['lastName'];
    ok = json['ok'] ?? false;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['email'] = email;
    data['userName'] = userName;
    data['token'] = token;
    data['name'] = name;
    data['lastName'] = lastName;
    data['ok'] = ok;
    return data;
  }
}
