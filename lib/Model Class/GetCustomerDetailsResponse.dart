import 'dart:convert';
/// status : "Success"
/// message : "Get Fetched Customer Details"
/// data : [{"member_id":"5","user_id":"76","plan_id":"0","trainer_id":"0","batch_id":"0","name":"","email":"","mobile":"","dob":"","age":"0","address":"","gender":"","current_weight":"","current_height":"","goal":"","personal_trainer":"","start_joining":"","userimage":"","created_at":"2022-06-21 11:29:42"},{"member_id":"6","user_id":"77","plan_id":"0","trainer_id":"0","batch_id":"0","name":"fulsinghrajsaini","email":"trainer@gmail.com","mobile":"6367478675","dob":"","age":"0","address":"","gender":"","current_weight":"","current_height":"","goal":"","personal_trainer":"","start_joining":"","userimage":"","created_at":"2022-06-21 12:30:08"},{"member_id":"7","user_id":"78","plan_id":"0","trainer_id":"0","batch_id":"0","name":"","email":"","mobile":"9982517734","dob":"","age":"0","address":"","gender":"","current_weight":"","current_height":"","goal":"","personal_trainer":"","start_joining":"","userimage":"","created_at":"2022-06-22 05:41:30"}]

GetCustomerDetailsResponse getCustomerDetailsResponseFromJson(String str) => GetCustomerDetailsResponse.fromJson(json.decode(str));
String getCustomerDetailsResponseToJson(GetCustomerDetailsResponse data) => json.encode(data.toJson());
class GetCustomerDetailsResponse {
  GetCustomerDetailsResponse({
      String? status, 
      String? message, 
      List<Data>? data,}){
    _status = status;
    _message = message;
    _data = data;
}

  GetCustomerDetailsResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
  }
  String? _status;
  String? _message;
  List<Data>? _data;
GetCustomerDetailsResponse copyWith({  String? status,
  String? message,
  List<Data>? data,
}) => GetCustomerDetailsResponse(  status: status ?? _status,
  message: message ?? _message,
  data: data ?? _data,
);
  String? get status => _status;
  String? get message => _message;
  List<Data>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// member_id : "5"
/// user_id : "76"
/// plan_id : "0"
/// trainer_id : "0"
/// batch_id : "0"
/// name : ""
/// email : ""
/// mobile : ""
/// dob : ""
/// age : "0"
/// address : ""
/// gender : ""
/// current_weight : ""
/// current_height : ""
/// goal : ""
/// personal_trainer : ""
/// start_joining : ""
/// userimage : ""
/// created_at : "2022-06-21 11:29:42"

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      String? memberId, 
      String? userId, 
      String? planId, 
      String? trainerId, 
      String? batchId, 
      String? name, 
      String? email, 
      String? mobile, 
      String? dob, 
      String? age, 
      String? address, 
      String? gender, 
      String? currentWeight, 
      String? currentHeight, 
      String? goal, 
      String? personalTrainer, 
      String? startJoining, 
      String? userimage, 
      String? createdAt,}){
    _memberId = memberId;
    _userId = userId;
    _planId = planId;
    _trainerId = trainerId;
    _batchId = batchId;
    _name = name;
    _email = email;
    _mobile = mobile;
    _dob = dob;
    _age = age;
    _address = address;
    _gender = gender;
    _currentWeight = currentWeight;
    _currentHeight = currentHeight;
    _goal = goal;
    _personalTrainer = personalTrainer;
    _startJoining = startJoining;
    _userimage = userimage;
    _createdAt = createdAt;
}

  Data.fromJson(dynamic json) {
    _memberId = json['member_id'];
    _userId = json['user_id'];
    _planId = json['plan_id'];
    _trainerId = json['trainer_id'];
    _batchId = json['batch_id'];
    _name = json['name'];
    _email = json['email'];
    _mobile = json['mobile'];
    _dob = json['dob'];
    _age = json['age'];
    _address = json['address'];
    _gender = json['gender'];
    _currentWeight = json['current_weight'];
    _currentHeight = json['current_height'];
    _goal = json['goal'];
    _personalTrainer = json['personal_trainer'];
    _startJoining = json['start_joining'];
    _userimage = json['userimage'];
    _createdAt = json['created_at'];
  }
  String? _memberId;
  String? _userId;
  String? _planId;
  String? _trainerId;
  String? _batchId;
  String? _name;
  String? _email;
  String? _mobile;
  String? _dob;
  String? _age;
  String? _address;
  String? _gender;
  String? _currentWeight;
  String? _currentHeight;
  String? _goal;
  String? _personalTrainer;
  String? _startJoining;
  String? _userimage;
  String? _createdAt;
Data copyWith({  String? memberId,
  String? userId,
  String? planId,
  String? trainerId,
  String? batchId,
  String? name,
  String? email,
  String? mobile,
  String? dob,
  String? age,
  String? address,
  String? gender,
  String? currentWeight,
  String? currentHeight,
  String? goal,
  String? personalTrainer,
  String? startJoining,
  String? userimage,
  String? createdAt,
}) => Data(  memberId: memberId ?? _memberId,
  userId: userId ?? _userId,
  planId: planId ?? _planId,
  trainerId: trainerId ?? _trainerId,
  batchId: batchId ?? _batchId,
  name: name ?? _name,
  email: email ?? _email,
  mobile: mobile ?? _mobile,
  dob: dob ?? _dob,
  age: age ?? _age,
  address: address ?? _address,
  gender: gender ?? _gender,
  currentWeight: currentWeight ?? _currentWeight,
  currentHeight: currentHeight ?? _currentHeight,
  goal: goal ?? _goal,
  personalTrainer: personalTrainer ?? _personalTrainer,
  startJoining: startJoining ?? _startJoining,
  userimage: userimage ?? _userimage,
  createdAt: createdAt ?? _createdAt,
);
  String? get memberId => _memberId;
  String? get userId => _userId;
  String? get planId => _planId;
  String? get trainerId => _trainerId;
  String? get batchId => _batchId;
  String? get name => _name;
  String? get email => _email;
  String? get mobile => _mobile;
  String? get dob => _dob;
  String? get age => _age;
  String? get address => _address;
  String? get gender => _gender;
  String? get currentWeight => _currentWeight;
  String? get currentHeight => _currentHeight;
  String? get goal => _goal;
  String? get personalTrainer => _personalTrainer;
  String? get startJoining => _startJoining;
  String? get userimage => _userimage;
  String? get createdAt => _createdAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['member_id'] = _memberId;
    map['user_id'] = _userId;
    map['plan_id'] = _planId;
    map['trainer_id'] = _trainerId;
    map['batch_id'] = _batchId;
    map['name'] = _name;
    map['email'] = _email;
    map['mobile'] = _mobile;
    map['dob'] = _dob;
    map['age'] = _age;
    map['address'] = _address;
    map['gender'] = _gender;
    map['current_weight'] = _currentWeight;
    map['current_height'] = _currentHeight;
    map['goal'] = _goal;
    map['personal_trainer'] = _personalTrainer;
    map['start_joining'] = _startJoining;
    map['userimage'] = _userimage;
    map['created_at'] = _createdAt;
    return map;
  }

}