import 'dart:convert';
/// status : "Success"
/// message : "Success! Customer Insert Successfully."
/// data : {"member_id":"1","user_id":"3","plan_id":"0","package_id":"0","trainer_id":"0","name":"Kapil Sharma","email":"kapil@gmail.com","mobile":"1234567890","age":"24","address":"Triveni Nagar","gender":"Male","current_weight":"5.2","current_height":"65 kg","goal":"Nothing","personal_trainer":"Yes","start_joining":"2022-06-13","userimage":"","created_at":"2022-06-14 04:56:56","id":"3","username":"Kapil","password":"81dc9bdb52d04dc20036dbd8313ed055","password_show":"1234","type":"customer","branch_code":"G2346","status":"Active"}

AddMemberResponse addMemberResponseFromJson(String str) => AddMemberResponse.fromJson(json.decode(str));
String addMemberResponseToJson(AddMemberResponse data) => json.encode(data.toJson());
class AddMemberResponse {
  AddMemberResponse({
      String? status, 
      String? message, 
      Data? data,}){
    _status = status;
    _message = message;
    _data = data;
}

  AddMemberResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  String? _status;
  String? _message;
  Data? _data;
AddMemberResponse copyWith({  String? status,
  String? message,
  Data? data,
}) => AddMemberResponse(  status: status ?? _status,
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

/// member_id : "1"
/// user_id : "3"
/// plan_id : "0"
/// package_id : "0"
/// trainer_id : "0"
/// name : "Kapil Sharma"
/// email : "kapil@gmail.com"
/// mobile : "1234567890"
/// age : "24"
/// address : "Triveni Nagar"
/// gender : "Male"
/// current_weight : "5.2"
/// current_height : "65 kg"
/// goal : "Nothing"
/// personal_trainer : "Yes"
/// start_joining : "2022-06-13"
/// userimage : ""
/// created_at : "2022-06-14 04:56:56"
/// id : "3"
/// username : "Kapil"
/// password : "81dc9bdb52d04dc20036dbd8313ed055"
/// password_show : "1234"
/// type : "customer"
/// branch_code : "G2346"
/// status : "Active"

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      String? memberId, 
      String? userId, 
      String? planId, 
      String? packageId, 
      String? trainerId, 
      String? name, 
      String? email, 
      String? mobile, 
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
      String? id, 
      String? username, 
      String? password, 
      String? passwordShow, 
      String? type, 
      String? branchCode, 
      String? status,}){
    _memberId = memberId;
    _userId = userId;
    _planId = planId;
    _packageId = packageId;
    _trainerId = trainerId;
    _name = name;
    _email = email;
    _mobile = mobile;
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
    _id = id;
    _username = username;
    _password = password;
    _passwordShow = passwordShow;
    _type = type;
    _branchCode = branchCode;
    _status = status;
}

  Data.fromJson(dynamic json) {
    _memberId = json['member_id'];
    _userId = json['user_id'];
    _planId = json['plan_id'];
    _packageId = json['package_id'];
    _trainerId = json['trainer_id'];
    _name = json['name'];
    _email = json['email'];
    _mobile = json['mobile'];
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
    _id = json['id'];
    _username = json['username'];
    _password = json['password'];
    _passwordShow = json['password_show'];
    _type = json['type'];
    _branchCode = json['branch_code'];
    _status = json['status'];
  }
  String? _memberId;
  String? _userId;
  String? _planId;
  String? _packageId;
  String? _trainerId;
  String? _name;
  String? _email;
  String? _mobile;
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
  String? _id;
  String? _username;
  String? _password;
  String? _passwordShow;
  String? _type;
  String? _branchCode;
  String? _status;
Data copyWith({  String? memberId,
  String? userId,
  String? planId,
  String? packageId,
  String? trainerId,
  String? name,
  String? email,
  String? mobile,
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
  String? id,
  String? username,
  String? password,
  String? passwordShow,
  String? type,
  String? branchCode,
  String? status,
}) => Data(  memberId: memberId ?? _memberId,
  userId: userId ?? _userId,
  planId: planId ?? _planId,
  packageId: packageId ?? _packageId,
  trainerId: trainerId ?? _trainerId,
  name: name ?? _name,
  email: email ?? _email,
  mobile: mobile ?? _mobile,
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
  id: id ?? _id,
  username: username ?? _username,
  password: password ?? _password,
  passwordShow: passwordShow ?? _passwordShow,
  type: type ?? _type,
  branchCode: branchCode ?? _branchCode,
  status: status ?? _status,
);
  String? get memberId => _memberId;
  String? get userId => _userId;
  String? get planId => _planId;
  String? get packageId => _packageId;
  String? get trainerId => _trainerId;
  String? get name => _name;
  String? get email => _email;
  String? get mobile => _mobile;
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
  String? get id => _id;
  String? get username => _username;
  String? get password => _password;
  String? get passwordShow => _passwordShow;
  String? get type => _type;
  String? get branchCode => _branchCode;
  String? get status => _status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['member_id'] = _memberId;
    map['user_id'] = _userId;
    map['plan_id'] = _planId;
    map['package_id'] = _packageId;
    map['trainer_id'] = _trainerId;
    map['name'] = _name;
    map['email'] = _email;
    map['mobile'] = _mobile;
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
    map['id'] = _id;
    map['username'] = _username;
    map['password'] = _password;
    map['password_show'] = _passwordShow;
    map['type'] = _type;
    map['branch_code'] = _branchCode;
    map['status'] = _status;
    return map;
  }

}