import 'dart:convert';
/// status : "Success"
/// message : "Success! Login Successfully."
/// data : {"id":"1","username":"Admin","email":"admin@gmail.com","password":"81dc9bdb52d04dc20036dbd8313ed055","password_show":"1234","type":"admin","branch_code":null,"status":"Active","created_at":"2022-06-13 18:17:08"}

LoginResponse loginResponseFromJson(String str) => LoginResponse.fromJson(json.decode(str));
String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());
class LoginResponse {
  LoginResponse({
      String? status, 
      String? message, 
      Data? data,}){
    _status = status;
    _message = message;
    _data = data;
}

  LoginResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  String? _status;
  String? _message;
  Data? _data;
LoginResponse copyWith({  String? status,
  String? message,
  Data? data,
}) => LoginResponse(  status: status ?? _status,
  message: message ?? _message,
  data: data ?? _data,
);
  String? get status => _status;
  String? get message => _message;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}

/// id : "1"
/// username : "Admin"
/// email : "admin@gmail.com"
/// password : "81dc9bdb52d04dc20036dbd8313ed055"
/// password_show : "1234"
/// type : "admin"
/// branch_code : null
/// status : "Active"
/// created_at : "2022-06-13 18:17:08"

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      String? id, 
      String? username, 
      String? email, 
      String? password, 
      String? passwordShow, 
      String? type, 
      dynamic branchCode, 
      String? status, 
      String? createdAt,}){
    _id = id;
    _username = username;
    _email = email;
    _password = password;
    _passwordShow = passwordShow;
    _type = type;
    _branchCode = branchCode;
    _status = status;
    _createdAt = createdAt;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _username = json['username'];
    _email = json['email'];
    _password = json['password'];
    _passwordShow = json['password_show'];
    _type = json['type'];
    _branchCode = json['branch_code'];
    _status = json['status'];
    _createdAt = json['created_at'];
  }
  String? _id;
  String? _username;
  String? _email;
  String? _password;
  String? _passwordShow;
  String? _type;
  dynamic _branchCode;
  String? _status;
  String? _createdAt;
Data copyWith({  String? id,
  String? username,
  String? email,
  String? password,
  String? passwordShow,
  String? type,
  dynamic branchCode,
  String? status,
  String? createdAt,
}) => Data(  id: id ?? _id,
  username: username ?? _username,
  email: email ?? _email,
  password: password ?? _password,
  passwordShow: passwordShow ?? _passwordShow,
  type: type ?? _type,
  branchCode: branchCode ?? _branchCode,
  status: status ?? _status,
  createdAt: createdAt ?? _createdAt,
);
  String? get id => _id;
  String? get username => _username;
  String? get email => _email;
  String? get password => _password;
  String? get passwordShow => _passwordShow;
  String? get type => _type;
  dynamic get branchCode => _branchCode;
  String? get status => _status;
  String? get createdAt => _createdAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['username'] = _username;
    map['email'] = _email;
    map['password'] = _password;
    map['password_show'] = _passwordShow;
    map['type'] = _type;
    map['branch_code'] = _branchCode;
    map['status'] = _status;
    map['created_at'] = _createdAt;
    return map;
  }

}