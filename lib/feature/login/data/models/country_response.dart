class CountryResponse {
  int? code;
  List<CountryModel>? result;

  CountryResponse({this.code, this.result});

  CountryResponse.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    if (json['result'] != null) {
      result = [];
      json['result'].forEach((v) {
        result!.add(CountryModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    if (result != null) {
      data['result'] = result!.map((v) => v.toJson()).toList();
    }

    return data;
  }
}

class CountryModel {
  String? name;
  String? code;
  List<States>? states;

  CountryModel({this.name, this.code, this.states});

  CountryModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    code = json['code'];
    if (json['states'] != null) {
      states = [];
      json['states'].forEach((v) {
        states!.add(States.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['code'] = code;
    if (states != null) {
      data['states'] = states!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class States {
  String? code;
  String? name;

  States({this.code, this.name});

  States.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['name'] = name;
    return data;
  }
}
