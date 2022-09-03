import 'dart:convert';
/// status : "Success"
/// message : "Success! Customer Insert Successfully."
/// data : {"name":"","email":"","mobile":"","address":"","gender":"","dob":"","userimage":"","start_joining":""}

Savecustomer savecustomerFromJson(String str) => Savecustomer.fromJson(json.decode(str));
String savecustomerToJson(Savecustomer data) => json.encode(data.toJson());
class Savecustomer {
  Savecustomer({
      String? status, 
      String? message, 
      Data? data,}){
    _status = status;
    _message = message;
    _data = data;
}

  Savecustomer.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  String? _status;
  String? _message;
  Data? _data;
Savecustomer copyWith({  String? status,
  String? message,
  Data? data,
}) => Savecustomer(  status: status ?? _status,
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

/// name : ""
/// email : ""
/// mobile : ""
/// address : ""
/// gender : ""
/// dob : ""
/// userimage : ""
/// start_joining : ""

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      String? name, 
      String? email, 
      String? mobile, 
      String? address, 
      String? gender, 
      String? dob, 
      String? userimage, 
      String? startJoining,}){
    _name = name;
    _email = email;
    _mobile = mobile;
    _address = address;
    _gender = gender;
    _dob = dob;
    _userimage = userimage;
    _startJoining = startJoining;
}

  Data.fromJson(dynamic json) {
    _name = json['name'];
    _email = json['email'];
    _mobile = json['mobile'];
    _address = json['address'];
    _gender = json['gender'];
    _dob = json['dob'];
    _userimage = json['userimage'];
    _startJoining = json['start_joining'];
  }
  String? _name;
  String? _email;
  String? _mobile;
  String? _address;
  String? _gender;
  String? _dob;
  String? _userimage;
  String? _startJoining;
Data copyWith({  String? name,
  String? email,
  String? mobile,
  String? address,
  String? gender,
  String? dob,
  String? userimage,
  String? startJoining,
}) => Data(  name: name ?? _name,
  email: email ?? _email,
  mobile: mobile ?? _mobile,
  address: address ?? _address,
  gender: gender ?? _gender,
  dob: dob ?? _dob,
  userimage: userimage ?? _userimage,
  startJoining: startJoining ?? _startJoining,
);
  String? get name => _name;
  String? get email => _email;
  String? get mobile => _mobile;
  String? get address => _address;
  String? get gender => _gender;
  String? get dob => _dob;
  String? get userimage => _userimage;
  String? get startJoining => _startJoining;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['email'] = _email;
    map['mobile'] = _mobile;
    map['address'] = _address;
    map['gender'] = _gender;
    map['dob'] = _dob;
    map['userimage'] = _userimage;
    map['start_joining'] = _startJoining;
    return map;
  }

}